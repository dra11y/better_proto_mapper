// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:analyzer/dart/element/element.dart';
import 'package:better_proto_annotations/config.dart';
import 'package:better_proto_annotations/better_proto_annotations.dart';
import 'package:better_proto_generator/src/proto/interface_element_extension.dart';

class EnumGenerator {
  EnumGenerator({
    required this.interfaceElement,
    required this.annotation,
    required this.config,
  });

  final EnumElement interfaceElement;
  final Proto annotation;
  final Config config;

  String generate() {
    var fieldBuffer = StringBuffer();
    var fieldDescriptors = interfaceElement.getFieldDescriptors(
      annotation: annotation,
      config: config,
    );
    //   .toList()
    // ..sort((a, b) => a.protoFieldAnnotation.number
    //     .compareTo(b.protoFieldAnnotation.number));
    final prefix = config.prefix;
    var className = interfaceElement.name;
    final zerothFields =
        fieldDescriptors.where((d) => d.protoFieldAnnotation.number == 0);
    if (zerothFields.isEmpty) {
      throw Exception(
          'Enum value with field #0 on enum: $className should be `unspecified`, but is not defined; see https://protobuf.dev/programming-guides/style/#enums');
    } else if (zerothFields.length != 1) {
      throw Exception(
          'Enum value with field #0 on enum: $className should only be `unspecified`, instead found multiple: `${zerothFields.map((f) => f.name).toList()}`; see https://protobuf.dev/programming-guides/style/#enums');
    } else if (zerothFields.first.name != 'unspecified') {
      throw Exception(
          'Enum value with field #0 on enum: $className should be `unspecified`, instead found `${zerothFields.first.name}`; see https://protobuf.dev/programming-guides/style/#enums');
    }
    final fieldNumbers =
        fieldDescriptors.map((d) => d.protoFieldAnnotation.number);
    final allowAlias = fieldNumbers.length != fieldNumbers.toSet().length;
    if (allowAlias && !annotation.enumAllowAlias) {
      throw Exception(
          'Found aliases in enum: $className, but @Proto.enumAllowAlias is set to false.');
    }
    for (var fieldDescriptor in fieldDescriptors) {
      fieldBuffer.writeln(
          '  ${fieldDescriptor.protoFieldName} = ${fieldDescriptor.protoFieldAnnotation.number};');
    }
    var ret = '''
enum $prefix$className {
${allowAlias ? 'option allow_alias = true;' : ''}
$fieldBuffer}
''';

    return ret;
  }
}
