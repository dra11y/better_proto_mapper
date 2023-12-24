import 'package:better_proto_annotations/better_proto_annotations.dart';
import 'package:better_proto_generator_test/grpc/model.pb.dart';
// ignore: unused_import
import 'package:better_proto_generator_test/gtypes.dart';

import 'appliance_type.dart';
import 'recipe.dart';

part 'utensils.g.dart';

@Proto()
enum KnifeType {
  chefsKnife,
  paringKnife,
  breadKnife,
}

@Proto()
enum ChefType {
  seniorChef,
  sousChef,
  pastryChef,
  fishChef,
}

@Proto()
class Knife {
  @ProtoField(1)
  final String name;
  @ProtoField(2)
  final KnifeType type;

  Knife({required this.name, required this.type});
}

@Proto()
class GarlicPress {
  @ProtoField(2)
  final String name;
  @ProtoField(3)
  final bool machineWashable;

  GarlicPress({required this.name, required this.machineWashable});
}

@Proto()
class Kitchen {
  @ProtoField(2)
  final List<Recipe> recipeList;
  @ProtoField(3)
  final Map<String, Recipe> recipeMap;
  @ProtoField(4)
  final DateTime nextInspectionDate;

  const Kitchen({
    required this.recipeList,
    required this.recipeMap,
    required this.nextInspectionDate,
  });
}

@Proto()
class Chef {
  @ProtoField(2)
  final Recipe? favoriteRecipe;
  @ProtoField(3)
  final Knife? favoriteKnife;
  @ProtoField(4)
  final ApplianceType favoriteApplianceType;
  @ProtoField(5)
  final List<String> favoriteWords;
  @ProtoField(6)
  final DateTime birthdate;
  @ProtoField(7)
  final Duration? shelfLife;

  Chef({
    this.favoriteRecipe,
    required this.favoriteKnife,
    required this.favoriteApplianceType,
    this.favoriteWords = const [],
    required this.birthdate,
    this.shelfLife,
  });
}

/// SousChef is not allowed to handle a knife, so default to null.
/// In order for this to work, we'll have to ignore missing nullable fields
/// when looking for the FieldDescriptors of an entity,
/// and rely on the fact that the constructor will properly
/// set the required parameters(s).
@Proto()
class SousChef extends Chef {
  SousChef({
    required super.favoriteApplianceType,
    required super.birthdate,
    super.favoriteWords = const [],
  }) : super(favoriteKnife: null);
}

/// KnifeMaster is required to have a favorite knife.
/// To narrow down the requirement, we have to override the optional field
/// defined in the parent class.
/// We also know his favorite words, so no need to put them in the constructor.
/// This requires addition of the "allowMissingFields" annotation property.
@Proto()
class KnifeMaster extends Chef {
  @override
  @ProtoField(2)
  // ignore: overridden_fields
  Knife favoriteKnife;

  KnifeMaster({
    required this.favoriteKnife,
    required super.favoriteApplianceType,
    required super.birthdate,
  }) : super(
          favoriteKnife: favoriteKnife,
          favoriteWords: ['Yes', 'Sir'],
        );
}

@Proto()
class Inventory {
  @ProtoField(2)
  final Map<String, int> numberOfThings;
  @ProtoField(3)
  final Map<String, Recipe> recipesByName;
  @ProtoField(4)
  final Duration? timeSpan;

  const Inventory({
    required this.numberOfThings,
    required this.recipesByName,
    this.timeSpan,
  });
}

@Proto()
class PrecisionSubject {
  @ProtoField(2)
  final DateTime dateProperty;
  @ProtoField(3)
  final Duration durationProperty;

  const PrecisionSubject({
    required this.dateProperty,
    required this.durationProperty,
  });
}
