// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'abstract_missing_subclass.dart';

// **************************************************************************
// ProtoMapperGenerator
// **************************************************************************

class $AbstractParentClass1ProtoMapper
    implements ProtoMapper<AbstractParentClass1, GAbstractParentClass1> {
  const $AbstractParentClass1ProtoMapper();

  @override
  AbstractParentClass1 fromProto(GAbstractParentClass1 proto) =>
      _$AbstractParentClass1FromProto(proto);

  @override
  GAbstractParentClass1 toProto(AbstractParentClass1 entity) =>
      _$AbstractParentClass1ToProto(entity);

  GAbstractParentClass1 toFieldsOfProto(AbstractParentClass1 entity) =>
      _$AbstractParentClass1ToProto(entity);

  AbstractParentClass1 fromJson(String json) =>
      _$AbstractParentClass1FromProto(GAbstractParentClass1.fromJson(json));
  String toJson(AbstractParentClass1 entity) =>
      _$AbstractParentClass1ToProto(entity).writeToJson();

  String toBase64Proto(AbstractParentClass1 entity) =>
      base64Encode(utf8.encode(entity.toProto().writeToJson()));

  AbstractParentClass1 fromBase64Proto(String base64Proto) =>
      GAbstractParentClass1.fromJson(utf8.decode(base64Decode(base64Proto)))
          .toAbstractParentClass1();
}

GAbstractParentClass1 _$AbstractParentClass1ToProto(
    AbstractParentClass1 instance) {
  var proto = GAbstractParentClass1();

  return proto;
}

AbstractParentClass1 _$AbstractParentClass1FromProto(
    GAbstractParentClass1 proto) {
  throw UnimplementedError();
}

extension $AbstractParentClass1ProtoExtension on AbstractParentClass1 {
  GAbstractParentClass1 toProto() => _$AbstractParentClass1ToProto(this);
  String toJson() => _$AbstractParentClass1ToProto(this).writeToJson();

  static AbstractParentClass1 fromProto(GAbstractParentClass1 proto) =>
      _$AbstractParentClass1FromProto(proto);
  static AbstractParentClass1 fromJson(String json) =>
      _$AbstractParentClass1FromProto(GAbstractParentClass1.fromJson(json));
}

extension $GAbstractParentClass1ProtoExtension on GAbstractParentClass1 {
  AbstractParentClass1 toAbstractParentClass1() =>
      _$AbstractParentClass1FromProto(this);
}

class $AbstractParentClass2ProtoMapper
    implements ProtoMapper<AbstractParentClass2, GAbstractParentClass2> {
  const $AbstractParentClass2ProtoMapper();

  @override
  AbstractParentClass2 fromProto(GAbstractParentClass2 proto) =>
      _$AbstractParentClass2FromProto(proto);

  @override
  GAbstractParentClass2 toProto(AbstractParentClass2 entity) =>
      _$AbstractParentClass2ToProto(entity);

  GFieldsOfAbstractParentClass2 toFieldsOfProto(AbstractParentClass2 entity) =>
      _$AbstractParentClass2ToFieldsOfProto(entity);

  AbstractParentClass2 fromJson(String json) =>
      _$AbstractParentClass2FromProto(GAbstractParentClass2.fromJson(json));
  String toJson(AbstractParentClass2 entity) =>
      _$AbstractParentClass2ToProto(entity).writeToJson();

  String toBase64Proto(AbstractParentClass2 entity) =>
      base64Encode(utf8.encode(entity.toProto().writeToJson()));

  AbstractParentClass2 fromBase64Proto(String base64Proto) =>
      GAbstractParentClass2.fromJson(utf8.decode(base64Decode(base64Proto)))
          .toAbstractParentClass2();
}

GFieldsOfAbstractParentClass2 _$AbstractParentClass2ToFieldsOfProto(
    AbstractParentClass2 instance) {
  final proto = GFieldsOfAbstractParentClass2();

  return proto;
}

GAbstractParentClass2 _$AbstractParentClass2ToProto(
    AbstractParentClass2 instance) {
  var proto = GAbstractParentClass2();

  if (instance is SubClass1) {
    proto.subClass1 = (const $SubClass1ProtoMapper()).toProto(instance);
    return proto;
  }

  proto.abstractParentClass2 = _$AbstractParentClass2ToFieldsOfProto(instance);

  return proto;
}

AbstractParentClass2 _$AbstractParentClass2FromProto(
    GAbstractParentClass2 sInstance) {
  if (sInstance.hasSubClass1()) {
    return sInstance.subClass1.toSubClass1();
  }

  throw UnimplementedError();
}

extension $AbstractParentClass2ProtoExtension on AbstractParentClass2 {
  GAbstractParentClass2 toProto() => _$AbstractParentClass2ToProto(this);
  String toJson() => _$AbstractParentClass2ToProto(this).writeToJson();

  static AbstractParentClass2 fromProto(GAbstractParentClass2 proto) =>
      _$AbstractParentClass2FromProto(proto);
  static AbstractParentClass2 fromJson(String json) =>
      _$AbstractParentClass2FromProto(GAbstractParentClass2.fromJson(json));
}

extension $GAbstractParentClass2ProtoExtension on GAbstractParentClass2 {
  AbstractParentClass2 toAbstractParentClass2() =>
      _$AbstractParentClass2FromProto(this);
}

class $SubClass1ProtoMapper implements ProtoMapper<SubClass1, GSubClass1> {
  const $SubClass1ProtoMapper();

  @override
  SubClass1 fromProto(GSubClass1 proto) => _$SubClass1FromProto(proto);

  @override
  GSubClass1 toProto(SubClass1 entity) => _$SubClass1ToProto(entity);

  GSubClass1 toFieldsOfProto(SubClass1 entity) => _$SubClass1ToProto(entity);

  SubClass1 fromJson(String json) =>
      _$SubClass1FromProto(GSubClass1.fromJson(json));
  String toJson(SubClass1 entity) => _$SubClass1ToProto(entity).writeToJson();

  String toBase64Proto(SubClass1 entity) =>
      base64Encode(utf8.encode(entity.toProto().writeToJson()));

  SubClass1 fromBase64Proto(String base64Proto) =>
      GSubClass1.fromJson(utf8.decode(base64Decode(base64Proto))).toSubClass1();
}

GSubClass1 _$SubClass1ToProto(SubClass1 instance) {
  var proto = GSubClass1();

  proto.fieldsOfSuperClass =
      const $AbstractParentClass2ProtoMapper().toFieldsOfProto(instance);

  return proto;
}

SubClass1 _$SubClass1FromProto(GSubClass1 proto) {
  return SubClass1();
}

extension $SubClass1ProtoExtension on SubClass1 {
  GSubClass1 toProto() => _$SubClass1ToProto(this);
  String toJson() => _$SubClass1ToProto(this).writeToJson();

  static SubClass1 fromProto(GSubClass1 proto) => _$SubClass1FromProto(proto);
  static SubClass1 fromJson(String json) =>
      _$SubClass1FromProto(GSubClass1.fromJson(json));
}

extension $GSubClass1ProtoExtension on GSubClass1 {
  SubClass1 toSubClass1() => _$SubClass1FromProto(this);
}
