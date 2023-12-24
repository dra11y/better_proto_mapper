import 'package:better_proto_generator_test/grpc/model.pb.dart';
import 'package:better_proto_generator_test/src/starship.dart';

import 'package:test/test.dart';

/// Bigint Test
void main() {
  group('BigInt', () {
    test('Positive bigint', () {
      final range = BigInt.from(7654323456765432);
      final Starship ship = Starship(range: range, engineNumber: 4);
      final serialized = ship.toJson();

      final deserialized = GStarship.fromJson(serialized);
      final dShip = deserialized.toStarship();

      expect(dShip.range, range);
    });

    test('small bigint', () {
      final range = BigInt.from(2);
      final Starship ship = Starship(range: range, engineNumber: 4);
      final serialized = ship.toJson();

      final deserialized = GStarship.fromJson(serialized);
      final dShip = deserialized.toStarship();

      expect(dShip.range, range);
    });

    test('zero bigint', () {
      final range = BigInt.from(0);
      final Starship ship = Starship(range: range, engineNumber: 4);
      final serialized = ship.toJson();

      final deserialized = GStarship.fromJson(serialized);
      final dShip = deserialized.toStarship();

      expect(dShip.range, range);
    });

    test('negative bigint', () {
      final range = BigInt.from(-234);
      final Starship ship = Starship(range: range, engineNumber: 4);
      final serialized = ship.toJson();

      final deserialized = GStarship.fromJson(serialized);
      final dShip = deserialized.toStarship();

      expect(dShip.range, range);
    });

    test('very big bigint', () {
      final range =
          BigInt.parse('2343343434346789876543378765437798065652233544');
      final Starship ship = Starship(range: range, engineNumber: 4);
      final serialized = ship.toJson();

      final deserialized = GStarship.fromJson(serialized);
      final dShip = deserialized.toStarship();

      expect(dShip.range, range);
    });

    test('null bigint', () {
      final range = BigInt.from(10);
      final Starship ship = Starship(range: range, engineNumber: 4);
      final serialized = ship.toJson();

      final deserialized = GStarship.fromJson(serialized);
      final dShip = deserialized.toStarship();

      expect(dShip.odometer, null);
    });

    test('not null bigint', () {
      final range = BigInt.from(10);
      final odometer = BigInt.from(46556565);
      final Starship ship =
          Starship(range: range, engineNumber: 4, odometer: odometer);
      final serialized = ship.toJson();

      final deserialized = GStarship.fromJson(serialized);
      final dShip = deserialized.toStarship();

      expect(dShip.odometer, odometer);
    });
  });
}
