import 'package:better_proto_annotations/better_proto_annotations.dart';
import 'package:better_proto_generator_test/grpc/model.pbenum.dart';

part 'appliance_type.g.dart';

@Proto()
enum ApplianceType {
  heat,
  cold,
  cutlery,
}
