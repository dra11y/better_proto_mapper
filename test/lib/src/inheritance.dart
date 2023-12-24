// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:better_proto_annotations/better_proto_annotations.dart';
import 'package:better_proto_generator_test/grpc/model.pb.dart';

part 'inheritance.g.dart';

abstract class Root {
  @ProtoField(2)
  late String name;
}

abstract class Trunk extends Root {}

@Proto(knownSubClassMap: {Twig: 3})
class Branch extends Trunk {}

@Proto(knownSubClassMap: {Leaf: 3})
class Twig extends Branch {
  @ProtoField(2)
  final int prop1;

  @ProtoField(4)
  int prop2 = 0;

  Twig({
    required this.prop1,
  });
}

@Proto()
class Leaf extends Twig {
  Leaf({required super.prop1});
}
