// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'car.dart';

// **************************************************************************
// ProtoMapperGenerator
// **************************************************************************

class $CarProtoMapper implements ProtoMapper<Car, GCar> {
  const $CarProtoMapper();

  @override
  Car fromProto(GCar proto) => _$CarFromProto(proto);

  @override
  GCar toProto(Car entity) => _$CarToProto(entity);

  GCar toFieldsOfProto(Car entity) => _$CarToProto(entity);

  Car fromJson(String json) => _$CarFromProto(GCar.fromJson(json));
  String toJson(Car entity) => _$CarToProto(entity).writeToJson();

  String toBase64Proto(Car entity) =>
      base64Encode(utf8.encode(entity.toProto().writeToJson()));

  Car fromBase64Proto(String base64Proto) =>
      GCar.fromJson(utf8.decode(base64Decode(base64Proto))).toCar();
}

GCar _$CarToProto(Car instance) {
  var proto = GCar();

  proto.fieldsOfSuperClass =
      const $VehicleProtoMapper().toFieldsOfProto(instance);

  proto.numberOfDoors = instance.numberOfDoors;

  return proto;
}

Car _$CarFromProto(GCar proto) {
  return Car(
    numberOfDoors: proto.numberOfDoors,
    weight: proto.fieldsOfSuperClass.weight,
  );
}

extension $CarProtoExtension on Car {
  GCar toProto() => _$CarToProto(this);
  String toJson() => _$CarToProto(this).writeToJson();

  static Car fromProto(GCar proto) => _$CarFromProto(proto);
  static Car fromJson(String json) => _$CarFromProto(GCar.fromJson(json));
}

extension $GCarProtoExtension on GCar {
  Car toCar() => _$CarFromProto(this);
}
