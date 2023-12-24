part of 'field_code_generator.dart';

mixin FieldCodeGeneratorMixin {
  FieldDescriptor get fieldDescriptor;
  int get lineNumber => fieldDescriptor.number;
}
