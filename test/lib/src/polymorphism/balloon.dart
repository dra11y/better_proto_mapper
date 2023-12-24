import 'package:better_proto_annotations/better_proto_annotations.dart';
import 'package:better_proto_generator_test/grpc/model.pb.dart';

import 'aircraft.dart';

part 'balloon.g.dart';

@Proto()
class Balloon implements Aircraft {
  Balloon({
    required this.weight,
    required this.key,
    required this.serviceCeiling,
  });

  @ProtoField(2)
  @override
  final int weight;

  @ProtoField(3)
  @override
  final String key;

  @ProtoField(4)
  @override
  final int serviceCeiling;

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Balloon &&
        other.weight == weight &&
        other.serviceCeiling == serviceCeiling;
  }

  @override
  int get hashCode => weight.hashCode ^ serviceCeiling.hashCode;
}
