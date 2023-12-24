// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'gyrocopter.dart';

// **************************************************************************
// ProtoMapperGenerator
// **************************************************************************

class $GyrocopterProtoMapper implements ProtoMapper<Gyrocopter, GGyrocopter> {
  const $GyrocopterProtoMapper();

  @override
  Gyrocopter fromProto(GGyrocopter proto) => _$GyrocopterFromProto(proto);

  @override
  GGyrocopter toProto(Gyrocopter entity) => _$GyrocopterToProto(entity);

  GGyrocopter toFieldsOfProto(Gyrocopter entity) => _$GyrocopterToProto(entity);

  Gyrocopter fromJson(String json) =>
      _$GyrocopterFromProto(GGyrocopter.fromJson(json));
  String toJson(Gyrocopter entity) => _$GyrocopterToProto(entity).writeToJson();

  String toBase64Proto(Gyrocopter entity) =>
      base64Encode(utf8.encode(entity.toProto().writeToJson()));

  Gyrocopter fromBase64Proto(String base64Proto) =>
      GGyrocopter.fromJson(utf8.decode(base64Decode(base64Proto)))
          .toGyrocopter();
}

GGyrocopter _$GyrocopterToProto(Gyrocopter instance) {
  var proto = GGyrocopter();

  proto.fieldsOfSuperClass =
      const $RotorcraftProtoMapper().toFieldsOfProto(instance);

  return proto;
}

Gyrocopter _$GyrocopterFromProto(GGyrocopter proto) {
  return Gyrocopter(
    weight:
        proto.fieldsOfSuperClass.fieldsOfSuperClass.fieldsOfSuperClass.weight,
    serviceCeiling: proto.fieldsOfSuperClass.fieldsOfSuperClass.serviceCeiling,
    key: proto.fieldsOfSuperClass.fieldsOfSuperClass.key,
  );
}

extension $GyrocopterProtoExtension on Gyrocopter {
  GGyrocopter toProto() => _$GyrocopterToProto(this);
  String toJson() => _$GyrocopterToProto(this).writeToJson();

  static Gyrocopter fromProto(GGyrocopter proto) =>
      _$GyrocopterFromProto(proto);
  static Gyrocopter fromJson(String json) =>
      _$GyrocopterFromProto(GGyrocopter.fromJson(json));
}

extension $GGyrocopterProtoExtension on GGyrocopter {
  Gyrocopter toGyrocopter() => _$GyrocopterFromProto(this);
}
