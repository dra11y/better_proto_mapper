// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'book.dart';

// **************************************************************************
// ProtoMapperGenerator
// **************************************************************************

class $BookProtoMapper implements ProtoMapper<Book, GBook> {
  const $BookProtoMapper();

  @override
  Book fromProto(GBook proto) => _$BookFromProto(proto);

  @override
  GBook toProto(Book entity) => _$BookToProto(entity);

  GBook toFieldsOfProto(Book entity) => _$BookToProto(entity);

  Book fromProto3Json(Object? json,
          {TypeRegistry typeRegistry = const TypeRegistry.empty()}) =>
      (GBook()..mergeFromProto3Json(json, typeRegistry: typeRegistry)).toBook();
}

GBook _$BookToProto(Book instance) {
  var proto = GBook();

  proto.id = instance.id;
  proto.title = instance.title;
  proto.authors.addAll(
      instance.authors.map((e) => const $AuthorProtoMapper().toProto(e)));

  proto.created = instance.created;
  proto.updated = instance.updated;

  return proto;
}

Book _$BookFromProto(GBook proto) {
  return Book(
    id: proto.id!,
    title: proto.title!,
    authors: List<Author>.unmodifiable(
        proto.authors.map((e) => const $AuthorProtoMapper().fromProto(e))),
    created: proto.created!,
    updated: proto.updated!,
  );
}

extension $BookExtension on Book {
  GBook toProto() => _$BookToProto(this);
  Object? toProto3Json(
          {TypeRegistry typeRegistry = const TypeRegistry.empty()}) =>
      toProto().toProto3Json(typeRegistry: typeRegistry);
}

extension $GBookProtoExtension on GBook {
  Book toBook() => _$BookFromProto(this);
}
