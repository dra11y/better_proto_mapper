// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'alt_naming.dart';

// **************************************************************************
// ProtoMapperGenerator
// **************************************************************************

class $AltNamingProtoMapper implements ProtoMapper<AltNaming, GAltNaming> {
  const $AltNamingProtoMapper();

  @override
  AltNaming fromProto(GAltNaming proto) => _$AltNamingFromProto(proto);

  @override
  GAltNaming toProto(AltNaming entity) => _$AltNamingToProto(entity);

  GAltNaming toFieldsOfProto(AltNaming entity) => _$AltNamingToProto(entity);

  AltNaming fromJson(String json) =>
      _$AltNamingFromProto(GAltNaming.fromJson(json));
  String toJson(AltNaming entity) => _$AltNamingToProto(entity).writeToJson();

  String toBase64Proto(AltNaming entity) =>
      base64Encode(utf8.encode(entity.toProto().writeToJson()));

  AltNaming fromBase64Proto(String base64Proto) =>
      GAltNaming.fromJson(utf8.decode(base64Decode(base64Proto))).toAltNaming();
}

GAltNaming _$AltNamingToProto(AltNaming instance) {
  var proto = GAltNaming();

  proto.unconventionalName = instance.unconventionalName;
  if (instance.nUnconventionalName != null) {
    proto.nUnconventionalName = instance.nUnconventionalName!;
  }

  proto.unconventionalEnumName =
      GApplianceType.valueOf(instance.unconventionalEnumName.index)!;
  if (instance.nUnconventionalEnumName != null) {
    proto.nUnconventionalEnumName =
        GApplianceType.valueOf(instance.nUnconventionalEnumName!.index)!;
  }

  proto.unconventionalCategory =
      const $EmptyProtoMapper().toProto(instance.unconventionalClass);
  if (instance.nUnconventionalClass != null) {
    proto.nUnconventionalCategory =
        const $EmptyProtoMapper().toProto(instance.nUnconventionalClass!);
  }

  proto.unconventionalList.addAll(instance.unconventionalList
      .map((e) => const $IngredientProtoMapper().toProto(e)));

  proto.unconventionalDateTime =
      Int64(instance.unconventionalDateTime.microsecondsSinceEpoch);
  if (instance.nUnconventionalDateTime != null) {
    proto.nUnconventionalDateTime =
        Int64(instance.nUnconventionalDateTime!.microsecondsSinceEpoch);
  }

  proto.unconventionalDuration =
      Int64(instance.unconventionalDuration.inMicroseconds);
  if (instance.nUnconventionalDuration != null) {
    proto.nUnconventionalDuration =
        Int64(instance.nUnconventionalDuration!.inMicroseconds);
  }

  return proto;
}

AltNaming _$AltNamingFromProto(GAltNaming proto) {
  return AltNaming(
    unconventionalName: proto.unconventionalName,
    nUnconventionalName:
        (proto.hasNUnconventionalName() ? proto.nUnconventionalName : null),
    unconventionalEnumName:
        ApplianceType.values[proto.unconventionalEnumName.value],
    nUnconventionalEnumName: (proto.hasNUnconventionalEnumName()
        ? (ApplianceType.values[proto.nUnconventionalEnumName.value])
        : null),
    unconventionalClass:
        const $EmptyProtoMapper().fromProto(proto.unconventionalCategory),
    nUnconventionalClass: (proto.hasNUnconventionalCategory()
        ? const $EmptyProtoMapper().fromProto(proto.nUnconventionalCategory)
        : null),
    unconventionalList: List<Ingredient>.unmodifiable(proto.unconventionalList
        .map((e) => const $IngredientProtoMapper().fromProto(e))),
    unconventionalDateTime: DateTime.fromMicrosecondsSinceEpoch(
        proto.unconventionalDateTime.toInt()),
    nUnconventionalDateTime: (proto.hasNUnconventionalDateTime()
        ? DateTime.fromMicrosecondsSinceEpoch(
            proto.nUnconventionalDateTime.toInt())
        : null),
    unconventionalDuration:
        Duration(microseconds: proto.unconventionalDuration.toInt()),
    nUnconventionalDuration: (proto.hasNUnconventionalDuration()
        ? Duration(microseconds: proto.nUnconventionalDuration.toInt())
        : null),
  );
}

extension $AltNamingProtoExtension on AltNaming {
  GAltNaming toProto() => _$AltNamingToProto(this);
  String toJson() => _$AltNamingToProto(this).writeToJson();

  static AltNaming fromProto(GAltNaming proto) => _$AltNamingFromProto(proto);
  static AltNaming fromJson(String json) =>
      _$AltNamingFromProto(GAltNaming.fromJson(json));
}

extension $GAltNamingProtoExtension on GAltNaming {
  AltNaming toAltNaming() => _$AltNamingFromProto(this);
}
