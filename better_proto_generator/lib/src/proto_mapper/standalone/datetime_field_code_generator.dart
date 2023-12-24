import 'package:better_proto_generator/src/proto_mapper/wkt_field_code_generator.dart';
import 'package:squarealfa_generators_common/squarealfa_generators_common.dart';

class SDateTimeFieldCodeGenerator extends WKTFieldCodeGenerator {
  SDateTimeFieldCodeGenerator({
    required super.fieldDescriptor,
    required super.refName,
    required super.protoRefName,
  });

  String get instanceReference =>
      '$ref$fieldName${fieldDescriptor.isNullable && ref.isNotEmpty ? '!' : ''}';

  String get toProtoExpression =>
      '''Int64($instanceReference.microsecondsSinceEpoch)''';

  String get fromProtoNonNullableExpression =>
      '''DateTime.fromMicrosecondsSinceEpoch($protoRef$fieldName.toInt())''';

  String get fromProtoNullableExpression =>
      '''(${protoRef}has${protoFieldName.pascalName}() ? DateTime.fromMicrosecondsSinceEpoch($protoRef$fieldName.toInt()) : null)''';

  @override
  String get fromProtoMap {
    if (fieldDescriptor.isNullable) return fromProtoNullableExpression;
    return fromProtoNonNullableExpression;
  }

  @override
  String get toProtoMap => fieldDescriptor.isNullable
      ? '''
        if ($ref$fieldName != null) {
          $protoRef$protoFieldName = $toProtoExpression;
        }
      '''
      : '$protoRef$protoFieldName = $toProtoExpression;';
}
