// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'recipe.dart';

// **************************************************************************
// ProtoMapperGenerator
// **************************************************************************

class $RecipeProtoMapper implements ProtoMapper<Recipe, GRecipe> {
  const $RecipeProtoMapper();

  @override
  Recipe fromProto(GRecipe proto) => _$RecipeFromProto(proto);

  @override
  GRecipe toProto(Recipe entity) => _$RecipeToProto(entity);

  GRecipe toFieldsOfProto(Recipe entity) => _$RecipeToProto(entity);

  Recipe fromJson(String json) => _$RecipeFromProto(GRecipe.fromJson(json));
  String toJson(Recipe entity) => _$RecipeToProto(entity).writeToJson();

  String toBase64Proto(Recipe entity) =>
      base64Encode(utf8.encode(entity.toProto().writeToJson()));

  Recipe fromBase64Proto(String base64Proto) =>
      GRecipe.fromJson(utf8.decode(base64Decode(base64Proto))).toRecipe();
}

GRecipe _$RecipeToProto(Recipe instance) {
  var proto = GRecipe();

  proto.title = instance.title;
  if (instance.description != null) {
    proto.description = instance.description!;
  }

  proto.category = const $CategoryProtoMapper().toProto(instance.category);
  proto.ingredients.addAll(instance.ingredients
      .map((e) => const $IngredientProtoMapper().toProto(e)));

  proto.publishDate = Int64(instance.publishDate.microsecondsSinceEpoch);
  if (instance.expiryDate != null) {
    proto.expiryDate = Int64(instance.expiryDate!.microsecondsSinceEpoch);
  }

  proto.preparationDuration =
      Int64(instance.preparationDuration.inMicroseconds);
  if (instance.totalDuration != null) {
    proto.totalDuration = Int64(instance.totalDuration!.inMicroseconds);
  }

  proto.isPublished = instance.isPublished;
  if (instance.requiresRobot != null) {
    proto.requiresRobot = instance.requiresRobot!;
  }

  if (instance.grossWeight != null) {
    proto.grossWeight = instance.grossWeight!;
  }

  if (instance.netWeight != null) {
    proto.netWeight = instance.netWeight!;
  }

  proto.mainApplianceType =
      GApplianceType.valueOf(instance.mainApplianceType.index)!;
  if (instance.secondaryApplianceType != null) {
    proto.secondaryApplianceType =
        GApplianceType.valueOf(instance.secondaryApplianceType!.index)!;
  }

  proto.tags.addAll(instance.tags);

  proto.extraTags.addAll(instance.extraTags ?? []);

  proto.moreApplianceTypes.addAll(instance.moreApplianceTypes
      .map((e) => const $ApplianceTypeProtoMapper().toProto(e)));

  return proto;
}

Recipe _$RecipeFromProto(GRecipe proto) {
  return Recipe(
    title: proto.title,
    category: const $CategoryProtoMapper().fromProto(proto.category),
    ingredients: List<Ingredient>.unmodifiable(proto.ingredients
        .map((e) => const $IngredientProtoMapper().fromProto(e))),
    publishDate: DateTime.fromMicrosecondsSinceEpoch(proto.publishDate.toInt()),
    preparationDuration:
        Duration(microseconds: proto.preparationDuration.toInt()),
    isPublished: proto.isPublished,
    mainApplianceType: ApplianceType.values[proto.mainApplianceType.value],
    tags: List<String>.unmodifiable(proto.tags.map((e) => e)),
    grossWeight: (proto.hasGrossWeight() ? proto.grossWeight : null),
    description: (proto.hasDescription() ? proto.description : null),
    expiryDate: (proto.hasExpiryDate()
        ? DateTime.fromMicrosecondsSinceEpoch(proto.expiryDate.toInt())
        : null),
    totalDuration: (proto.hasTotalDuration()
        ? Duration(microseconds: proto.totalDuration.toInt())
        : null),
    requiresRobot: (proto.hasRequiresRobot() ? proto.requiresRobot : null),
    secondaryApplianceType: (proto.hasSecondaryApplianceType()
        ? (ApplianceType.values[proto.secondaryApplianceType.value])
        : null),
    extraTags: List<String>.unmodifiable(proto.extraTags.map((e) => e)),
    netWeight: (proto.hasNetWeight() ? proto.netWeight : null),
    moreApplianceTypes: List<ApplianceType>.unmodifiable(proto
        .moreApplianceTypes
        .map((e) => const $ApplianceTypeProtoMapper().fromProto(e))),
  );
}

extension $RecipeProtoExtension on Recipe {
  GRecipe toProto() => _$RecipeToProto(this);
  String toJson() => _$RecipeToProto(this).writeToJson();

  static Recipe fromProto(GRecipe proto) => _$RecipeFromProto(proto);
  static Recipe fromJson(String json) =>
      _$RecipeFromProto(GRecipe.fromJson(json));
}

extension $GRecipeProtoExtension on GRecipe {
  Recipe toRecipe() => _$RecipeFromProto(this);
}
