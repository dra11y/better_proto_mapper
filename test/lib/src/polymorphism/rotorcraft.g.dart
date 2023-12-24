// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rotorcraft.dart';

// **************************************************************************
// ProtoMapperGenerator
// **************************************************************************

class $RotorcraftProtoMapper implements ProtoMapper<Rotorcraft, GRotorcraft> {
  const $RotorcraftProtoMapper();

  @override
  Rotorcraft fromProto(GRotorcraft proto) => _$RotorcraftFromProto(proto);

  @override
  GRotorcraft toProto(Rotorcraft entity) => _$RotorcraftToProto(entity);

  GFieldsOfRotorcraft toFieldsOfProto(Rotorcraft entity) =>
      _$RotorcraftToFieldsOfProto(entity);

  Rotorcraft fromJson(String json) =>
      _$RotorcraftFromProto(GRotorcraft.fromJson(json));
  String toJson(Rotorcraft entity) => _$RotorcraftToProto(entity).writeToJson();

  String toBase64Proto(Rotorcraft entity) =>
      base64Encode(utf8.encode(entity.toProto().writeToJson()));

  Rotorcraft fromBase64Proto(String base64Proto) =>
      GRotorcraft.fromJson(utf8.decode(base64Decode(base64Proto)))
          .toRotorcraft();
}

GFieldsOfRotorcraft _$RotorcraftToFieldsOfProto(Rotorcraft instance) {
  final proto = GFieldsOfRotorcraft();
  proto.fieldsOfSuperClass =
      const $AircraftProtoMapper().toFieldsOfProto(instance);

  return proto;
}

GRotorcraft _$RotorcraftToProto(Rotorcraft instance) {
  var proto = GRotorcraft();

  if (instance is Helicopter) {
    proto.helicopter = (const $HelicopterProtoMapper()).toProto(instance);
    return proto;
  }

  if (instance is Gyrocopter) {
    proto.gyrocopter = (const $GyrocopterProtoMapper()).toProto(instance);
    return proto;
  }

  proto.rotorcraft = _$RotorcraftToFieldsOfProto(instance);

  return proto;
}

Rotorcraft _$RotorcraftFromProto(GRotorcraft sInstance) {
  if (sInstance.hasHelicopter()) {
    return sInstance.helicopter.toHelicopter();
  }

  if (sInstance.hasGyrocopter()) {
    return sInstance.gyrocopter.toGyrocopter();
  }

  throw UnimplementedError();
}

extension $RotorcraftProtoExtension on Rotorcraft {
  GRotorcraft toProto() => _$RotorcraftToProto(this);
  String toJson() => _$RotorcraftToProto(this).writeToJson();

  static Rotorcraft fromProto(GRotorcraft proto) =>
      _$RotorcraftFromProto(proto);
  static Rotorcraft fromJson(String json) =>
      _$RotorcraftFromProto(GRotorcraft.fromJson(json));
}

extension $GRotorcraftProtoExtension on GRotorcraft {
  Rotorcraft toRotorcraft() => _$RotorcraftFromProto(this);
}
