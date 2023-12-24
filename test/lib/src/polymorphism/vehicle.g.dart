// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vehicle.dart';

// **************************************************************************
// ProtoMapperGenerator
// **************************************************************************

class $VehicleProtoMapper implements ProtoMapper<Vehicle, GVehicle> {
  const $VehicleProtoMapper();

  @override
  Vehicle fromProto(GVehicle proto) => _$VehicleFromProto(proto);

  @override
  GVehicle toProto(Vehicle entity) => _$VehicleToProto(entity);

  GFieldsOfVehicle toFieldsOfProto(Vehicle entity) =>
      _$VehicleToFieldsOfProto(entity);

  Vehicle fromJson(String json) => _$VehicleFromProto(GVehicle.fromJson(json));
  String toJson(Vehicle entity) => _$VehicleToProto(entity).writeToJson();

  String toBase64Proto(Vehicle entity) =>
      base64Encode(utf8.encode(entity.toProto().writeToJson()));

  Vehicle fromBase64Proto(String base64Proto) =>
      GVehicle.fromJson(utf8.decode(base64Decode(base64Proto))).toVehicle();
}

GFieldsOfVehicle _$VehicleToFieldsOfProto(Vehicle instance) {
  final proto = GFieldsOfVehicle();

  proto.weight = instance.weight;

  return proto;
}

GVehicle _$VehicleToProto(Vehicle instance) {
  var proto = GVehicle();

  if (instance is Aircraft) {
    proto.aircraft = (const $AircraftProtoMapper()).toProto(instance);
    return proto;
  }

  if (instance is Car) {
    proto.car = (const $CarProtoMapper()).toProto(instance);
    return proto;
  }

  proto.vehicle = _$VehicleToFieldsOfProto(instance);

  return proto;
}

Vehicle _$VehicleFromProto(GVehicle sInstance) {
  if (sInstance.hasAircraft()) {
    return sInstance.aircraft.toAircraft();
  }

  if (sInstance.hasCar()) {
    return sInstance.car.toCar();
  }

  final proto = sInstance.vehicle;
  final ret = Vehicle(
    weight: proto.weight,
  );

  return ret;
}

extension $VehicleProtoExtension on Vehicle {
  GVehicle toProto() => _$VehicleToProto(this);
  String toJson() => _$VehicleToProto(this).writeToJson();

  static Vehicle fromProto(GVehicle proto) => _$VehicleFromProto(proto);
  static Vehicle fromJson(String json) =>
      _$VehicleFromProto(GVehicle.fromJson(json));
}

extension $GVehicleProtoExtension on GVehicle {
  Vehicle toVehicle() => _$VehicleFromProto(this);
}
