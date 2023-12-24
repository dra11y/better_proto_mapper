import 'package:better_proto_annotations/better_proto_annotations.dart';
import 'package:better_proto_generator_test/grpc/model.pb.dart';

import 'aircraft.dart';

part 'airplane.g.dart';

@Proto()
class Airplane extends Aircraft {
  Airplane({
    required super.weight,
    required super.serviceCeiling,
    required this.wingspan,
    required super.key,
  });

  @ProtoField(2)
  final int wingspan;

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Airplane && other.wingspan == wingspan;
  }

  @override
  int get hashCode => wingspan.hashCode;
}
