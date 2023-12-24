import '../field_code_generator.dart';

class GBoolFieldCodeGenerator extends WKTFieldCodeGenerator {
  GBoolFieldCodeGenerator(super.fieldDescriptor);

  @override
  String get wellKnownType => 'google.protobuf.BoolValue';

  @override
  String get scalarType => 'bool';

  @override
  String get wellKnownProtoPath => 'google/protobuf/wrappers.proto';
}
