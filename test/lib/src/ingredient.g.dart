// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ingredient.dart';

// **************************************************************************
// ProtoMapperGenerator
// **************************************************************************

class $IngredientProtoMapper implements ProtoMapper<Ingredient, GIngredient> {
  const $IngredientProtoMapper();

  @override
  Ingredient fromProto(GIngredient proto) => _$IngredientFromProto(proto);

  @override
  GIngredient toProto(Ingredient entity) => _$IngredientToProto(entity);

  GIngredient toFieldsOfProto(Ingredient entity) => _$IngredientToProto(entity);

  Ingredient fromJson(String json) =>
      _$IngredientFromProto(GIngredient.fromJson(json));
  String toJson(Ingredient entity) => _$IngredientToProto(entity).writeToJson();

  String toBase64Proto(Ingredient entity) =>
      base64Encode(utf8.encode(entity.toProto().writeToJson()));

  Ingredient fromBase64Proto(String base64Proto) =>
      GIngredient.fromJson(utf8.decode(base64Decode(base64Proto)))
          .toIngredient();
}

GIngredient _$IngredientToProto(Ingredient instance) {
  var proto = GIngredient();

  proto.description = instance.description;
  proto.quantity = instance.quantity.$toProtoString();
  proto.precision = instance.precision;
  proto.cookingDuration = Int64(instance.cookingDuration.inMicroseconds);
  proto.mainComponent =
      const $ComponentProtoMapper().toProto(instance.mainComponent);
  proto.otherComponents.addAll(instance.otherComponents
      .map((e) => const $ComponentProtoMapper().toProto(e)));

  if (instance.alternativeComponent != null) {
    proto.alternativeComponent =
        const $ComponentProtoMapper().toProto(instance.alternativeComponent!);
  }

  proto.secondaryComponents.addAll(instance.secondaryComponents
          ?.map((e) => const $ComponentProtoMapper().toProto(e)) ??
      []);

  return proto;
}

Ingredient _$IngredientFromProto(GIngredient proto) {
  return Ingredient(
    description: proto.description,
    quantity: $DecimalProtoExtension.$fromProtoString(proto.quantity),
    precision: proto.precision,
    cookingDuration: Duration(microseconds: proto.cookingDuration.toInt()),
    mainComponent: const $ComponentProtoMapper().fromProto(proto.mainComponent),
    otherComponents: List<Component>.unmodifiable(proto.otherComponents
        .map((e) => const $ComponentProtoMapper().fromProto(e))),
    alternativeComponent: (proto.hasAlternativeComponent()
        ? const $ComponentProtoMapper().fromProto(proto.alternativeComponent)
        : null),
    secondaryComponents: List<Component>.unmodifiable(proto.secondaryComponents
        .map((e) => const $ComponentProtoMapper().fromProto(e))),
  );
}

extension $IngredientProtoExtension on Ingredient {
  GIngredient toProto() => _$IngredientToProto(this);
  String toJson() => _$IngredientToProto(this).writeToJson();

  static Ingredient fromProto(GIngredient proto) =>
      _$IngredientFromProto(proto);
  static Ingredient fromJson(String json) =>
      _$IngredientFromProto(GIngredient.fromJson(json));
}

extension $GIngredientProtoExtension on GIngredient {
  Ingredient toIngredient() => _$IngredientFromProto(this);
}
