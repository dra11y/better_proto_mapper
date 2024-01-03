// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'author.dart';

// **************************************************************************
// ProtoMapperGenerator
// **************************************************************************

class $AuthorProtoMapper implements ProtoMapper<Author, GAuthor> {
  const $AuthorProtoMapper();

  @override
  Author fromProto(GAuthor proto) => _$AuthorFromProto(proto);

  @override
  GAuthor toProto(Author entity) => _$AuthorToProto(entity);

  GAuthor toFieldsOfProto(Author entity) => _$AuthorToProto(entity);

  Author fromProto3Json(Object? json,
          {TypeRegistry typeRegistry = const TypeRegistry.empty()}) =>
      (GAuthor()..mergeFromProto3Json(json, typeRegistry: typeRegistry))
          .toAuthor();
}

GAuthor _$AuthorToProto(Author instance) {
  var proto = GAuthor();

  proto.id = instance.id;
  proto.firstName = instance.firstName;
  proto.lastName = instance.lastName;
  proto.books
      .addAll(instance.books.map((e) => const $BookProtoMapper().toProto(e)));

  proto.created = instance.created;
  proto.updated = instance.updated;

  return proto;
}

Author _$AuthorFromProto(GAuthor proto) {
  return Author(
    id: proto.id!,
    firstName: proto.firstName!,
    lastName: proto.lastName!,
    books: List<Book>.unmodifiable(
        proto.books.map((e) => const $BookProtoMapper().fromProto(e))),
    created: proto.created!,
    updated: proto.updated!,
  );
}

extension $AuthorExtension on Author {
  GAuthor toProto() => _$AuthorToProto(this);
  Object? toProto3Json(
          {TypeRegistry typeRegistry = const TypeRegistry.empty()}) =>
      toProto().toProto3Json(typeRegistry: typeRegistry);
}

extension $GAuthorProtoExtension on GAuthor {
  Author toAuthor() => _$AuthorFromProto(this);
}
