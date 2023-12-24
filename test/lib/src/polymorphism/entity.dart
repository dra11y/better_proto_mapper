import 'package:better_proto_annotations/better_proto_annotations.dart';
import 'package:better_proto_generator_test/grpc/model.pb.dart';

part 'entity.g.dart';

@Proto()
class Entity {
  @ProtoField(2)
  final String key;

  Entity({
    required this.key,
  });
}
