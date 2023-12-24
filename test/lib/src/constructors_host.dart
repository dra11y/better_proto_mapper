import 'package:better_proto_annotations/better_proto_annotations.dart';
import 'package:better_proto_generator_test/grpc/model.pb.dart';
// ignore: unused_import
import 'package:better_proto_generator_test/gtypes.dart';

part 'constructors_host.g.dart';

@Proto()
class ConstructObject1 {
  @ProtoField(2)
  late String name;

  @ProtoField(3)
  late int number;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ConstructObject1 &&
          runtimeType == other.runtimeType &&
          name == other.name &&
          number == other.number;

  @override
  int get hashCode => name.hashCode ^ number.hashCode;

  @override
  String toString() {
    return 'ConstructObject1{name: $name, number: $number}';
  }
}

@Proto()
class ConstructObject2 {
  @ProtoField(2)
  String name;

  @ProtoField(3)
  int number;

  ConstructObject2(this.name, this.number);

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ConstructObject2 &&
          runtimeType == other.runtimeType &&
          name == other.name &&
          number == other.number;

  @override
  int get hashCode => name.hashCode ^ number.hashCode;

  @override
  String toString() {
    return 'ConstructObject2{name: $name, number: $number}';
  }
}

@Proto()
class ConstructObject3 {
  @ProtoField(2)
  final String name;

  @ProtoField(3)
  int number;

  ConstructObject3(this.name) : number = 3;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ConstructObject3 &&
          runtimeType == other.runtimeType &&
          name == other.name &&
          number == other.number;

  @override
  int get hashCode => name.hashCode ^ number.hashCode;

  @override
  String toString() {
    return 'ConstructObject3{name: $name, number: $number}';
  }
}

@Proto()
class ConstructObject4 {
  @ProtoField(2)
  final String name;

  @ProtoField(3)
  int number;

  ConstructObject4({required this.name}) : number = 2;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ConstructObject4 &&
          runtimeType == other.runtimeType &&
          name == other.name &&
          number == other.number;

  @override
  int get hashCode => name.hashCode ^ number.hashCode;

  @override
  String toString() {
    return 'ConstructObject4{name: $name, number: $number}';
  }
}

@Proto()
class ConstructObject5 {
  @ProtoField(2)
  final String name;

  @ProtoField(3)
  final int number;

  ConstructObject5.name(this.name, this.number);

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ConstructObject5 &&
          runtimeType == other.runtimeType &&
          name == other.name &&
          number == other.number;

  @override
  int get hashCode => name.hashCode ^ number.hashCode;

  @override
  String toString() {
    return 'ConstructObject5{name: $name, number: $number}';
  }
}

@Proto()
class ConstructObject6 {
  @ProtoField(2)
  final String? name;

  @ProtoField(3)
  int? number;

  ConstructObject6({this.name});

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ConstructObject6 &&
          runtimeType == other.runtimeType &&
          name == other.name &&
          number == other.number;

  @override
  int get hashCode => name.hashCode ^ number.hashCode;

  @override
  String toString() {
    return 'ConstructObject6{name: $name, number: $number}';
  }
}

@Proto()
class ConstructObject7 {
  @ProtoField(2)
  final int? number;

  @ProtoField(3)
  final String name;

  ConstructObject7.name(this.name, this.number);

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ConstructObject7 &&
          runtimeType == other.runtimeType &&
          name == other.name &&
          number == other.number;

  @override
  int get hashCode => name.hashCode ^ number.hashCode;

  @override
  String toString() {
    return 'ConstructObject7{name: $name, number: $number}';
  }
}

@Proto()
class ConstructObject8 {
  @ProtoField(2)
  final int? number;

  @ProtoField(3)
  final String name;

  ConstructObject8.incomplete(this.name) : number = 1;

  ConstructObject8.incomplete2(this.number) : name = 'final';

  ConstructObject8.complete(this.number, this.name);

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ConstructObject8 &&
          runtimeType == other.runtimeType &&
          name == other.name &&
          number == other.number;

  @override
  int get hashCode => name.hashCode ^ number.hashCode;

  @override
  String toString() {
    return 'ConstructObject8{name: $name, number: $number}';
  }
}
