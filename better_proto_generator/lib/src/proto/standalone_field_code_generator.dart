part of 'proto_field_code_generator.dart';

abstract class StandaloneFieldCodeGenerator
    with FieldCodeGeneratorMixin
    implements ProtoFieldCodeGenerator {
  StandaloneFieldCodeGenerator(this.fieldDescriptor);

  @override
  final FieldDescriptor fieldDescriptor;

  String get fieldType;

  @override
  String render() {
    final modifier = fieldDescriptor.isRepeated ? '  repeated ' : '  ';
    return '$modifier$fieldType ${fieldDescriptor.protoFieldName} = $lineNumber;';
  }
}
