// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'entity.dart';

// **************************************************************************
// ProtoMapperGenerator
// **************************************************************************

class $EntityProtoMapper implements ProtoMapper<Entity, GEntity> {
  const $EntityProtoMapper();

  @override
  Entity fromProto(GEntity proto) => _$EntityFromProto(proto);

  @override
  GEntity toProto(Entity entity) => _$EntityToProto(entity);

  GEntity toFieldsOfProto(Entity entity) => _$EntityToProto(entity);

  Entity fromJson(String json) => _$EntityFromProto(GEntity.fromJson(json));
  String toJson(Entity entity) => _$EntityToProto(entity).writeToJson();

  String toBase64Proto(Entity entity) =>
      base64Encode(utf8.encode(entity.toProto().writeToJson()));

  Entity fromBase64Proto(String base64Proto) =>
      GEntity.fromJson(utf8.decode(base64Decode(base64Proto))).toEntity();
}

GEntity _$EntityToProto(Entity instance) {
  var proto = GEntity();

  proto.key = instance.key;

  return proto;
}

Entity _$EntityFromProto(GEntity proto) {
  return Entity(
    key: proto.key,
  );
}

extension $EntityProtoExtension on Entity {
  GEntity toProto() => _$EntityToProto(this);
  String toJson() => _$EntityToProto(this).writeToJson();

  static Entity fromProto(GEntity proto) => _$EntityFromProto(proto);
  static Entity fromJson(String json) =>
      _$EntityFromProto(GEntity.fromJson(json));
}

extension $GEntityProtoExtension on GEntity {
  Entity toEntity() => _$EntityFromProto(this);
}
