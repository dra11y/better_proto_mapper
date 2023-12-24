// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'calc_parameters.dart';

// **************************************************************************
// ProtoMapperGenerator
// **************************************************************************

class $CalcParametersProtoMapper
    implements ProtoMapper<CalcParameters, GCalcParameters> {
  const $CalcParametersProtoMapper();

  @override
  CalcParameters fromProto(GCalcParameters proto) =>
      _$CalcParametersFromProto(proto);

  @override
  GCalcParameters toProto(CalcParameters entity) =>
      _$CalcParametersToProto(entity);

  GCalcParameters toFieldsOfProto(CalcParameters entity) =>
      _$CalcParametersToProto(entity);

  CalcParameters fromJson(String json) =>
      _$CalcParametersFromProto(GCalcParameters.fromJson(json));
  String toJson(CalcParameters entity) =>
      _$CalcParametersToProto(entity).writeToJson();

  String toBase64Proto(CalcParameters entity) =>
      base64Encode(utf8.encode(entity.toProto().writeToJson()));

  CalcParameters fromBase64Proto(String base64Proto) =>
      GCalcParameters.fromJson(utf8.decode(base64Decode(base64Proto)))
          .toCalcParameters();
}

GCalcParameters _$CalcParametersToProto(CalcParameters instance) {
  var proto = GCalcParameters();

  proto.parameter1 = instance.parameter1;
  proto.parameter2 = instance.parameter2;
  if (instance.parameter3 != null) {
    proto.parameter3 = instance.parameter3!;
  }

  if (instance.parameter4 != null) {
    proto.parameter4 = instance.parameter4!;
  }

  proto.parameter5 = instance.parameter5;

  return proto;
}

CalcParameters _$CalcParametersFromProto(GCalcParameters proto) {
  return CalcParameters(
    parameter1: proto.parameter1,
    parameter2: proto.parameter2,
    parameter3: (proto.hasParameter3() ? proto.parameter3 : null),
    parameter4: (proto.hasParameter4() ? proto.parameter4 : null),
    parameter5: proto.parameter5,
  );
}

extension $CalcParametersProtoExtension on CalcParameters {
  GCalcParameters toProto() => _$CalcParametersToProto(this);
  String toJson() => _$CalcParametersToProto(this).writeToJson();

  static CalcParameters fromProto(GCalcParameters proto) =>
      _$CalcParametersFromProto(proto);
  static CalcParameters fromJson(String json) =>
      _$CalcParametersFromProto(GCalcParameters.fromJson(json));
}

extension $GCalcParametersProtoExtension on GCalcParameters {
  CalcParameters toCalcParameters() => _$CalcParametersFromProto(this);
}
