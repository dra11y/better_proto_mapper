import 'package:better_proto_generator/src/proto_mapper/wkt_field_code_generator.dart';
import 'package:squarealfa_generators_common/squarealfa_generators_common.dart';

class GBoolFieldCodeGenerator extends WKTFieldCodeGenerator {
  GBoolFieldCodeGenerator({
    required super.fieldDescriptor,
    required super.refName,
    required super.protoRefName,
  });

  @override
  String get toProtoMap => fieldDescriptor.isNullable
      ? '''
        if ($ref$fieldName != null) {
          $protoRef$protoFieldName = BoolValue() .. value = $ref$fieldName!;
        }
      '''
      : '$protoRef$protoFieldName = $ref$fieldName;';

  @override
  String get fromProtoMap {
    if (fieldDescriptor.isNullable) {
      return '''(${protoRef}has${protoFieldName.pascalName}() ? $protoRef$protoFieldName.value : null)''';
    }
    return '$protoRef$protoFieldName';
  }
}
