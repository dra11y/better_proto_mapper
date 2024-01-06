import '../proto_field_code_generator.dart';

class GDateTimeFieldCodeGenerator extends WKTFieldCodeGenerator {
  GDateTimeFieldCodeGenerator(super.fieldDescriptor);

  @override
  String get wellKnownType => 'google.protobuf.Timestamp';

  @override
  String get scalarType => '';

  @override
  String get wellKnownProtoPath => 'google/protobuf/timestamp.proto';
}
