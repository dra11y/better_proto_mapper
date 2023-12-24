// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'recipe_type.dart';

// **************************************************************************
// ProtoMapperGenerator
// **************************************************************************

class $RecipeTypesProtoMapper
    implements ProtoMapper<RecipeTypes, GRecipeTypes> {
  const $RecipeTypesProtoMapper();

  @override
  RecipeTypes fromProto(GRecipeTypes proto) => RecipeTypes.values[proto.value];

  @override
  GRecipeTypes toProto(RecipeTypes entity) =>
      GRecipeTypes.valueOf(entity.index)!;
}

extension $GRecipeTypesProtoExtension on GRecipeTypes {
  RecipeTypes toRecipeTypes() =>
      const $RecipeTypesProtoMapper().fromProto(this);
}
