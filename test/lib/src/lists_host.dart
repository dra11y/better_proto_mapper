import 'package:decimal/decimal.dart';
import 'package:better_proto_annotations/better_proto_annotations.dart';
import 'package:better_proto_generator_test/grpc/model.pb.dart';
// ignore: unused_import
import 'package:better_proto_generator_test/gtypes.dart';
import 'package:better_proto_generator_test/src/appliance_type.dart';

part 'lists_host.g.dart';

@Proto()
class ListsHost {
  @ProtoField(2)
  final List<bool> vbools;
  @ProtoField(3)
  final List<bool>? nvbools;
  @ProtoField(4)
  final List<String> vstrings;
  @ProtoField(5)
  final List<String>? nvstrings;
  @ProtoField(6)
  final List<Duration> vdurations;
  @ProtoField(7)
  final List<Duration>? nvdurations;
  @ProtoField(8)
  final List<DateTime> vdatetimes;
  @ProtoField(9)
  final List<DateTime>? nvdatetimes;
  @ProtoField(10)
  final List<Decimal> vdecimals;
  @ProtoField(11)
  final List<Decimal>? nvdecimals;
  @ProtoField(12)
  final List<int> vints;
  @ProtoField(13)
  final List<int>? nvints;
  @ProtoField(14)
  final List<double> vdoubles;
  @ProtoField(15)
  final List<double>? nvdoubles;
  @ProtoField(16)
  final List<ApplianceType> vapplianceTypes;
  @ProtoField(17)
  final List<ApplianceType>? nvapplianceTypes;

  ListsHost({
    required this.vbools,
    required this.vstrings,
    required this.vdurations,
    required this.vdatetimes,
    required this.vdecimals,
    required this.vints,
    required this.vdoubles,
    required this.vapplianceTypes,
    this.nvbools,
    this.nvstrings,
    this.nvdurations,
    this.nvdatetimes,
    this.nvdecimals,
    this.nvints,
    this.nvdoubles,
    this.nvapplianceTypes,
  });
}
