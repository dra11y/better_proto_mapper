import '../field_code_generator.dart';

class StringFieldCodeGenerator extends StandaloneFieldCodeGenerator {
  StringFieldCodeGenerator(super.fieldDescriptor);

  @override
  String get fieldType => 'string';
}
