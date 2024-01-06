import 'dart:io';
import 'dart:isolate';

import 'package:better_proto_annotations/config.dart';
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
  final Config config;

  ProtocRunner(this.config);

  @override
  Map<String, List<String>> get buildExtensions => {
        r'$lib$': ['.dart']
      };

  @override
  Future<void> build(BuildStep buildStep) async {
    print('BUILD STEP 3: ProtocRunner');

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

    final grpcPath = 'lib/${config.outGrpcPath}';
    final grpcDir = Directory(grpcPath);
    await grpcDir.create(recursive: true);
    final protoPaths = protos.map((p) => path.dirname(p.path)).toSet();

    final args = <String>[
      '--plugin=$pluginPath',
      '--dart_out=better_protos,grpc:$grpcPath',
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

    if (result.exitCode != 0) {
      throw Exception('protoc exited with errors: ${result.stderr}');
    }

    await Process.run('buf', ['format', '-w']);

    final barrelExports = <String, List<String>>{};

    await for (var entity in grpcDir.list(recursive: true)) {
      final exportDir = entity.parent.path;

      if (entity is! File ||
          !entity.path.endsWith('.dart') ||
          path.basename(exportDir) == '${path.basename(entity.path)}.dart') {
        continue;
      }

      barrelExports
          .putIfAbsent(exportDir, () => [])
          .add(entity.path.split('/').last);
      // final content = await entity.readAsString();
      // final assetId = AssetId(buildStep.inputId.package, entity.path);

      // /// Since we're copying the files with `buildStep.writeAsString`, somehow
      // /// they magically get into the build graph and are not counted as changed
      // /// files by `watch`. But who knows how this actually works?
      // await buildStep.writeAsString(assetId, content);
    }

    final slash = RegExp(r'/');
    final exportRoot = barrelExports.keys.reduce((root, element) =>
        slash.allMatches(element).length < slash.allMatches(root).length
            ? element
            : root);

    for (var entry in barrelExports.entries) {
      final dirPath = entry.key;
      final children = barrelExports.keys
          .where((dir) => dir.startsWith('$dirPath/'))
          .map((e) =>
              '${e.substring(dirPath.length + 1)}/${path.basename(e)}.dart');
      final barrelFileName = '${path.basename(dirPath)}.dart';
      final barrelFile = File(path.join(dirPath, barrelFileName));
      final exports = entry.value.where((file) => file != barrelFileName);
      final sb = StringBuffer();

      if (dirPath == exportRoot &&
          config.barrelCommonExportPackage.isNotEmpty) {
        sb.writeln("export '${config.barrelCommonExportPackage}';\n");
      }

      for (var export in (exports.followedBy(children))) {
        sb.writeln("export '$export';");
      }

      await barrelFile.writeAsString(sb.toString());

      // final assetId = AssetId(buildStep.inputId.package, 'lib/$barrelFile');
      // await buildStep.writeAsString(assetId, sb.toString());
    }
  }
}
