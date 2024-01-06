import 'dart:io';
import 'package:decimal/decimal.dart';
import 'package:better_proto_generator_test/proto_generator_test.dart';
import 'package:better_proto_generator_test/src/appliance_type.dart';
import 'package:better_proto_generator_test/src/component.dart';
import 'package:better_proto_generator_test/src/utensils.dart';
import 'package:better_proto_generator_test/grpc/model.pb.dart';

import 'package:test/test.dart';

/// Test that the ``ProtoFieldCasing.protoStandards`` configuration
/// results in the proper snake_cased field names in the generated .proto files
void main() {
  group('useProtoFieldNamingConventions', () {
    test('enum value names', () {
      File proto = File('lib/proto/model.proto');
      String contents = proto.readAsStringSync();
      expect(contents, contains('G_KNIFE_TYPE_CHEFS_KNIFE'));
      expect(contents, isNot(contains('paringKnife')));
    });

    test('serialization/deserialization', () {
      final chef = Chef(
          favoriteRecipe: _scrambledEggsRecipe(),
          favoriteKnife:
              Knife(name: "Chef's Knife", type: KnifeType.chefsKnife),
          favoriteApplianceType: ApplianceType.cutlery,
          favoriteWords: ["My", "Kitchen", "My", "Rules"],
          birthdate: DateTime(2000, 1, 2, 3, 4, 5, 6, 7));
      var proto = chef.toProto();
      var serialized = chef.toJson();
      var deserializedJson = GChef.fromJson(serialized).toChef();
      var deserializedProto = proto.toChef();
      expect(chef.toProto().writeToJson(), equals(serialized));
      expect(chef.toProto().writeToJson(), equals(deserializedJson.toJson()));
      expect(chef.toProto().writeToJson(), equals(deserializedProto.toJson()));
    });
  });
}

Recipe _scrambledEggsRecipe({
  DateTime? expiryDate,
  Duration? totalDuration,
  bool? requiresRobot,
  Component? alternativeComponent,
  List<Component>? secondaryComponents,
  Component? categoryAlternativeComponent,
  List<Component>? categorySecondaryComponents,
  ApplianceType? secondaryApplianceType,
  List<String>? extraTags,
}) =>
    Recipe(
      category: _eggsCategory(
        alternativeComponent: categoryAlternativeComponent,
        secondaryComponents: categorySecondaryComponents,
      ),
      publishDate: DateTime(2021, 02, 05, 13, 15, 12),
      expiryDate: expiryDate,
      ingredients: [
        Ingredient(
          description: '',
          quantity: Decimal.fromInt(0),
          precision: 1202.067843212219876,
          cookingDuration: Duration(),
          mainComponent: Component(
            description: 'ingredient component',
          ),
          otherComponents: [
            Component(description: 'other ingredient component 1'),
            Component(description: 'other ingredient component 2'),
          ],
          alternativeComponent: alternativeComponent,
          secondaryComponents: secondaryComponents,
        ),
      ],
      title: 'Scrambled eggs',
      preparationDuration: Duration(minutes: 23, seconds: 30),
      totalDuration: totalDuration,
      isPublished: true,
      requiresRobot: requiresRobot,
      mainApplianceType: ApplianceType.cutlery,
      secondaryApplianceType: secondaryApplianceType,
      tags: ['tag1', 'tag2'],
      extraTags: extraTags,
      grossWeight: 195.65,
      netWeight: null,
    );

Category _eggsCategory({
  Component? alternativeComponent,
  List<Component>? secondaryComponents,
}) =>
    Category(
      title: 'eggs',
      mainComponent: Component(
        description: 'category component',
      ),
      otherComponents: [
        Component(description: 'other category component 1'),
        Component(description: 'other category component 2'),
      ],
      alternativeComponent: alternativeComponent,
      secondaryComponents: secondaryComponents,
    );
