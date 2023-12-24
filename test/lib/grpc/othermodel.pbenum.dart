///
//  Generated code. Do not modify.
//  source: othermodel.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

// ignore_for_file: UNDEFINED_SHOWN_NAME
import 'dart:core' as $core;
import 'package:protobuf/protobuf.dart' as $pb;

class GApplianceType extends $pb.ProtobufEnum {
  static const GApplianceType G_APPLIANCE_TYPE_HEAT = GApplianceType._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'G_APPLIANCE_TYPE_HEAT');
  static const GApplianceType G_APPLIANCE_TYPE_COLD = GApplianceType._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'G_APPLIANCE_TYPE_COLD');
  static const GApplianceType G_APPLIANCE_TYPE_CUTLERY = GApplianceType._(2, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'G_APPLIANCE_TYPE_CUTLERY');

  static const $core.List<GApplianceType> values = <GApplianceType> [
    G_APPLIANCE_TYPE_HEAT,
    G_APPLIANCE_TYPE_COLD,
    G_APPLIANCE_TYPE_CUTLERY,
  ];

  static final $core.Map<$core.int, GApplianceType> _byValue = $pb.ProtobufEnum.initByValue(values);
  static GApplianceType? valueOf($core.int value) => _byValue[value];

  const GApplianceType._($core.int v, $core.String n) : super(v, n);
}

class GRecipeTypes extends $pb.ProtobufEnum {
  static const GRecipeTypes G_RECIPE_TYPES_COOK = GRecipeTypes._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'G_RECIPE_TYPES_COOK');
  static const GRecipeTypes G_RECIPE_TYPES_GRILL = GRecipeTypes._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'G_RECIPE_TYPES_GRILL');
  static const GRecipeTypes G_RECIPE_TYPES_FRY = GRecipeTypes._(2, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'G_RECIPE_TYPES_FRY');
  static const GRecipeTypes G_RECIPE_TYPES_STEW = GRecipeTypes._(3, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'G_RECIPE_TYPES_STEW');

  static const $core.List<GRecipeTypes> values = <GRecipeTypes> [
    G_RECIPE_TYPES_COOK,
    G_RECIPE_TYPES_GRILL,
    G_RECIPE_TYPES_FRY,
    G_RECIPE_TYPES_STEW,
  ];

  static final $core.Map<$core.int, GRecipeTypes> _byValue = $pb.ProtobufEnum.initByValue(values);
  static GRecipeTypes? valueOf($core.int value) => _byValue[value];

  const GRecipeTypes._($core.int v, $core.String n) : super(v, n);
}

class GKnifeType extends $pb.ProtobufEnum {
  static const GKnifeType G_KNIFE_TYPE_CHEFS_KNIFE = GKnifeType._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'G_KNIFE_TYPE_CHEFS_KNIFE');
  static const GKnifeType G_KNIFE_TYPE_PARING_KNIFE = GKnifeType._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'G_KNIFE_TYPE_PARING_KNIFE');
  static const GKnifeType G_KNIFE_TYPE_BREAD_KNIFE = GKnifeType._(2, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'G_KNIFE_TYPE_BREAD_KNIFE');

  static const $core.List<GKnifeType> values = <GKnifeType> [
    G_KNIFE_TYPE_CHEFS_KNIFE,
    G_KNIFE_TYPE_PARING_KNIFE,
    G_KNIFE_TYPE_BREAD_KNIFE,
  ];

  static final $core.Map<$core.int, GKnifeType> _byValue = $pb.ProtobufEnum.initByValue(values);
  static GKnifeType? valueOf($core.int value) => _byValue[value];

  const GKnifeType._($core.int v, $core.String n) : super(v, n);
}

class GChefType extends $pb.ProtobufEnum {
  static const GChefType G_CHEF_TYPE_SENIOR_CHEF = GChefType._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'G_CHEF_TYPE_SENIOR_CHEF');
  static const GChefType G_CHEF_TYPE_SOUS_CHEF = GChefType._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'G_CHEF_TYPE_SOUS_CHEF');
  static const GChefType G_CHEF_TYPE_PASTRY_CHEF = GChefType._(2, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'G_CHEF_TYPE_PASTRY_CHEF');
  static const GChefType G_CHEF_TYPE_FISH_CHEF = GChefType._(3, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'G_CHEF_TYPE_FISH_CHEF');

  static const $core.List<GChefType> values = <GChefType> [
    G_CHEF_TYPE_SENIOR_CHEF,
    G_CHEF_TYPE_SOUS_CHEF,
    G_CHEF_TYPE_PASTRY_CHEF,
    G_CHEF_TYPE_FISH_CHEF,
  ];

  static final $core.Map<$core.int, GChefType> _byValue = $pb.ProtobufEnum.initByValue(values);
  static GChefType? valueOf($core.int value) => _byValue[value];

  const GChefType._($core.int v, $core.String n) : super(v, n);
}

