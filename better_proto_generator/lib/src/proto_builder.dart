import 'package:analyzer/dart/element/element.dart';
import 'package:build/build.dart';
import 'package:glob/glob.dart';
import 'package:path/path.dart' as p;
import 'package:better_proto_annotations/config.dart';
import 'package:better_proto_annotations/better_proto_annotations.dart';
import 'package:better_proto_generator/src/common/constant_reader_extension.dart';
import 'package:better_proto_generator/src/proto/proto_reflected.dart';
import 'package:source_gen/source_gen.dart';

import 'proto/proto_generator.dart';

class ProtoBuilder implements Builder {
  late Config config;
  late String modelPath;

  ProtoBuilder(BuilderOptions options) {
    config = Config.fromJson(options.config);
    modelPath = _getModelPath();
  }

  static final _allFilesInLib = Glob('lib/**.dart');
  static final _ignoreFiles = RegExp(r'generated|.*\..*\.dart');

  @override
  Map<String, List<String>> get buildExtensions {
    return {
      r'$lib$': [modelPath, 'src/proto_mapper.g.part'],
    };
  }

  @override
  Future<void> build(BuildStep buildStep) async {
    final protoGen = ProtoGenerator(config);

    final classes = <ClassElement, ProtoReflected>{};
    final enums = <EnumElement, ProtoReflected>{};
    await _findElements(buildStep, classes, enums);

    classes.forEach((c, cr) => protoGen.generateForAnnotatedElement(c, cr));
    enums.forEach((e, cr) => protoGen.generateForAnnotatedElement(e, cr));

    String content = _renderProto(protoGen);
    final path = p.join('lib', p.dirname(modelPath));
    final filename = p.basename(modelPath);
    final output = AssetId(buildStep.inputId.package, p.join(path, filename));

    print('Ran ProtoBuilder with output: $output');

    await buildStep.writeAsString(output, content);
  }

  String _renderProto(ProtoGenerator protoGen) {
    final imports = protoGen.imports;
    final messages = protoGen.messages;

    final package =
        config.packageName.isEmpty ? '' : 'package ${config.packageName};';
    final options = config.options.map((e) => 'option $e;').join('\n');
    final renderedImports = imports.map((e) => 'import "$e";').join('\n');
    final renderedMessages = messages.join('\n');

    final newLine = RegExp(r'\n\n+');
    final content = [
      '',
      '// GENERATED CODE - DO NOT MODIFY BY HAND',
      '',
      'syntax = "proto3";',
      '',
      [
        package,
        options,
        renderedImports,
        renderedMessages,
      ].join('\n\n').replaceAll(newLine, '\n\n'),
    ].join('\n');

    return content;
  }

  Future<void> _findElements(
      BuildStep buildStep,
      Map<ClassElement, ProtoReflected> classes,
      Map<EnumElement, ProtoReflected> enums) async {
    await for (final input in buildStep.findAssets(_allFilesInLib)) {
      if (_ignoreFiles.hasMatch(input.path)) {
        // print('IGNORED INPUT: ${input.path}');
        continue;
      }

      if (!await buildStep.resolver.isLibrary(input)) {
        continue;
      }

      final library = await buildStep.resolver.libraryFor(input);
      final classesInLibrary = LibraryReader(library).classes;
      for (var c in classesInLibrary) {
        final cr = _getProtoReflected(c);
        if (cr != null) {
          classes[c] = cr;
        }
      }
      final enumsInLibrary = LibraryReader(library).enums;
      for (var e in enumsInLibrary) {
        final cr = _getProtoReflected(e);
        if (cr != null) {
          enums[e] = cr;
        }
      }
    }
  }

  String _getModelPath() {
    final path = '${p.withoutExtension(config.outProtoPath)}.tproto';
    return path;
  }
}

final _protoTC = TypeChecker.fromRuntime(Proto);

ProtoReflected? _getProtoReflected(InterfaceElement c) {
  final annotation = _protoTC.firstAnnotationOf(c);

  if (annotation == null) {
    return null;
  }
  final protoReflected = ConstantReader(annotation).hydrateAnnotation();
  return protoReflected;
}
