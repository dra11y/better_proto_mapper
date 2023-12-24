import 'package:better_proto_annotations/better_proto_annotations.dart';
import 'package:better_proto_generator_test/grpc/model.pb.dart';
import 'package:better_proto_generator_test/src/polymorphism/airplane.dart';
import 'package:better_proto_generator_test/src/polymorphism/balloon.dart';
import 'package:better_proto_generator_test/src/polymorphism/rotorcraft.dart';

import 'entity.dart';
import 'vehicle.dart';

part 'aircraft.g.dart';

const knownSubClasses = {Airplane: 3, Rotorcraft: 4, Balloon: 5};

@Proto(knownSubClassMap: knownSubClasses, superFieldsNumber: 6)
abstract class Aircraft extends Vehicle implements Entity {
  @ProtoField(3)
  final int serviceCeiling;

  @override
  @ProtoField(4)
  final String key;

  Aircraft({
    required this.serviceCeiling,
    required super.weight,
    required this.key,
  });
}
