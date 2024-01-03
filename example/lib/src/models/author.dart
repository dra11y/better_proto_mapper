import 'package:better_proto_annotations/better_proto_annotations.dart';
import 'package:better_proto_mapper_example/src/models/book.dart';
import 'package:protobuf/protobuf.dart';

import '../generated/grpc/model.pb.dart';

part 'author.g.dart';

@proto
class Author {
  @ProtoField(1)
  final String id;
  @ProtoField(2)
  final String firstName;
  @ProtoField(3)
  final String lastName;

  @ProtoField(4)
  final List<Book> books;

  @ProtoField(5)
  final DateTime created;
  @ProtoField(6)
  final DateTime updated;

  Author({
    required this.id,
    required this.firstName,
    required this.lastName,
    required this.books,
    required this.created,
    required this.updated,
  });
}
