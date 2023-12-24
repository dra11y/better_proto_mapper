import 'package:better_proto_annotations/better_proto_annotations.dart';
import 'package:better_proto_generator_test/grpc/google/protobuf/wrappers.pb.dart';
import 'package:better_proto_generator_test/grpc/model.pb.dart';

part 'encoding_target.g.dart';

@proto
class EncodingTarget {
  @ProtoField(1)
  final int? someValue;

  EncodingTarget({this.someValue});
}
