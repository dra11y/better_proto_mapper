// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'starship.dart';

// **************************************************************************
// ProtoMapperGenerator
// **************************************************************************

class $StarshipProtoMapper implements ProtoMapper<Starship, GStarship> {
  const $StarshipProtoMapper();

  @override
  Starship fromProto(GStarship proto) => _$StarshipFromProto(proto);

  @override
  GStarship toProto(Starship entity) => _$StarshipToProto(entity);

  GStarship toFieldsOfProto(Starship entity) => _$StarshipToProto(entity);

  Starship fromJson(String json) =>
      _$StarshipFromProto(GStarship.fromJson(json));
  String toJson(Starship entity) => _$StarshipToProto(entity).writeToJson();

  String toBase64Proto(Starship entity) =>
      base64Encode(utf8.encode(entity.toProto().writeToJson()));

  Starship fromBase64Proto(String base64Proto) =>
      GStarship.fromJson(utf8.decode(base64Decode(base64Proto))).toStarship();
}

GStarship _$StarshipToProto(Starship instance) {
  var proto = GStarship();

  proto.range = instance.range.$toProtoBytes();
  proto.odometer = instance.odometer.$toProtoBytes();
  proto.engineNumber = instance.engineNumber;

  return proto;
}

Starship _$StarshipFromProto(GStarship proto) {
  return Starship(
    range: $BigIntProtoExtension.$fromProtoBytes(proto.range),
    engineNumber: proto.engineNumber,
    odometer: $NullableBigIntProtoExtension.$fromProtoBytes(proto.odometer),
  );
}

extension $StarshipProtoExtension on Starship {
  GStarship toProto() => _$StarshipToProto(this);
  String toJson() => _$StarshipToProto(this).writeToJson();

  static Starship fromProto(GStarship proto) => _$StarshipFromProto(proto);
  static Starship fromJson(String json) =>
      _$StarshipFromProto(GStarship.fromJson(json));
}

extension $GStarshipProtoExtension on GStarship {
  Starship toStarship() => _$StarshipFromProto(this);
}
