import '../proto_field_code_generator.dart';

class BoolFieldCodeGenerator extends StandaloneFieldCodeGenerator {
  BoolFieldCodeGenerator(super.fieldDescriptor);

  @override
  String get fieldType => 'bool';
}
