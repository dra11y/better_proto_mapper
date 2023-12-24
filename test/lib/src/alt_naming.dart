import 'package:better_proto_annotations/better_proto_annotations.dart';
import 'package:better_proto_generator_test/grpc/model.pb.dart';

import 'package:better_proto_generator_test/gtypes.dart';

import 'appliance_type.dart';
import 'empty.dart';
import 'ingredient.dart';

part 'alt_naming.g.dart';

@proto
class AltNaming {
  @ProtoField(19, name: 'UnconventionalName')
  final String unconventionalName;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is AltNaming &&
          runtimeType == other.runtimeType &&
          unconventionalName == other.unconventionalName;

  @override
  int get hashCode => unconventionalName.hashCode;
  @ProtoField(20, name: 'NUnconventionalName')
  final String? nUnconventionalName;

  @ProtoField(21, name: 'UnconventionalEnumName')
  final ApplianceType unconventionalEnumName;

  @ProtoField(22, name: 'NUnconventionalEnumName')
  final ApplianceType? nUnconventionalEnumName;

  @ProtoField(23, name: 'UnconventionalCategory')
  final Empty unconventionalClass;

  @ProtoField(24, name: 'NUnconventionalCategory')
  final Empty? nUnconventionalClass;

  @ProtoField(25, name: 'UnconventionalList')
  final List<Ingredient> unconventionalList;

  @ProtoField(26, name: 'UnconventionalDateTime')
  final DateTime unconventionalDateTime;

  @ProtoField(27, name: 'NUnconventionalDateTime')
  final DateTime? nUnconventionalDateTime;

  @ProtoField(28, name: 'UnconventionalDuration')
  final Duration unconventionalDuration;

  @ProtoField(29, name: 'NUnconventionalDuration')
  final Duration? nUnconventionalDuration;

  const AltNaming({
    required this.unconventionalName,
    this.nUnconventionalName,
    required this.unconventionalEnumName,
    this.nUnconventionalEnumName,
    required this.unconventionalClass,
    this.nUnconventionalClass,
    required this.unconventionalList,
    required this.unconventionalDateTime,
    this.nUnconventionalDateTime,
    required this.unconventionalDuration,
    this.nUnconventionalDuration,
  });
}
