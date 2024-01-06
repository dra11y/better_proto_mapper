import 'dart:io';
import 'dart:isolate';

import 'package:build/build.dart';
import 'package:glob/glob.dart';
import 'package:path/path.dart' as path;

/// Generating directly to source causes watched build to re-run
/// because outside process (protoc) is generating the files.
/// Therefore, have protoc generate outside lib, then copy.
/// Wish we could access the cache dir at .dart_tool/build/generated...
/// https://github.com/google/protobuf.dart/issues/158
///
/// Add predefined copy builder to package:build?
/// Crazy there is no way to Glob over cache and copy from there!
/// Discusses .proto / .pb.dart files as example.
/// https://github.com/dart-lang/build/issues/3156
///
class ProtocRunner implements Builder {
  ProtocRunner();

  /// This is really, really bad practice and warned against in the docs, but it seems to work for now!
  /// But if we don't generate to temp, and just let `protoc` generate directly to lib/src/generated,
  /// build_runner thinks files have changed and re-runs protoBuilder step, also not what we want.
  @override
  Map<String, List<String>> get buildExtensions {
    final dir = Directory('generated');
    if (!dir.existsSync()) {
      return {
        r'$lib$': ['*']
      };
    }
    final files = dir
        .listSync(recursive: true)
        .where((entity) => entity is File && entity.path.endsWith('.dart'))
        .map((file) => 'src/${file.path}');
    return {
      r'$lib$': ['*', ...files]
    };
  }

  @override
  Future<void> build(BuildStep buildStep) async {
    final List<AssetId> protos = [];

    await for (final input in buildStep.findAssets(Glob('**/*.proto'))) {
      protos.add(input);
    }

    if (protos.isEmpty) {
      throw Exception('Could not find any .proto files.');
    }

    /// We must read at least one .proto file to cause build_runner
    /// to re-run this step on each build during watch.
    await buildStep.readAsString(protos.first);

    /// Resolve better_protoc_plugin, which is a dependency of this package.
    final betterProtocUri = await Isolate.resolvePackageUri(
        Uri.parse('package:better_protoc_plugin/protoc.dart'));

    if (betterProtocUri == null) {
      throw Exception('Could not find better_protoc_plugin package!');
    }

    final pluginPath = path.normalize(path.join(
        path.dirname(betterProtocUri.path), '..', 'bin', 'protoc-gen-dart'));

    final cacheDir = 'generated/grpc';
    await Directory(cacheDir).create(recursive: true);
    final protoPaths = protos.map((p) => path.dirname(p.path)).toSet();

    final args = <String>[
      '--plugin=$pluginPath',
      '--dart_out=better_protos,grpc:$cacheDir',
      for (final protoPath in protoPaths) ...[
        '-I$protoPath',
        ...protos
            .where((p) => p.path.startsWith('$protoPath/'))
            .map((p) => p.path),
      ],
      'google/protobuf/timestamp.proto',
      'google/protobuf/duration.proto',
    ];

    final result = await Process.run('protoc', args,
        workingDirectory: Directory.current.path);

    print('Ran ProtocRunner with protoc exit code: ${result.exitCode}');

    if (result.exitCode != 0) {
      throw Exception(result.stderr);
    }

    final generatedDir = Directory('generated');
    await for (var entity in generatedDir.list(recursive: true)) {
      if (entity is File && entity.path.endsWith('.dart')) {
        final relativePath = entity.path.substring(generatedDir.path.length);
        final libPath = 'lib/src/generated$relativePath';
        final content = await entity.readAsString();
        final assetId = AssetId(buildStep.inputId.package, libPath);

        /// Since we're copying the files with `buildStep.writeAsString`, somehow
        /// they magically get into the build graph and are not counted as changed
        /// files by `watch`. But who knows how this actually works?
        await buildStep.writeAsString(assetId, content);
      }
    }
  }
}
