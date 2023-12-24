import 'package:better_proto_annotations/better_proto_annotations.dart';
import 'package:better_proto_generator_test/grpc/model.pb.dart';

import 'aircraft.dart';
import 'car.dart';

part 'vehicle.g.dart';

const knownSubClasses = {Aircraft: 3, Car: 4};

@Proto(knownSubClassMap: knownSubClasses)
class Vehicle {
  @ProtoField(5)
  final int weight;
  Vehicle({
    required this.weight,
  });

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Vehicle && other.weight == weight;
  }

  @override
  int get hashCode => weight.hashCode;
}
