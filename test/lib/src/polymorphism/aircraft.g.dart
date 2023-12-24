// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'aircraft.dart';

// **************************************************************************
// ProtoMapperGenerator
// **************************************************************************

class $AircraftProtoMapper implements ProtoMapper<Aircraft, GAircraft> {
  const $AircraftProtoMapper();

  @override
  Aircraft fromProto(GAircraft proto) => _$AircraftFromProto(proto);

  @override
  GAircraft toProto(Aircraft entity) => _$AircraftToProto(entity);

  GFieldsOfAircraft toFieldsOfProto(Aircraft entity) =>
      _$AircraftToFieldsOfProto(entity);

  Aircraft fromJson(String json) =>
      _$AircraftFromProto(GAircraft.fromJson(json));
  String toJson(Aircraft entity) => _$AircraftToProto(entity).writeToJson();

  String toBase64Proto(Aircraft entity) =>
      base64Encode(utf8.encode(entity.toProto().writeToJson()));

  Aircraft fromBase64Proto(String base64Proto) =>
      GAircraft.fromJson(utf8.decode(base64Decode(base64Proto))).toAircraft();
}

GFieldsOfAircraft _$AircraftToFieldsOfProto(Aircraft instance) {
  final proto = GFieldsOfAircraft();
  proto.fieldsOfSuperClass =
      const $VehicleProtoMapper().toFieldsOfProto(instance);

  proto.serviceCeiling = instance.serviceCeiling;
  proto.key = instance.key;

  return proto;
}

GAircraft _$AircraftToProto(Aircraft instance) {
  var proto = GAircraft();

  if (instance is Airplane) {
    proto.airplane = (const $AirplaneProtoMapper()).toProto(instance);
    return proto;
  }

  if (instance is Rotorcraft) {
    proto.rotorcraft = (const $RotorcraftProtoMapper()).toProto(instance);
    return proto;
  }

  if (instance is Balloon) {
    proto.balloon = (const $BalloonProtoMapper()).toProto(instance);
    return proto;
  }

  proto.aircraft = _$AircraftToFieldsOfProto(instance);

  return proto;
}

Aircraft _$AircraftFromProto(GAircraft sInstance) {
  if (sInstance.hasAirplane()) {
    return sInstance.airplane.toAirplane();
  }

  if (sInstance.hasRotorcraft()) {
    return sInstance.rotorcraft.toRotorcraft();
  }

  if (sInstance.hasBalloon()) {
    return sInstance.balloon.toBalloon();
  }

  throw UnimplementedError();
}

extension $AircraftProtoExtension on Aircraft {
  GAircraft toProto() => _$AircraftToProto(this);
  String toJson() => _$AircraftToProto(this).writeToJson();

  static Aircraft fromProto(GAircraft proto) => _$AircraftFromProto(proto);
  static Aircraft fromJson(String json) =>
      _$AircraftFromProto(GAircraft.fromJson(json));
}

extension $GAircraftProtoExtension on GAircraft {
  Aircraft toAircraft() => _$AircraftFromProto(this);
}
