import 'package:better_proto_annotations/better_proto_annotations.dart';
import 'package:better_proto_generator_test/grpc/model.pb.dart';

import 'rotorcraft.dart';

part 'helicopter.g.dart';

@Proto()
class Helicopter extends Rotorcraft {
  Helicopter({
    required super.weight,
    required super.serviceCeiling,
    required super.key,
  });
}
