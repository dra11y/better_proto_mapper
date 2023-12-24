import '../field_code_generator.dart';

class DoubleFieldCodeGenerator extends StandaloneFieldCodeGenerator {
  DoubleFieldCodeGenerator(super.fieldDescriptor);

  @override
  String get fieldType => 'double';
}
