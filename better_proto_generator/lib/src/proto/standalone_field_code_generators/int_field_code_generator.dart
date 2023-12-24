import 'package:better_proto_annotations/config.dart';
import 'package:better_proto_annotations/better_proto_annotations.dart';

import '../field_code_generator.dart';

class IntFieldCodeGenerator extends StandaloneFieldCodeGenerator {
  IntFieldCodeGenerator(
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
  String get fieldType => precision == IntPrecision.int32 ? 'int32' : 'int64';
}
