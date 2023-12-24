import 'package:better_proto_generator/src/common/proto_common.dart';
import 'package:better_proto_generator/src/proto_mapper/composite_field_code_generator.dart';

class IterableFieldCodeGenerator extends CompositeFieldCodeGenerator {
  IterableFieldCodeGenerator({
    required super.fieldDescriptor,
    required super.refName,
    required super.protoRefName,
    required super.config,
  });

  String get _valueToProto {
    return collectionValueToProto(
      fieldDescriptor,
      fieldDescriptor.iterableParameterType!,
      'e',
      config: config,
    );
  }

  String get _toProtoConversion {
    final iterableParameterType = fieldDescriptor.iterableParameterType!;

    if (iterableParameterType.isDartCoreBool ||
        iterableParameterType.isDartCoreDouble ||
        iterableParameterType.isDartCoreInt ||
        iterableParameterType.isDartCoreString) {
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
    final iterableParameterType = fieldDescriptor.iterableParameterType!;
    if (iterableParameterType.isDartCoreBool ||
        iterableParameterType.isDartCoreDouble ||
        iterableParameterType.isDartCoreInt ||
        iterableParameterType.isDartCoreString) {
      return 'e';
    }
    return collectionProtoToValue(
      fieldDescriptor,
      iterableParameterType,
      'e',
      config: config,
    );
  }

  @override
  String get fromProtoExpression =>
      '''List<${fieldDescriptor.parameterTypeName}>.unmodifiable($protoRef$protoFieldName.map((e) => $_protoToValue))''';

  @override
  String get fromProtoNullableExpression => fromProtoExpression;
}
