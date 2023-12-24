import 'package:better_proto_annotations/better_proto_annotations.dart';
import 'package:decimal/decimal.dart';
import 'package:better_proto_generator_test/grpc/model.pb.dart';

import 'abstract_vehicle.dart';

part 'bicycle.g.dart';

@Proto()
class Bicycle extends AbstractVehicle {
  @ProtoField(2)
  final Decimal wheelDiamater;

  @ProtoField(3)
  @override
  final String key;

  Bicycle({
    required this.wheelDiamater,
    required super.weight,
    required this.key,
  });
}
