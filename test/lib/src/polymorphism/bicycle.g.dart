// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bicycle.dart';

// **************************************************************************
// ProtoMapperGenerator
// **************************************************************************

class $BicycleProtoMapper implements ProtoMapper<Bicycle, GBicycle> {
  const $BicycleProtoMapper();

  @override
  Bicycle fromProto(GBicycle proto) => _$BicycleFromProto(proto);

  @override
  GBicycle toProto(Bicycle entity) => _$BicycleToProto(entity);

  GBicycle toFieldsOfProto(Bicycle entity) => _$BicycleToProto(entity);

  Bicycle fromJson(String json) => _$BicycleFromProto(GBicycle.fromJson(json));
  String toJson(Bicycle entity) => _$BicycleToProto(entity).writeToJson();

  String toBase64Proto(Bicycle entity) =>
      base64Encode(utf8.encode(entity.toProto().writeToJson()));

  Bicycle fromBase64Proto(String base64Proto) =>
      GBicycle.fromJson(utf8.decode(base64Decode(base64Proto))).toBicycle();
}

GBicycle _$BicycleToProto(Bicycle instance) {
  var proto = GBicycle();

  proto.fieldsOfSuperClass =
      const $AbstractVehicleProtoMapper().toFieldsOfProto(instance);

  proto.wheelDiamater = instance.wheelDiamater.$toProtoString();
  proto.key = instance.key;

  return proto;
}

Bicycle _$BicycleFromProto(GBicycle proto) {
  return Bicycle(
    wheelDiamater: $DecimalProtoExtension.$fromProtoString(proto.wheelDiamater),
    weight: proto.fieldsOfSuperClass.weight,
    key: proto.key,
  );
}

extension $BicycleProtoExtension on Bicycle {
  GBicycle toProto() => _$BicycleToProto(this);
  String toJson() => _$BicycleToProto(this).writeToJson();

  static Bicycle fromProto(GBicycle proto) => _$BicycleFromProto(proto);
  static Bicycle fromJson(String json) =>
      _$BicycleFromProto(GBicycle.fromJson(json));
}

extension $GBicycleProtoExtension on GBicycle {
  Bicycle toBicycle() => _$BicycleFromProto(this);
}
