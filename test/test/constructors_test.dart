import 'package:better_proto_generator_test/src/constructors_host.dart';
import 'package:test/test.dart';

void main() {
  group('Constructors', () {
    test('Two late properties, default constructor', () {
      final construct = ConstructObject1()
        ..name = 'Test'
        ..number = 1;
      final proto = construct.toProto();
      final proto2 = proto.toConstructObject1();
      expect(proto2, construct);
      expect(proto2.name, construct.name);
      expect(proto2.number, construct.number);
    });
    test('Unnamed constructor with both (required) args present', () {
      final construct = ConstructObject2('Test', 2);
      final proto = construct.toProto();
      final proto2 = proto.toConstructObject2();
      expect(proto2, construct);
      expect(proto2.name, construct.name);
      expect(proto2.number, construct.number);
    });
    test(
        'Unnamed constructor with unnamed arg, one missing but set by constructor',
        () {
      final construct = ConstructObject3('Test')..number = 1;
      final proto = construct.toProto();
      final proto2 = proto.toConstructObject3();
      expect(proto2, construct);
      expect(proto2.name, construct.name);
      expect(proto2.number, construct.number);
    });
    test('Only one named constructor arg, one missing but set by constructor',
        () {
      final construct = ConstructObject4(name: 'Test')..number = 1;
      final proto = construct.toProto();
      final proto2 = proto.toConstructObject4();
      expect(proto2, construct);
      expect(proto2.name, construct.name);
      expect(proto2.number, construct.number);
    });
    test('Named constructor with unnammed arguments', () {
      final construct = ConstructObject5.name('Test', 1);
      final proto = construct.toProto();
      final proto2 = proto.toConstructObject5();
      expect(proto2, construct);
      expect(proto2.name, construct.name);
      expect(proto2.number, construct.number);
    });
    test('Unnamed constructor, one named optional argument', () {
      final construct = ConstructObject6(name: 'Test')..number = 1;
      final proto = construct.toProto();
      final proto2 = proto.toConstructObject6();
      expect(proto2, construct);
      expect(proto2.name, construct.name);
      expect(proto2.number, construct.number);
    });
    test(
        'Named constructor, unnammed arguments, different order for fields and arguments',
        () {
      final construct = ConstructObject7.name('Test', 1);
      final proto = construct.toProto();
      final proto2 = proto.toConstructObject7();
      expect(proto2, construct);
      expect(proto2.name, construct.name);
      expect(proto2.number, construct.number);
    });
    test('Multiple constructors, only one that covers all the fields', () {
      final construct = ConstructObject8.incomplete('Test');
      final proto = construct.toProto();
      final proto2 = proto.toConstructObject8();
      expect(proto2, construct);
      expect(proto2.name, construct.name);
      expect(proto2.number, construct.number);
    });
  });
}
