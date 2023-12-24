import 'package:better_proto_annotations/better_proto_annotations.dart';
import 'package:better_proto_generator_test/grpc/model.pb.dart';

part 'starship.g.dart';

@Proto()
class Starship {
  @ProtoField(2)
  final BigInt range;
  @ProtoField(3)
  final BigInt? odometer;
  @ProtoField(4)
  final int engineNumber;

  Starship({
    required this.range,
    required this.engineNumber,
    this.odometer,
  });
}
