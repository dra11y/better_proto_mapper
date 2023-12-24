part of 'field_code_generator.dart';

abstract class StandaloneFieldCodeGenerator
    with FieldCodeGeneratorMixin
    implements FieldCodeGenerator {
  StandaloneFieldCodeGenerator(this.fieldDescriptor);

  @override
  final FieldDescriptor fieldDescriptor;

  String get fieldType;

  @override
  String render() {
    final modifier = fieldDescriptor.isRepeated
        ? '  repeated '
        : (fieldDescriptor.isNullable ? '  optional ' : '  ');
    return '$modifier$fieldType ${fieldDescriptor.protoFieldName} = $lineNumber;';
  }
}
