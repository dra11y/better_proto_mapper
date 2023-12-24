import 'package:better_proto_annotations/better_proto_annotations.dart';
import 'package:better_proto_generator_test/grpc/model.pb.dart';

part 'calc_result.g.dart';

@Proto()
class CalcResult {
  @ProtoField(2)
  final int result;

  CalcResult({required this.result});
}
