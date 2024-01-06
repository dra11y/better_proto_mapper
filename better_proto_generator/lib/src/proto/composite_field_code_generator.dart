part of 'proto_field_code_generator.dart';

abstract class CompositeFieldCodeGenerator
    with FieldCodeGeneratorMixin
    implements ProtoFieldCodeGenerator {
  CompositeFieldCodeGenerator(this.fieldDescriptor);

  @override
  final FieldDescriptor fieldDescriptor;

  String get fieldLine =>
      '${fieldDescriptor.isRepeated ? 'repeated ' : ''}$fieldType ${fieldDescriptor.protoFieldName} = $lineNumber;';

  @override
  String render() {
    return '  $fieldLine';
  }

  String get fieldType;
}
