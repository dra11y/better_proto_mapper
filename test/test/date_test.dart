import 'package:better_proto_generator_test/src/appliance_type.dart';
import 'package:better_proto_generator_test/src/utensils.dart';
import 'package:better_proto_generator_test/grpc/model.pb.dart';

import 'package:test/test.dart';

void main() {
  group('Dates', () {
    test('Microseconds precision', () {
      final chef = Chef(
          favoriteApplianceType: ApplianceType.cutlery,
          favoriteKnife: null,
          favoriteRecipe: null,
          birthdate: DateTime(2000, 1, 2, 3, 4, 5, 6, 7));
      final serialized = chef.toJson();
      final deserialized = GChef.fromJson(serialized).toChef();
      expect(chef.birthdate, equals(deserialized.birthdate.toLocal()));
    });
  });
}
