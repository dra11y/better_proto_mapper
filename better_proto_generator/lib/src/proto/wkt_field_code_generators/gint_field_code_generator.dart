import 'package:better_proto_annotations/config.dart';
import 'package:better_proto_annotations/better_proto_annotations.dart';

import '../field_code_generator.dart';

class GIntFieldCodeGenerator extends WKTFieldCodeGenerator {
  GIntFieldCodeGenerator(
    super.fieldDescriptor, {
    required this.config,
  });

  final Config config;
  IntPrecision get precision {
    final annotated = fieldDescriptor.protoFieldAnnotation.intPrecision;
    if (annotated != null) {
      return annotated;
    }
    return config.defaultIntPrecision;
  }

  @override
  String get wellKnownType => precision == IntPrecision.int32
      ? 'google.protobuf.Int32Value'
      : 'google.protobuf.Int64Value';

  @override
  String get scalarType => precision == IntPrecision.int32 ? 'int32' : 'int64';

  @override
  String get wellKnownProtoPath => 'google/protobuf/wrappers.proto';
}
