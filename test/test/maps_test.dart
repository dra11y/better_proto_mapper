import 'package:decimal/decimal.dart';
import 'package:better_proto_generator_test/grpc/model.pb.dart';
import 'package:better_proto_generator_test/proto_generator_test.dart';
import 'package:better_proto_generator_test/src/appliance_type.dart';
import 'package:better_proto_generator_test/src/component.dart';
import 'package:better_proto_generator_test/src/utensils.dart';
import 'package:test/test.dart';

/// Test support for different types of maps.
/// Protobuf only supports certain primitive/primitive or primitive/non-primitive key/value type pairs.
///   Some error messages when making other combinations:
///     Key in map fields cannot be float/double, bytes or message types.
///     Key in map fields cannot be enum types.
///
/// The "utensils.dart" file also implicitly tests some other things:
///   -
///
void main() {
  group('Maps', () {
    test('Inventory maps', () {
      var inventory = _inventory();
      var proto = inventory.toProto();
      var serialized = inventory.toJson();
      var deserializedJson = GInventory.fromJson(serialized).toInventory();
      var deserializedProto = proto.toInventory();
      expect(inventory.toProto().writeToJson(), equals(serialized));
      expect(
          inventory.toProto().writeToJson(), equals(deserializedJson.toJson()));
      expect(inventory.toProto().writeToJson(),
          equals(deserializedProto.toJson()));
    });
  });
}

Inventory _inventory() {
  Recipe lasagnaRecipe = _recipe();
  final inventory = Inventory(numberOfThings: {
    "One": 1,
    "Two": 2,
    "Three": 3
    // }, numberOfKnives: {
    //   Knife(name: "Chef's", type: KnifeType.chefsKnife): 2,
    //   Knife(name: "Bread", type: KnifeType.breadKnife): 1
  }, recipesByName: {
    "Lasagna": lasagnaRecipe
    // }, knifePerRecipe: {
    //   lasagnaRecipe: Knife(name: 'Lasagna Knife', type: KnifeType.paringKnife)
    // }, applianceKnifeMap: {
    //   ApplianceType.heat: Knife(name: "Hot Knife", type: KnifeType.chefsKnife),
    //   ApplianceType.cold: Knife(name: "Cold Knife", type: KnifeType.chefsKnife)
  });
  return inventory;
}

Recipe _recipe() {
  var lasagnaRecipe = Recipe(
    title: "Lasagna",
    category: Category(
        title: "Sauce",
        mainComponent: Component(description: "Red sauce"),
        otherComponents: []),
    ingredients: [
      Ingredient(
          description: "Tomatoes",
          quantity: Decimal.ten,
          precision: 1.2,
          cookingDuration: Duration(minutes: 5),
          mainComponent: Component(description: "Red sauce"),
          otherComponents: [])
    ],
    publishDate: DateTime.now(),
    preparationDuration: Duration(days: 10),
    isPublished: false,
    mainApplianceType: ApplianceType.heat,
    tags: [],
    grossWeight: 195.65,
    netWeight: null,
  );
  return lasagnaRecipe;
}
