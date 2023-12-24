import 'package:better_proto_annotations/better_proto_annotations.dart';
import 'package:better_proto_generator_test/grpc/model.pb.dart';

part 'component.g.dart';

@Proto()
class Component {
  @ProtoField(2)
  final String description;

  Component({
    required this.description,
  });
}
