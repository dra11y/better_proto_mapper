import 'package:better_proto_annotations/better_proto_annotations.dart';
import 'package:proto_mapper_example/src/grpc/model.pb.dart';
// ignore: unused_import
import 'package:proto_mapper_example/src/grpc/google/protobuf/wrappers.pb.dart';
import 'package:proto_mapper_example/src/grpc/google/protobuf/duration.pb.dart'
    as $duration;
import 'package:proto_mapper_example/src/grpc/google/protobuf/timestamp.pb.dart'
    as $timestamp;

part 'ingredient.g.dart';

typedef $Duration = $duration.Duration;
typedef $Timestamp = $timestamp.Timestamp;

@proto
class Ingredient {
  const Ingredient({
    required this.description,
    required this.quantity,
    this.batchSize,
    required this.estimatedPreparationTime,
    required this.expiryDate,
  });

  @ProtoField(2)
  final String description;

  @ProtoField(3)
  final double quantity;

  @ProtoField(4)
  final int? batchSize;

  @ProtoField(5)
  final Duration estimatedPreparationTime;

  @ProtoField(6)
  final DateTime expiryDate;
}
