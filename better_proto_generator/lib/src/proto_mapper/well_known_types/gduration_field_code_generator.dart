import 'package:better_proto_annotations/config.dart';
import 'package:squarealfa_generators_common/squarealfa_generators_common.dart';

import '../wkt_field_code_generator.dart';

class GDurationFieldCodeGenerator extends WKTFieldCodeGenerator {
  GDurationFieldCodeGenerator({
    required super.fieldDescriptor,
    required super.refName,
    required super.protoRefName,
    required this.config,
  });

  final Config config;

  String get instanceReference =>
      '$ref$fieldName${fieldDescriptor.isNullable && ref.isNotEmpty ? '!' : ''}';

  @override
  String get toProtoMap => fieldDescriptor.isNullable
      ? '''
        if ($ref$fieldName != null) {
          $protoRef$protoFieldName = $toProtoExpression;
        }
      '''
      : '$protoRef$protoFieldName = $toProtoExpression;';

  @override
  String get fromProtoMap {
    if (fieldDescriptor.isNullable) {
      return fromProtoNullableExpression;
    }
    return fromProtoNonNullableExpression;
  }

  String get toProtoExpression => '''${config.wellKnownDurationType}()
        ..seconds = Int64($instanceReference.inSeconds)
        ..nanos = ($instanceReference.inMicroseconds - $instanceReference.inSeconds * 1000000) * 1000''';

  String get fromProtoNullableExpression =>
      '''(${protoRef}has${protoFieldName.pascalName}() ? ($fromProtoNonNullableExpression) : null)''';

  String get fromProtoNonNullableExpression => '''Duration(
      seconds: $protoRef$fieldName.seconds.toInt(),
      microseconds: ($protoRef$fieldName.nanos ~/ 1000).toInt())''';
}
