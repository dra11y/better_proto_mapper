// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'encapsulation.dart';

// **************************************************************************
// ProtoMapperGenerator
// **************************************************************************

class $EncapsulatedFieldsClassProtoMapper
    implements ProtoMapper<EncapsulatedFieldsClass, GEncapsulatedFieldsClass> {
  const $EncapsulatedFieldsClassProtoMapper();

  @override
  EncapsulatedFieldsClass fromProto(GEncapsulatedFieldsClass proto) =>
      _$EncapsulatedFieldsClassFromProto(proto);

  @override
  GEncapsulatedFieldsClass toProto(EncapsulatedFieldsClass entity) =>
      _$EncapsulatedFieldsClassToProto(entity);

  GEncapsulatedFieldsClass toFieldsOfProto(EncapsulatedFieldsClass entity) =>
      _$EncapsulatedFieldsClassToProto(entity);

  EncapsulatedFieldsClass fromJson(String json) =>
      _$EncapsulatedFieldsClassFromProto(
          GEncapsulatedFieldsClass.fromJson(json));
  String toJson(EncapsulatedFieldsClass entity) =>
      _$EncapsulatedFieldsClassToProto(entity).writeToJson();

  String toBase64Proto(EncapsulatedFieldsClass entity) =>
      base64Encode(utf8.encode(entity.toProto().writeToJson()));

  EncapsulatedFieldsClass fromBase64Proto(String base64Proto) =>
      GEncapsulatedFieldsClass.fromJson(utf8.decode(base64Decode(base64Proto)))
          .toEncapsulatedFieldsClass();
}

GEncapsulatedFieldsClass _$EncapsulatedFieldsClassToProto(
    EncapsulatedFieldsClass instance) {
  var proto = GEncapsulatedFieldsClass();

  proto.finalString = instance.finalString;
  proto.encapsulatedString = instance.encapsulatedString;

  return proto;
}

EncapsulatedFieldsClass _$EncapsulatedFieldsClassFromProto(
    GEncapsulatedFieldsClass proto) {
  return EncapsulatedFieldsClass(
    finalString: proto.finalString,
    encapsulatedString: proto.encapsulatedString,
  );
}

extension $EncapsulatedFieldsClassProtoExtension on EncapsulatedFieldsClass {
  GEncapsulatedFieldsClass toProto() => _$EncapsulatedFieldsClassToProto(this);
  String toJson() => _$EncapsulatedFieldsClassToProto(this).writeToJson();

  static EncapsulatedFieldsClass fromProto(GEncapsulatedFieldsClass proto) =>
      _$EncapsulatedFieldsClassFromProto(proto);
  static EncapsulatedFieldsClass fromJson(String json) =>
      _$EncapsulatedFieldsClassFromProto(
          GEncapsulatedFieldsClass.fromJson(json));
}

extension $GEncapsulatedFieldsClassProtoExtension on GEncapsulatedFieldsClass {
  EncapsulatedFieldsClass toEncapsulatedFieldsClass() =>
      _$EncapsulatedFieldsClassFromProto(this);
}
