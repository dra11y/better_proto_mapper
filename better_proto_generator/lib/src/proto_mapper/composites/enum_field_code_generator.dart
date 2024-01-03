import 'package:better_proto_generator/src/proto_mapper/composite_field_code_generator.dart';

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
      '''$fromProtoNullableExpression ?? ${fieldDescriptor.fieldElementTypeName}.unspecified''';

  @override
  String get fromProtoNullableExpression {
    return '''${fieldDescriptor.fieldElementTypeName}.values.where((v) => v.value == $protoRef$fieldName?.value).firstOrNull''';
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
