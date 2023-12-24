import '../field_code_generator.dart';

class TimestampFieldCodeGenerator extends StandaloneFieldCodeGenerator {
  TimestampFieldCodeGenerator(super.fieldDescriptor);

  @override
  String get fieldType => 'int64';
}
