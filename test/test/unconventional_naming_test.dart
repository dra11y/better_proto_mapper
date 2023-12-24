import 'package:better_proto_generator_test/src/alt_naming.dart';
import 'package:better_proto_generator_test/src/appliance_type.dart';
import 'package:better_proto_generator_test/src/empty.dart';
import 'package:test/test.dart';

void main() {
  group('unconventional naming test', () {
    test('instanciate and map unconventional named properties', () {
      final a = AltNaming(
        unconventionalName: 'un',
        unconventionalEnumName: ApplianceType.cold,
        unconventionalClass: Empty(),
        unconventionalList: [],
        unconventionalDateTime: DateTime(2022),
        unconventionalDuration: Duration(minutes: 1),
      );
      final p = a.toProto();
      final a2 = p.toAltNaming();

      expect(a2, a);
    });
  });
}
