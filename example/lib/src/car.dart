import 'package:better_proto_annotations/better_proto_annotations.dart';
import 'package:proto_mapper_example/src/grpc/model.pb.dart';
import 'package:proto_mapper_example/src/vehicle.dart';

part 'car.g.dart';

@proto
class Car extends Vehicle {
  Car({
    required super.weight,
    required this.numberOfDoors,
  });

  @ProtoField(2)
  final int numberOfDoors;
}
