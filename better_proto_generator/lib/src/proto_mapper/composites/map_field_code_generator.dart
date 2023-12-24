import 'package:analyzer/dart/element/type.dart';
import 'package:better_proto_generator/src/common/proto_common.dart';
import 'package:better_proto_generator/src/proto_mapper/composite_field_code_generator.dart';

class MapFieldCodeGenerator extends CompositeFieldCodeGenerator {
  MapFieldCodeGenerator({
    required super.fieldDescriptor,
    required super.config,
    required super.refName,
    required super.protoRefName,
  });

  String get _valueToProto {
    var typeArguments =
        (fieldDescriptor.fieldElementType as InterfaceType).typeArguments;
    final keyFieldTypeName = typeArguments[0];
    final valueFieldTypeName = typeArguments[1];

    final keyToProto = _toProto('k', keyFieldTypeName);
    final valueToProto = _toProto('v', valueFieldTypeName);

    return '''MapEntry($keyToProto, $valueToProto)''';
  }

  String _toProto(String parameterName, DartType parameterType) {
    if (parameterType.isDartCoreBool ||
        parameterType.isDartCoreDouble ||
        parameterType.isDartCoreInt ||
        parameterType.isDartCoreString) {
      return parameterName;
    }
    return collectionValueToProto(
      fieldDescriptor,
      parameterType,
      parameterName,
      config: config,
    );
  }

  String get _toProtoConversion {
    return '.map((k, v) => $_valueToProto)';
  }

  @override
  String get toProtoMap => fieldDescriptor.isNullable
      ? '''
      $protoRef$protoFieldName
        .addAll($ref$fieldName${_toProtoConversion != '' ? '?' : ''}$_toProtoConversion ?? {});
      '''
      : '''
        $protoRef$protoFieldName
          .addAll($ref$fieldName$_toProtoConversion);

      ''';

  String _toValue(String parameterName, DartType parameterType) {
    if (parameterType.isDartCoreBool ||
        parameterType.isDartCoreDouble ||
        parameterType.isDartCoreInt ||
        parameterType.isDartCoreString) {
      return parameterName;
    }
    return collectionProtoToValue(
      fieldDescriptor,
      parameterType,
      parameterName,
      config: config,
    );
  }

  String get _protoToValue {
    var typeArguments =
        (fieldDescriptor.fieldElementType as InterfaceType).typeArguments;
    final keyFieldTypeName = typeArguments[0];
    final valueFieldTypeName = typeArguments[1];

    final keyToProto = _toValue('k', keyFieldTypeName);
    final valueToProto = _toValue('v', valueFieldTypeName);

    return '''MapEntry($keyToProto, $valueToProto)''';
  }

  @override
  String get fromProtoExpression =>
      '''$protoRef$protoFieldName.map((k, v) => $_protoToValue)''';

  @override
  String get fromProtoNullableExpression => fromProtoExpression;
}
