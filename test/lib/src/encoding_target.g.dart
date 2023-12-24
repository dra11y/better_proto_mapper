// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'encoding_target.dart';

// **************************************************************************
// ProtoMapperGenerator
// **************************************************************************

class $EncodingTargetProtoMapper
    implements ProtoMapper<EncodingTarget, GEncodingTarget> {
  const $EncodingTargetProtoMapper();

  @override
  EncodingTarget fromProto(GEncodingTarget proto) =>
      _$EncodingTargetFromProto(proto);

  @override
  GEncodingTarget toProto(EncodingTarget entity) =>
      _$EncodingTargetToProto(entity);

  GEncodingTarget toFieldsOfProto(EncodingTarget entity) =>
      _$EncodingTargetToProto(entity);

  EncodingTarget fromJson(String json) =>
      _$EncodingTargetFromProto(GEncodingTarget.fromJson(json));
  String toJson(EncodingTarget entity) =>
      _$EncodingTargetToProto(entity).writeToJson();

  String toBase64Proto(EncodingTarget entity) =>
      base64Encode(utf8.encode(entity.toProto().writeToJson()));

  EncodingTarget fromBase64Proto(String base64Proto) =>
      GEncodingTarget.fromJson(utf8.decode(base64Decode(base64Proto)))
          .toEncodingTarget();
}

GEncodingTarget _$EncodingTargetToProto(EncodingTarget instance) {
  var proto = GEncodingTarget();

  if (instance.someValue != null) {
    proto.someValue = instance.someValue!;
  }

  return proto;
}

EncodingTarget _$EncodingTargetFromProto(GEncodingTarget proto) {
  return EncodingTarget(
    someValue: (proto.hasSomeValue() ? proto.someValue : null),
  );
}

extension $EncodingTargetProtoExtension on EncodingTarget {
  GEncodingTarget toProto() => _$EncodingTargetToProto(this);
  String toJson() => _$EncodingTargetToProto(this).writeToJson();

  static EncodingTarget fromProto(GEncodingTarget proto) =>
      _$EncodingTargetFromProto(proto);
  static EncodingTarget fromJson(String json) =>
      _$EncodingTargetFromProto(GEncodingTarget.fromJson(json));
}

extension $GEncodingTargetProtoExtension on GEncodingTarget {
  EncodingTarget toEncodingTarget() => _$EncodingTargetFromProto(this);
}
