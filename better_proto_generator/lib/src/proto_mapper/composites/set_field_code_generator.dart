import 'package:better_proto_generator/src/common/proto_common.dart';
import 'package:better_proto_generator/src/proto_mapper/composite_field_code_generator.dart';

class SetFieldCodeGenerator extends CompositeFieldCodeGenerator {
  SetFieldCodeGenerator({
    required super.fieldDescriptor,
    required super.refName,
    required super.protoRefName,
    required super.config,
  });

  String get _valueToProto {
    return collectionValueToProto(
      fieldDescriptor,
      fieldDescriptor.setParameterType!,
      'e',
      config: config,
    );
  }

  String get _toProtoConversion {
    final setParameterType = fieldDescriptor.setParameterType!;

    if (setParameterType.isDartCoreBool ||
        setParameterType.isDartCoreDouble ||
        setParameterType.isDartCoreInt ||
        setParameterType.isDartCoreString) {
      return '';
    }
    return '.map((e) => $_valueToProto)';
  }

  @override
  String get toProtoMap => fieldDescriptor.isNullable
      ? '''
      $protoRef$protoFieldName
        .addAll($ref$fieldName${_toProtoConversion != '' ? '?' : ''}$_toProtoConversion ?? []);
      '''
      : '''
        $protoRef$protoFieldName
          .addAll($ref$fieldName$_toProtoConversion);

      ''';

  String get _protoToValue {
    final setParameterType = fieldDescriptor.setParameterType!;
    if (setParameterType.isDartCoreBool ||
        setParameterType.isDartCoreDouble ||
        setParameterType.isDartCoreInt ||
        setParameterType.isDartCoreString) {
      return 'e';
    }
    return collectionProtoToValue(
      fieldDescriptor,
      setParameterType,
      'e',
      config: config,
    );
  }

  @override
  String get fromProtoExpression =>
      '''Set<${fieldDescriptor.parameterTypeName}>.unmodifiable($protoRef$protoFieldName.map((e) => $_protoToValue))''';

  @override
  String get fromProtoNullableExpression => fromProtoExpression;
}
