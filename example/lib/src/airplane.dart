import 'package:better_proto_annotations/better_proto_annotations.dart';
import 'package:proto_mapper_example/src/grpc/model.pb.dart';

import 'vehicle.dart';

part 'airplane.g.dart';

@proto
class Airplane extends Vehicle {
  Airplane({
    required super.weight,
    required this.registration,
    required this.serviceCeiling,
  });

  @ProtoField(2)
  final String registration;

  @ProtoField(3)
  final int serviceCeiling;
}
