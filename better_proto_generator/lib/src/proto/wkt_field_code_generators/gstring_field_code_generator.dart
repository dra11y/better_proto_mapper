import '../field_code_generator.dart';

class GStringFieldCodeGenerator extends WKTFieldCodeGenerator {
  GStringFieldCodeGenerator(super.fieldDescriptor);

  @override
  String get wellKnownType => 'google.protobuf.StringValue';

  @override
  String get scalarType => 'string';

  @override
  String get wellKnownProtoPath => 'google/protobuf/wrappers.proto';
}
