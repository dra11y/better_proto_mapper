import 'package:better_proto_annotations/better_proto_annotations.dart';
import 'package:better_proto_generator_test/grpc/model.pb.dart';
// ignore: unused_import
import 'package:better_proto_generator_test/gtypes.dart';

part 'calc_parameters.g.dart';

@Proto()
class CalcParameters {
  @ProtoField(2)
  final int parameter1;

  @ProtoField(1)
  final int parameter2;

  @ProtoField(3)
  final int? parameter3;

  @ProtoField(4)
  final int? parameter4;

  @ProtoField(9)
  final int parameter5;

  CalcParameters({
    required this.parameter1,
    required this.parameter2,
    required this.parameter3,
    required this.parameter4,
    required this.parameter5,
  });
}
