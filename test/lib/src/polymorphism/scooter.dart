import 'package:better_proto_annotations/better_proto_annotations.dart';
import 'package:better_proto_generator_test/grpc/model.pb.dart';

import 'abstract_vehicle.dart';

part 'scooter.g.dart';

@Proto()
class Scooter extends AbstractVehicle {
  @ProtoField(2)
  @override
  final String key;

  Scooter({
    required super.weight,
    required this.key,
  });
}
