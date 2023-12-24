import 'package:better_proto_generator/src/proto_mapper/composite_field_code_generator.dart';
import 'package:squarealfa_generators_common/squarealfa_generators_common.dart';

class EnumFieldCodeGenerator extends CompositeFieldCodeGenerator {
  EnumFieldCodeGenerator({
    required super.fieldDescriptor,
    required super.refName,
    required super.protoRefName,
    required super.config,
  });

  String get _prefix => fieldDescriptor.prefix;

  @override
  String get fromProtoExpression =>
      '''${fieldDescriptor.fieldElementTypeName}.values[$protoRef$fieldName.value]''';

  @override
  String get fromProtoNullableExpression {
    return '''(${protoRef}has${protoFieldName.pascalName}()
          ? (${fieldDescriptor.fieldElementTypeName}.values[$protoRef$fieldName.value])
          : null)''';
  }

  @override
  String get toProtoMap => fieldDescriptor.isNullable
      ? '''
        if ($ref$fieldName != null) {
          $protoRef$protoFieldName = $toProtoNullableExpression;
        }
      '''
      : '$protoRef$protoFieldName = $toProtoExpression;';

  @override
  String get toProtoExpression =>
      '''$_prefix${fieldDescriptor.fieldElementTypeName}
    .valueOf($instanceReference.index)!''';
}
