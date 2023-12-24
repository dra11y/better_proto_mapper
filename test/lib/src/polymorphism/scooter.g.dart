// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'scooter.dart';

// **************************************************************************
// ProtoMapperGenerator
// **************************************************************************

class $ScooterProtoMapper implements ProtoMapper<Scooter, GScooter> {
  const $ScooterProtoMapper();

  @override
  Scooter fromProto(GScooter proto) => _$ScooterFromProto(proto);

  @override
  GScooter toProto(Scooter entity) => _$ScooterToProto(entity);

  GScooter toFieldsOfProto(Scooter entity) => _$ScooterToProto(entity);

  Scooter fromJson(String json) => _$ScooterFromProto(GScooter.fromJson(json));
  String toJson(Scooter entity) => _$ScooterToProto(entity).writeToJson();

  String toBase64Proto(Scooter entity) =>
      base64Encode(utf8.encode(entity.toProto().writeToJson()));

  Scooter fromBase64Proto(String base64Proto) =>
      GScooter.fromJson(utf8.decode(base64Decode(base64Proto))).toScooter();
}

GScooter _$ScooterToProto(Scooter instance) {
  var proto = GScooter();

  proto.fieldsOfSuperClass =
      const $AbstractVehicleProtoMapper().toFieldsOfProto(instance);

  proto.key = instance.key;

  return proto;
}

Scooter _$ScooterFromProto(GScooter proto) {
  return Scooter(
    weight: proto.fieldsOfSuperClass.weight,
    key: proto.key,
  );
}

extension $ScooterProtoExtension on Scooter {
  GScooter toProto() => _$ScooterToProto(this);
  String toJson() => _$ScooterToProto(this).writeToJson();

  static Scooter fromProto(GScooter proto) => _$ScooterFromProto(proto);
  static Scooter fromJson(String json) =>
      _$ScooterFromProto(GScooter.fromJson(json));
}

extension $GScooterProtoExtension on GScooter {
  Scooter toScooter() => _$ScooterFromProto(this);
}
