import 'package:better_proto_annotations/better_proto_annotations.dart';
import 'package:better_proto_generator_test/grpc/model.pb.dart';
// ignore: unused_import
import 'package:better_proto_generator_test/gtypes.dart';
import 'package:better_proto_generator_test/src/appliance_type.dart';

import 'category.dart';
import 'ingredient.dart';

part 'recipe.g.dart';

@Proto()
class Recipe {
  @ProtoField(2)
  final String title;
  @ProtoField(3)
  final String? description;
  @ProtoField(4)
  final Category category;
  @ProtoField(5)
  final List<Ingredient> ingredients;
  @ProtoField(6)
  final DateTime publishDate;
  @ProtoField(7)
  final DateTime? expiryDate;
  @ProtoField(8)
  final Duration preparationDuration;
  @ProtoField(9)
  final Duration? totalDuration;
  @ProtoField(10)
  final bool isPublished;
  @ProtoField(11)
  final bool? requiresRobot;
  @ProtoField(12)
  final double? grossWeight;
  @ProtoField(13)
  final double? netWeight;

  @ProtoField(14)
  final ApplianceType mainApplianceType;
  @ProtoField(15)
  final ApplianceType? secondaryApplianceType;

  @ProtoField(16)
  final List<String> tags;
  @ProtoField(17)
  final List<String>? extraTags;

  @ProtoField(18)
  final List<ApplianceType> moreApplianceTypes;

  Recipe({
    required this.title,
    required this.category,
    required this.ingredients,
    required this.publishDate,
    required this.preparationDuration,
    required this.isPublished,
    required this.mainApplianceType,
    required this.tags,
    required this.grossWeight,
    this.description,
    this.expiryDate,
    this.totalDuration,
    this.requiresRobot,
    this.secondaryApplianceType,
    this.extraTags,
    this.netWeight,
    this.moreApplianceTypes = const [],
  });
}
