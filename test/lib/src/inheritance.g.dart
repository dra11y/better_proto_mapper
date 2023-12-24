// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'inheritance.dart';

// **************************************************************************
// ProtoMapperGenerator
// **************************************************************************

class $BranchProtoMapper implements ProtoMapper<Branch, GBranch> {
  const $BranchProtoMapper();

  @override
  Branch fromProto(GBranch proto) => _$BranchFromProto(proto);

  @override
  GBranch toProto(Branch entity) => _$BranchToProto(entity);

  GFieldsOfBranch toFieldsOfProto(Branch entity) =>
      _$BranchToFieldsOfProto(entity);

  Branch fromJson(String json) => _$BranchFromProto(GBranch.fromJson(json));
  String toJson(Branch entity) => _$BranchToProto(entity).writeToJson();

  String toBase64Proto(Branch entity) =>
      base64Encode(utf8.encode(entity.toProto().writeToJson()));

  Branch fromBase64Proto(String base64Proto) =>
      GBranch.fromJson(utf8.decode(base64Decode(base64Proto))).toBranch();
}

GFieldsOfBranch _$BranchToFieldsOfProto(Branch instance) {
  final proto = GFieldsOfBranch();

  return proto;
}

GBranch _$BranchToProto(Branch instance) {
  var proto = GBranch();

  if (instance is Twig) {
    proto.twig = (const $TwigProtoMapper()).toProto(instance);
    return proto;
  }

  proto.branch = _$BranchToFieldsOfProto(instance);

  return proto;
}

Branch _$BranchFromProto(GBranch sInstance) {
  if (sInstance.hasTwig()) {
    return sInstance.twig.toTwig();
  }

  final ret = Branch();

  return ret;
}

extension $BranchProtoExtension on Branch {
  GBranch toProto() => _$BranchToProto(this);
  String toJson() => _$BranchToProto(this).writeToJson();

  static Branch fromProto(GBranch proto) => _$BranchFromProto(proto);
  static Branch fromJson(String json) =>
      _$BranchFromProto(GBranch.fromJson(json));
}

extension $GBranchProtoExtension on GBranch {
  Branch toBranch() => _$BranchFromProto(this);
}

class $TwigProtoMapper implements ProtoMapper<Twig, GTwig> {
  const $TwigProtoMapper();

  @override
  Twig fromProto(GTwig proto) => _$TwigFromProto(proto);

  @override
  GTwig toProto(Twig entity) => _$TwigToProto(entity);

  GFieldsOfTwig toFieldsOfProto(Twig entity) => _$TwigToFieldsOfProto(entity);

  Twig fromJson(String json) => _$TwigFromProto(GTwig.fromJson(json));
  String toJson(Twig entity) => _$TwigToProto(entity).writeToJson();

  String toBase64Proto(Twig entity) =>
      base64Encode(utf8.encode(entity.toProto().writeToJson()));

  Twig fromBase64Proto(String base64Proto) =>
      GTwig.fromJson(utf8.decode(base64Decode(base64Proto))).toTwig();
}

GFieldsOfTwig _$TwigToFieldsOfProto(Twig instance) {
  final proto = GFieldsOfTwig();
  proto.fieldsOfSuperClass =
      const $BranchProtoMapper().toFieldsOfProto(instance);

  proto.prop1 = instance.prop1;
  proto.prop2 = instance.prop2;

  return proto;
}

GTwig _$TwigToProto(Twig instance) {
  var proto = GTwig();

  if (instance is Leaf) {
    proto.leaf = (const $LeafProtoMapper()).toProto(instance);
    return proto;
  }

  proto.twig = _$TwigToFieldsOfProto(instance);

  return proto;
}

Twig _$TwigFromProto(GTwig sInstance) {
  if (sInstance.hasLeaf()) {
    return sInstance.leaf.toLeaf();
  }

  final proto = sInstance.twig;
  final ret = Twig(
    prop1: proto.prop1,
  )..prop2 = proto.prop2;

  return ret;
}

extension $TwigProtoExtension on Twig {
  GTwig toProto() => _$TwigToProto(this);
  String toJson() => _$TwigToProto(this).writeToJson();

  static Twig fromProto(GTwig proto) => _$TwigFromProto(proto);
  static Twig fromJson(String json) => _$TwigFromProto(GTwig.fromJson(json));
}

extension $GTwigProtoExtension on GTwig {
  Twig toTwig() => _$TwigFromProto(this);
}

class $LeafProtoMapper implements ProtoMapper<Leaf, GLeaf> {
  const $LeafProtoMapper();

  @override
  Leaf fromProto(GLeaf proto) => _$LeafFromProto(proto);

  @override
  GLeaf toProto(Leaf entity) => _$LeafToProto(entity);

  GLeaf toFieldsOfProto(Leaf entity) => _$LeafToProto(entity);

  Leaf fromJson(String json) => _$LeafFromProto(GLeaf.fromJson(json));
  String toJson(Leaf entity) => _$LeafToProto(entity).writeToJson();

  String toBase64Proto(Leaf entity) =>
      base64Encode(utf8.encode(entity.toProto().writeToJson()));

  Leaf fromBase64Proto(String base64Proto) =>
      GLeaf.fromJson(utf8.decode(base64Decode(base64Proto))).toLeaf();
}

GLeaf _$LeafToProto(Leaf instance) {
  var proto = GLeaf();

  proto.fieldsOfSuperClass = const $TwigProtoMapper().toFieldsOfProto(instance);

  return proto;
}

Leaf _$LeafFromProto(GLeaf proto) {
  return Leaf(
    prop1: proto.fieldsOfSuperClass.prop1,
  )..prop2 = proto.fieldsOfSuperClass.prop2;
}

extension $LeafProtoExtension on Leaf {
  GLeaf toProto() => _$LeafToProto(this);
  String toJson() => _$LeafToProto(this).writeToJson();

  static Leaf fromProto(GLeaf proto) => _$LeafFromProto(proto);
  static Leaf fromJson(String json) => _$LeafFromProto(GLeaf.fromJson(json));
}

extension $GLeafProtoExtension on GLeaf {
  Leaf toLeaf() => _$LeafFromProto(this);
}
