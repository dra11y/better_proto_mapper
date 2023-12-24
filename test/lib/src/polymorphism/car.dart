import 'package:better_proto_annotations/better_proto_annotations.dart';
import 'package:better_proto_generator_test/grpc/model.pb.dart';

import 'vehicle.dart';

part 'car.g.dart';

@Proto()
class Car extends Vehicle {
  Car({
    required this.numberOfDoors,
    required super.weight,
  });

  @ProtoField(2)
  final int numberOfDoors;

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Car && other.numberOfDoors == numberOfDoors;
  }

  @override
  int get hashCode => numberOfDoors.hashCode;
}
