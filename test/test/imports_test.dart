import 'package:better_proto_generator_test/proto_generator_test.dart';
import 'package:better_proto_generator_test/src/appliance_type.dart';
import 'package:better_proto_generator_test/src/component.dart';
import 'package:better_proto_generator_test/src/utensils.dart';
import 'package:test/test.dart';

/// With the classes defined in "utensils.proto", we can test the following items implicitly,
/// as building and generating code without errors should prove the following:
///  - multiple @proto and @mapProto annotations can live within the same .dart file
///  - duplicate "import" and "syntax" statements are filtered out
///  - .proto files will not import itself
void main() {
  group('Imports', () {
    test('utensil', () {
      final kitchen = _kitchen();
      expect(kitchen.toJson(), equals(kitchen.toProto().toKitchen().toJson()));
    });
  });
}

Kitchen _kitchen() {
  return Kitchen(recipeList: [
    _recipe()
  ], recipeMap: {
    'test1': _recipe(),
    'test2': _recipe(),
    'test3': _recipe(),
  }, nextInspectionDate: DateTime.now());
}

Recipe _recipe() {
  return Recipe(
    title: 'Recipe 1',
    category: Category(
        title: 'Category',
        mainComponent: Component(description: 'Description'),
        otherComponents: []),
    ingredients: [],
    publishDate: DateTime.now(),
    preparationDuration: Duration(),
    isPublished: true,
    mainApplianceType: ApplianceType.cold,
    tags: [],
    grossWeight: 195.65,
    netWeight: null,
  );
}
