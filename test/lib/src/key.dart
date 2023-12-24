import 'package:better_proto_annotations/better_proto_annotations.dart';
import 'package:better_proto_generator_test/grpc/model.pb.dart';

part 'key.g.dart';

@Proto()
class Key {
  @ProtoField(2)
  final String key;
  const Key({
    required this.key,
  });
}
