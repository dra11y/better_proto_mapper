import 'package:better_proto_annotations/better_proto_annotations.dart';
import 'package:better_proto_mapper_example/src/models/author.dart';
import 'package:protobuf/protobuf.dart';

import '../generated/grpc/model.pb.dart';

part 'book.g.dart';

@proto
class Book {
  @ProtoField(1)
  final String id;
  @ProtoField(2)
  final String title;
  @ProtoField(3)
  final List<Author> authors;
  @ProtoField(4)
  final DateTime created;
  @ProtoField(5)
  final DateTime updated;

  Book({
    required this.id,
    required this.title,
    required this.authors,
    required this.created,
    required this.updated,
  });
}
