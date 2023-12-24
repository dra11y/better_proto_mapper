import 'package:better_proto_generator_test/src/utensils.dart';
import 'package:better_proto_generator_test/grpc/model.pb.dart';

import 'package:test/test.dart';

/// Currently, dates are only stored up to the milliseconds, preferrable this should also be possible up to the microseconds.
void main() {
  group('Durations', () {
    test('Microseconds precision', () {
      final inv = Inventory(
        numberOfThings: {},
        recipesByName: {},
        timeSpan: Duration(milliseconds: 10, microseconds: 3),
      );
      final serialized = inv.toJson();
      final deserialized = GInventory.fromJson(serialized).toInventory();
      expect(
          deserialized.timeSpan,
          equals(Duration(
            milliseconds: 10,
            microseconds: 3,
          )));
    });
  });
}
