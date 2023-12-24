// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'category.dart';

// **************************************************************************
// ProtoMapperGenerator
// **************************************************************************

class $CategoryProtoMapper implements ProtoMapper<Category, GCategory> {
  const $CategoryProtoMapper();

  @override
  Category fromProto(GCategory proto) => _$CategoryFromProto(proto);

  @override
  GCategory toProto(Category entity) => _$CategoryToProto(entity);

  GCategory toFieldsOfProto(Category entity) => _$CategoryToProto(entity);

  Category fromJson(String json) =>
      _$CategoryFromProto(GCategory.fromJson(json));
  String toJson(Category entity) => _$CategoryToProto(entity).writeToJson();

  String toBase64Proto(Category entity) =>
      base64Encode(utf8.encode(entity.toProto().writeToJson()));

  Category fromBase64Proto(String base64Proto) =>
      GCategory.fromJson(utf8.decode(base64Decode(base64Proto))).toCategory();
}

GCategory _$CategoryToProto(Category instance) {
  var proto = GCategory();

  proto.title = instance.title;
  proto.mainComponent =
      const $ComponentProtoMapper().toProto(instance.mainComponent);
  if (instance.alternativeComponent != null) {
    proto.alternativeComponent =
        const $ComponentProtoMapper().toProto(instance.alternativeComponent!);
  }

  proto.otherComponents.addAll(instance.otherComponents
      .map((e) => const $ComponentProtoMapper().toProto(e)));

  proto.secondaryComponents.addAll(instance.secondaryComponents
          ?.map((e) => const $ComponentProtoMapper().toProto(e)) ??
      []);

  return proto;
}

Category _$CategoryFromProto(GCategory proto) {
  return Category(
    title: proto.title,
    mainComponent: const $ComponentProtoMapper().fromProto(proto.mainComponent),
    otherComponents: List<Component>.unmodifiable(proto.otherComponents
        .map((e) => const $ComponentProtoMapper().fromProto(e))),
    alternativeComponent: (proto.hasAlternativeComponent()
        ? const $ComponentProtoMapper().fromProto(proto.alternativeComponent)
        : null),
    secondaryComponents: List<Component>.unmodifiable(proto.secondaryComponents
        .map((e) => const $ComponentProtoMapper().fromProto(e))),
  );
}

extension $CategoryProtoExtension on Category {
  GCategory toProto() => _$CategoryToProto(this);
  String toJson() => _$CategoryToProto(this).writeToJson();

  static Category fromProto(GCategory proto) => _$CategoryFromProto(proto);
  static Category fromJson(String json) =>
      _$CategoryFromProto(GCategory.fromJson(json));
}

extension $GCategoryProtoExtension on GCategory {
  Category toCategory() => _$CategoryFromProto(this);
}
