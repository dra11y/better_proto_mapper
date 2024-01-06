import 'package:better_proto_annotations/config.dart';

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

  String get toProtoExpression => instanceReference;

  String get fromProtoNullableExpression => '$protoRef$fieldName';

  String get fromProtoNonNullableExpression => '$protoRef$fieldName!';
}
