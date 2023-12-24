import 'package:better_proto_annotations/better_proto_annotations.dart';
import 'package:better_proto_generator_test/grpc/model.pb.dart';
import 'package:better_proto_generator_test/src/polymorphism/entity.dart';

import 'bicycle.dart';
import 'scooter.dart';

part 'abstract_vehicle.g.dart';

const knownSubClasses = {Bicycle: 3, Scooter: 4};

@Proto(knownSubClassMap: knownSubClasses)
abstract class AbstractVehicle implements Entity {
  @ProtoField(2)
  final int weight;
  AbstractVehicle({
    required this.weight,
  });

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is AbstractVehicle && other.weight == weight;
  }

  @override
  int get hashCode => weight.hashCode;
}
