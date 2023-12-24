///
//  Generated code. Do not modify.
//  source: othermodel.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'google/protobuf/wrappers.pb.dart' as $0;
import 'google/protobuf/timestamp.pb.dart' as $1;
import 'google/protobuf/duration.pb.dart' as $2;

import 'othermodel.pbenum.dart';

export 'othermodel.pbenum.dart';

class GFieldsOfAbstractVehicle extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GFieldsOfAbstractVehicle', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'com.company.project'), createEmptyInstance: create)
    ..a<$core.int>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'weight', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  GFieldsOfAbstractVehicle._() : super();
  factory GFieldsOfAbstractVehicle({
    $core.int? weight,
  }) {
    final _result = create();
    if (weight != null) {
      _result.weight = weight;
    }
    return _result;
  }
  factory GFieldsOfAbstractVehicle.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GFieldsOfAbstractVehicle.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GFieldsOfAbstractVehicle clone() => GFieldsOfAbstractVehicle()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GFieldsOfAbstractVehicle copyWith(void Function(GFieldsOfAbstractVehicle) updates) => super.copyWith((message) => updates(message as GFieldsOfAbstractVehicle)) as GFieldsOfAbstractVehicle; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GFieldsOfAbstractVehicle create() => GFieldsOfAbstractVehicle._();
  GFieldsOfAbstractVehicle createEmptyInstance() => create();
  static $pb.PbList<GFieldsOfAbstractVehicle> createRepeated() => $pb.PbList<GFieldsOfAbstractVehicle>();
  @$core.pragma('dart2js:noInline')
  static GFieldsOfAbstractVehicle getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GFieldsOfAbstractVehicle>(create);
  static GFieldsOfAbstractVehicle? _defaultInstance;

  @$pb.TagNumber(2)
  $core.int get weight => $_getIZ(0);
  @$pb.TagNumber(2)
  set weight($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(2)
  $core.bool hasWeight() => $_has(0);
  @$pb.TagNumber(2)
  void clearWeight() => clearField(2);
}

enum GAbstractVehicle_Props {
  abstractVehicle, 
  bicycle, 
  scooter, 
  notSet
}

class GAbstractVehicle extends $pb.GeneratedMessage {
  static const $core.Map<$core.int, GAbstractVehicle_Props> _GAbstractVehicle_PropsByTag = {
    1 : GAbstractVehicle_Props.abstractVehicle,
    3 : GAbstractVehicle_Props.bicycle,
    4 : GAbstractVehicle_Props.scooter,
    0 : GAbstractVehicle_Props.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GAbstractVehicle', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'com.company.project'), createEmptyInstance: create)
    ..oo(0, [1, 3, 4])
    ..aOM<GFieldsOfAbstractVehicle>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'abstractVehicle', subBuilder: GFieldsOfAbstractVehicle.create)
    ..aOM<GBicycle>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'bicycle', subBuilder: GBicycle.create)
    ..aOM<GScooter>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'scooter', subBuilder: GScooter.create)
    ..hasRequiredFields = false
  ;

  GAbstractVehicle._() : super();
  factory GAbstractVehicle({
    GFieldsOfAbstractVehicle? abstractVehicle,
    GBicycle? bicycle,
    GScooter? scooter,
  }) {
    final _result = create();
    if (abstractVehicle != null) {
      _result.abstractVehicle = abstractVehicle;
    }
    if (bicycle != null) {
      _result.bicycle = bicycle;
    }
    if (scooter != null) {
      _result.scooter = scooter;
    }
    return _result;
  }
  factory GAbstractVehicle.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GAbstractVehicle.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GAbstractVehicle clone() => GAbstractVehicle()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GAbstractVehicle copyWith(void Function(GAbstractVehicle) updates) => super.copyWith((message) => updates(message as GAbstractVehicle)) as GAbstractVehicle; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GAbstractVehicle create() => GAbstractVehicle._();
  GAbstractVehicle createEmptyInstance() => create();
  static $pb.PbList<GAbstractVehicle> createRepeated() => $pb.PbList<GAbstractVehicle>();
  @$core.pragma('dart2js:noInline')
  static GAbstractVehicle getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GAbstractVehicle>(create);
  static GAbstractVehicle? _defaultInstance;

  GAbstractVehicle_Props whichProps() => _GAbstractVehicle_PropsByTag[$_whichOneof(0)]!;
  void clearProps() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  GFieldsOfAbstractVehicle get abstractVehicle => $_getN(0);
  @$pb.TagNumber(1)
  set abstractVehicle(GFieldsOfAbstractVehicle v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasAbstractVehicle() => $_has(0);
  @$pb.TagNumber(1)
  void clearAbstractVehicle() => clearField(1);
  @$pb.TagNumber(1)
  GFieldsOfAbstractVehicle ensureAbstractVehicle() => $_ensure(0);

  @$pb.TagNumber(3)
  GBicycle get bicycle => $_getN(1);
  @$pb.TagNumber(3)
  set bicycle(GBicycle v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasBicycle() => $_has(1);
  @$pb.TagNumber(3)
  void clearBicycle() => clearField(3);
  @$pb.TagNumber(3)
  GBicycle ensureBicycle() => $_ensure(1);

  @$pb.TagNumber(4)
  GScooter get scooter => $_getN(2);
  @$pb.TagNumber(4)
  set scooter(GScooter v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasScooter() => $_has(2);
  @$pb.TagNumber(4)
  void clearScooter() => clearField(4);
  @$pb.TagNumber(4)
  GScooter ensureScooter() => $_ensure(2);
}

class GFieldsOfAircraft extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GFieldsOfAircraft', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'com.company.project'), createEmptyInstance: create)
    ..a<$core.int>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'serviceCeiling', $pb.PbFieldType.O3)
    ..aOS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'key')
    ..aOM<GFieldsOfVehicle>(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'fieldsOfSuperClass', protoName: 'fieldsOfSuperClass', subBuilder: GFieldsOfVehicle.create)
    ..hasRequiredFields = false
  ;

  GFieldsOfAircraft._() : super();
  factory GFieldsOfAircraft({
    $core.int? serviceCeiling,
    $core.String? key,
    GFieldsOfVehicle? fieldsOfSuperClass,
  }) {
    final _result = create();
    if (serviceCeiling != null) {
      _result.serviceCeiling = serviceCeiling;
    }
    if (key != null) {
      _result.key = key;
    }
    if (fieldsOfSuperClass != null) {
      _result.fieldsOfSuperClass = fieldsOfSuperClass;
    }
    return _result;
  }
  factory GFieldsOfAircraft.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GFieldsOfAircraft.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GFieldsOfAircraft clone() => GFieldsOfAircraft()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GFieldsOfAircraft copyWith(void Function(GFieldsOfAircraft) updates) => super.copyWith((message) => updates(message as GFieldsOfAircraft)) as GFieldsOfAircraft; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GFieldsOfAircraft create() => GFieldsOfAircraft._();
  GFieldsOfAircraft createEmptyInstance() => create();
  static $pb.PbList<GFieldsOfAircraft> createRepeated() => $pb.PbList<GFieldsOfAircraft>();
  @$core.pragma('dart2js:noInline')
  static GFieldsOfAircraft getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GFieldsOfAircraft>(create);
  static GFieldsOfAircraft? _defaultInstance;

  @$pb.TagNumber(3)
  $core.int get serviceCeiling => $_getIZ(0);
  @$pb.TagNumber(3)
  set serviceCeiling($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(3)
  $core.bool hasServiceCeiling() => $_has(0);
  @$pb.TagNumber(3)
  void clearServiceCeiling() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get key => $_getSZ(1);
  @$pb.TagNumber(4)
  set key($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(4)
  $core.bool hasKey() => $_has(1);
  @$pb.TagNumber(4)
  void clearKey() => clearField(4);

  @$pb.TagNumber(6)
  GFieldsOfVehicle get fieldsOfSuperClass => $_getN(2);
  @$pb.TagNumber(6)
  set fieldsOfSuperClass(GFieldsOfVehicle v) { setField(6, v); }
  @$pb.TagNumber(6)
  $core.bool hasFieldsOfSuperClass() => $_has(2);
  @$pb.TagNumber(6)
  void clearFieldsOfSuperClass() => clearField(6);
  @$pb.TagNumber(6)
  GFieldsOfVehicle ensureFieldsOfSuperClass() => $_ensure(2);
}

enum GAircraft_Props {
  aircraft, 
  airplane, 
  rotorcraft, 
  balloon, 
  notSet
}

class GAircraft extends $pb.GeneratedMessage {
  static const $core.Map<$core.int, GAircraft_Props> _GAircraft_PropsByTag = {
    1 : GAircraft_Props.aircraft,
    3 : GAircraft_Props.airplane,
    4 : GAircraft_Props.rotorcraft,
    5 : GAircraft_Props.balloon,
    0 : GAircraft_Props.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GAircraft', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'com.company.project'), createEmptyInstance: create)
    ..oo(0, [1, 3, 4, 5])
    ..aOM<GFieldsOfAircraft>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'aircraft', subBuilder: GFieldsOfAircraft.create)
    ..aOM<GAirplane>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'airplane', subBuilder: GAirplane.create)
    ..aOM<GRotorcraft>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'rotorcraft', subBuilder: GRotorcraft.create)
    ..aOM<GBalloon>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'balloon', subBuilder: GBalloon.create)
    ..hasRequiredFields = false
  ;

  GAircraft._() : super();
  factory GAircraft({
    GFieldsOfAircraft? aircraft,
    GAirplane? airplane,
    GRotorcraft? rotorcraft,
    GBalloon? balloon,
  }) {
    final _result = create();
    if (aircraft != null) {
      _result.aircraft = aircraft;
    }
    if (airplane != null) {
      _result.airplane = airplane;
    }
    if (rotorcraft != null) {
      _result.rotorcraft = rotorcraft;
    }
    if (balloon != null) {
      _result.balloon = balloon;
    }
    return _result;
  }
  factory GAircraft.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GAircraft.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GAircraft clone() => GAircraft()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GAircraft copyWith(void Function(GAircraft) updates) => super.copyWith((message) => updates(message as GAircraft)) as GAircraft; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GAircraft create() => GAircraft._();
  GAircraft createEmptyInstance() => create();
  static $pb.PbList<GAircraft> createRepeated() => $pb.PbList<GAircraft>();
  @$core.pragma('dart2js:noInline')
  static GAircraft getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GAircraft>(create);
  static GAircraft? _defaultInstance;

  GAircraft_Props whichProps() => _GAircraft_PropsByTag[$_whichOneof(0)]!;
  void clearProps() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  GFieldsOfAircraft get aircraft => $_getN(0);
  @$pb.TagNumber(1)
  set aircraft(GFieldsOfAircraft v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasAircraft() => $_has(0);
  @$pb.TagNumber(1)
  void clearAircraft() => clearField(1);
  @$pb.TagNumber(1)
  GFieldsOfAircraft ensureAircraft() => $_ensure(0);

  @$pb.TagNumber(3)
  GAirplane get airplane => $_getN(1);
  @$pb.TagNumber(3)
  set airplane(GAirplane v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasAirplane() => $_has(1);
  @$pb.TagNumber(3)
  void clearAirplane() => clearField(3);
  @$pb.TagNumber(3)
  GAirplane ensureAirplane() => $_ensure(1);

  @$pb.TagNumber(4)
  GRotorcraft get rotorcraft => $_getN(2);
  @$pb.TagNumber(4)
  set rotorcraft(GRotorcraft v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasRotorcraft() => $_has(2);
  @$pb.TagNumber(4)
  void clearRotorcraft() => clearField(4);
  @$pb.TagNumber(4)
  GRotorcraft ensureRotorcraft() => $_ensure(2);

  @$pb.TagNumber(5)
  GBalloon get balloon => $_getN(3);
  @$pb.TagNumber(5)
  set balloon(GBalloon v) { setField(5, v); }
  @$pb.TagNumber(5)
  $core.bool hasBalloon() => $_has(3);
  @$pb.TagNumber(5)
  void clearBalloon() => clearField(5);
  @$pb.TagNumber(5)
  GBalloon ensureBalloon() => $_ensure(3);
}

class GAirplane extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GAirplane', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'com.company.project'), createEmptyInstance: create)
    ..aOM<GFieldsOfAircraft>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'fieldsOfSuperClass', protoName: 'fieldsOfSuperClass', subBuilder: GFieldsOfAircraft.create)
    ..a<$core.int>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'wingspan', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  GAirplane._() : super();
  factory GAirplane({
    GFieldsOfAircraft? fieldsOfSuperClass,
    $core.int? wingspan,
  }) {
    final _result = create();
    if (fieldsOfSuperClass != null) {
      _result.fieldsOfSuperClass = fieldsOfSuperClass;
    }
    if (wingspan != null) {
      _result.wingspan = wingspan;
    }
    return _result;
  }
  factory GAirplane.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GAirplane.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GAirplane clone() => GAirplane()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GAirplane copyWith(void Function(GAirplane) updates) => super.copyWith((message) => updates(message as GAirplane)) as GAirplane; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GAirplane create() => GAirplane._();
  GAirplane createEmptyInstance() => create();
  static $pb.PbList<GAirplane> createRepeated() => $pb.PbList<GAirplane>();
  @$core.pragma('dart2js:noInline')
  static GAirplane getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GAirplane>(create);
  static GAirplane? _defaultInstance;

  @$pb.TagNumber(1)
  GFieldsOfAircraft get fieldsOfSuperClass => $_getN(0);
  @$pb.TagNumber(1)
  set fieldsOfSuperClass(GFieldsOfAircraft v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasFieldsOfSuperClass() => $_has(0);
  @$pb.TagNumber(1)
  void clearFieldsOfSuperClass() => clearField(1);
  @$pb.TagNumber(1)
  GFieldsOfAircraft ensureFieldsOfSuperClass() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.int get wingspan => $_getIZ(1);
  @$pb.TagNumber(2)
  set wingspan($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasWingspan() => $_has(1);
  @$pb.TagNumber(2)
  void clearWingspan() => clearField(2);
}

class GBalloon extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GBalloon', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'com.company.project'), createEmptyInstance: create)
    ..a<$core.int>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'weight', $pb.PbFieldType.O3)
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'key')
    ..a<$core.int>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'serviceCeiling', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  GBalloon._() : super();
  factory GBalloon({
    $core.int? weight,
    $core.String? key,
    $core.int? serviceCeiling,
  }) {
    final _result = create();
    if (weight != null) {
      _result.weight = weight;
    }
    if (key != null) {
      _result.key = key;
    }
    if (serviceCeiling != null) {
      _result.serviceCeiling = serviceCeiling;
    }
    return _result;
  }
  factory GBalloon.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GBalloon.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GBalloon clone() => GBalloon()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GBalloon copyWith(void Function(GBalloon) updates) => super.copyWith((message) => updates(message as GBalloon)) as GBalloon; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GBalloon create() => GBalloon._();
  GBalloon createEmptyInstance() => create();
  static $pb.PbList<GBalloon> createRepeated() => $pb.PbList<GBalloon>();
  @$core.pragma('dart2js:noInline')
  static GBalloon getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GBalloon>(create);
  static GBalloon? _defaultInstance;

  @$pb.TagNumber(2)
  $core.int get weight => $_getIZ(0);
  @$pb.TagNumber(2)
  set weight($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(2)
  $core.bool hasWeight() => $_has(0);
  @$pb.TagNumber(2)
  void clearWeight() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get key => $_getSZ(1);
  @$pb.TagNumber(3)
  set key($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(3)
  $core.bool hasKey() => $_has(1);
  @$pb.TagNumber(3)
  void clearKey() => clearField(3);

  @$pb.TagNumber(4)
  $core.int get serviceCeiling => $_getIZ(2);
  @$pb.TagNumber(4)
  set serviceCeiling($core.int v) { $_setSignedInt32(2, v); }
  @$pb.TagNumber(4)
  $core.bool hasServiceCeiling() => $_has(2);
  @$pb.TagNumber(4)
  void clearServiceCeiling() => clearField(4);
}

class GBicycle extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GBicycle', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'com.company.project'), createEmptyInstance: create)
    ..aOM<GFieldsOfAbstractVehicle>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'fieldsOfSuperClass', protoName: 'fieldsOfSuperClass', subBuilder: GFieldsOfAbstractVehicle.create)
    ..a<$core.List<$core.int>>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'wheelDiamater', $pb.PbFieldType.OY)
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'key')
    ..hasRequiredFields = false
  ;

  GBicycle._() : super();
  factory GBicycle({
    GFieldsOfAbstractVehicle? fieldsOfSuperClass,
    $core.List<$core.int>? wheelDiamater,
    $core.String? key,
  }) {
    final _result = create();
    if (fieldsOfSuperClass != null) {
      _result.fieldsOfSuperClass = fieldsOfSuperClass;
    }
    if (wheelDiamater != null) {
      _result.wheelDiamater = wheelDiamater;
    }
    if (key != null) {
      _result.key = key;
    }
    return _result;
  }
  factory GBicycle.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GBicycle.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GBicycle clone() => GBicycle()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GBicycle copyWith(void Function(GBicycle) updates) => super.copyWith((message) => updates(message as GBicycle)) as GBicycle; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GBicycle create() => GBicycle._();
  GBicycle createEmptyInstance() => create();
  static $pb.PbList<GBicycle> createRepeated() => $pb.PbList<GBicycle>();
  @$core.pragma('dart2js:noInline')
  static GBicycle getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GBicycle>(create);
  static GBicycle? _defaultInstance;

  @$pb.TagNumber(1)
  GFieldsOfAbstractVehicle get fieldsOfSuperClass => $_getN(0);
  @$pb.TagNumber(1)
  set fieldsOfSuperClass(GFieldsOfAbstractVehicle v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasFieldsOfSuperClass() => $_has(0);
  @$pb.TagNumber(1)
  void clearFieldsOfSuperClass() => clearField(1);
  @$pb.TagNumber(1)
  GFieldsOfAbstractVehicle ensureFieldsOfSuperClass() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.List<$core.int> get wheelDiamater => $_getN(1);
  @$pb.TagNumber(2)
  set wheelDiamater($core.List<$core.int> v) { $_setBytes(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasWheelDiamater() => $_has(1);
  @$pb.TagNumber(2)
  void clearWheelDiamater() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get key => $_getSZ(2);
  @$pb.TagNumber(3)
  set key($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasKey() => $_has(2);
  @$pb.TagNumber(3)
  void clearKey() => clearField(3);
}

class GCar extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GCar', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'com.company.project'), createEmptyInstance: create)
    ..aOM<GFieldsOfVehicle>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'fieldsOfSuperClass', protoName: 'fieldsOfSuperClass', subBuilder: GFieldsOfVehicle.create)
    ..a<$core.int>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'numberOfDoors', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  GCar._() : super();
  factory GCar({
    GFieldsOfVehicle? fieldsOfSuperClass,
    $core.int? numberOfDoors,
  }) {
    final _result = create();
    if (fieldsOfSuperClass != null) {
      _result.fieldsOfSuperClass = fieldsOfSuperClass;
    }
    if (numberOfDoors != null) {
      _result.numberOfDoors = numberOfDoors;
    }
    return _result;
  }
  factory GCar.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GCar.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GCar clone() => GCar()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GCar copyWith(void Function(GCar) updates) => super.copyWith((message) => updates(message as GCar)) as GCar; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GCar create() => GCar._();
  GCar createEmptyInstance() => create();
  static $pb.PbList<GCar> createRepeated() => $pb.PbList<GCar>();
  @$core.pragma('dart2js:noInline')
  static GCar getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GCar>(create);
  static GCar? _defaultInstance;

  @$pb.TagNumber(1)
  GFieldsOfVehicle get fieldsOfSuperClass => $_getN(0);
  @$pb.TagNumber(1)
  set fieldsOfSuperClass(GFieldsOfVehicle v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasFieldsOfSuperClass() => $_has(0);
  @$pb.TagNumber(1)
  void clearFieldsOfSuperClass() => clearField(1);
  @$pb.TagNumber(1)
  GFieldsOfVehicle ensureFieldsOfSuperClass() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.int get numberOfDoors => $_getIZ(1);
  @$pb.TagNumber(2)
  set numberOfDoors($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasNumberOfDoors() => $_has(1);
  @$pb.TagNumber(2)
  void clearNumberOfDoors() => clearField(2);
}

class GEntity extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GEntity', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'com.company.project'), createEmptyInstance: create)
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'key')
    ..hasRequiredFields = false
  ;

  GEntity._() : super();
  factory GEntity({
    $core.String? key,
  }) {
    final _result = create();
    if (key != null) {
      _result.key = key;
    }
    return _result;
  }
  factory GEntity.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GEntity.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GEntity clone() => GEntity()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GEntity copyWith(void Function(GEntity) updates) => super.copyWith((message) => updates(message as GEntity)) as GEntity; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GEntity create() => GEntity._();
  GEntity createEmptyInstance() => create();
  static $pb.PbList<GEntity> createRepeated() => $pb.PbList<GEntity>();
  @$core.pragma('dart2js:noInline')
  static GEntity getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GEntity>(create);
  static GEntity? _defaultInstance;

  @$pb.TagNumber(2)
  $core.String get key => $_getSZ(0);
  @$pb.TagNumber(2)
  set key($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(2)
  $core.bool hasKey() => $_has(0);
  @$pb.TagNumber(2)
  void clearKey() => clearField(2);
}

class GGyrocopter extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GGyrocopter', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'com.company.project'), createEmptyInstance: create)
    ..aOM<GFieldsOfRotorcraft>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'fieldsOfSuperClass', protoName: 'fieldsOfSuperClass', subBuilder: GFieldsOfRotorcraft.create)
    ..hasRequiredFields = false
  ;

  GGyrocopter._() : super();
  factory GGyrocopter({
    GFieldsOfRotorcraft? fieldsOfSuperClass,
  }) {
    final _result = create();
    if (fieldsOfSuperClass != null) {
      _result.fieldsOfSuperClass = fieldsOfSuperClass;
    }
    return _result;
  }
  factory GGyrocopter.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GGyrocopter.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GGyrocopter clone() => GGyrocopter()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GGyrocopter copyWith(void Function(GGyrocopter) updates) => super.copyWith((message) => updates(message as GGyrocopter)) as GGyrocopter; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GGyrocopter create() => GGyrocopter._();
  GGyrocopter createEmptyInstance() => create();
  static $pb.PbList<GGyrocopter> createRepeated() => $pb.PbList<GGyrocopter>();
  @$core.pragma('dart2js:noInline')
  static GGyrocopter getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GGyrocopter>(create);
  static GGyrocopter? _defaultInstance;

  @$pb.TagNumber(1)
  GFieldsOfRotorcraft get fieldsOfSuperClass => $_getN(0);
  @$pb.TagNumber(1)
  set fieldsOfSuperClass(GFieldsOfRotorcraft v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasFieldsOfSuperClass() => $_has(0);
  @$pb.TagNumber(1)
  void clearFieldsOfSuperClass() => clearField(1);
  @$pb.TagNumber(1)
  GFieldsOfRotorcraft ensureFieldsOfSuperClass() => $_ensure(0);
}

class GHelicopter extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GHelicopter', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'com.company.project'), createEmptyInstance: create)
    ..aOM<GFieldsOfRotorcraft>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'fieldsOfSuperClass', protoName: 'fieldsOfSuperClass', subBuilder: GFieldsOfRotorcraft.create)
    ..hasRequiredFields = false
  ;

  GHelicopter._() : super();
  factory GHelicopter({
    GFieldsOfRotorcraft? fieldsOfSuperClass,
  }) {
    final _result = create();
    if (fieldsOfSuperClass != null) {
      _result.fieldsOfSuperClass = fieldsOfSuperClass;
    }
    return _result;
  }
  factory GHelicopter.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GHelicopter.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GHelicopter clone() => GHelicopter()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GHelicopter copyWith(void Function(GHelicopter) updates) => super.copyWith((message) => updates(message as GHelicopter)) as GHelicopter; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GHelicopter create() => GHelicopter._();
  GHelicopter createEmptyInstance() => create();
  static $pb.PbList<GHelicopter> createRepeated() => $pb.PbList<GHelicopter>();
  @$core.pragma('dart2js:noInline')
  static GHelicopter getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GHelicopter>(create);
  static GHelicopter? _defaultInstance;

  @$pb.TagNumber(1)
  GFieldsOfRotorcraft get fieldsOfSuperClass => $_getN(0);
  @$pb.TagNumber(1)
  set fieldsOfSuperClass(GFieldsOfRotorcraft v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasFieldsOfSuperClass() => $_has(0);
  @$pb.TagNumber(1)
  void clearFieldsOfSuperClass() => clearField(1);
  @$pb.TagNumber(1)
  GFieldsOfRotorcraft ensureFieldsOfSuperClass() => $_ensure(0);
}

class GFieldsOfRotorcraft extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GFieldsOfRotorcraft', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'com.company.project'), createEmptyInstance: create)
    ..aOM<GFieldsOfAircraft>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'fieldsOfSuperClass', protoName: 'fieldsOfSuperClass', subBuilder: GFieldsOfAircraft.create)
    ..hasRequiredFields = false
  ;

  GFieldsOfRotorcraft._() : super();
  factory GFieldsOfRotorcraft({
    GFieldsOfAircraft? fieldsOfSuperClass,
  }) {
    final _result = create();
    if (fieldsOfSuperClass != null) {
      _result.fieldsOfSuperClass = fieldsOfSuperClass;
    }
    return _result;
  }
  factory GFieldsOfRotorcraft.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GFieldsOfRotorcraft.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GFieldsOfRotorcraft clone() => GFieldsOfRotorcraft()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GFieldsOfRotorcraft copyWith(void Function(GFieldsOfRotorcraft) updates) => super.copyWith((message) => updates(message as GFieldsOfRotorcraft)) as GFieldsOfRotorcraft; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GFieldsOfRotorcraft create() => GFieldsOfRotorcraft._();
  GFieldsOfRotorcraft createEmptyInstance() => create();
  static $pb.PbList<GFieldsOfRotorcraft> createRepeated() => $pb.PbList<GFieldsOfRotorcraft>();
  @$core.pragma('dart2js:noInline')
  static GFieldsOfRotorcraft getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GFieldsOfRotorcraft>(create);
  static GFieldsOfRotorcraft? _defaultInstance;

  @$pb.TagNumber(1)
  GFieldsOfAircraft get fieldsOfSuperClass => $_getN(0);
  @$pb.TagNumber(1)
  set fieldsOfSuperClass(GFieldsOfAircraft v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasFieldsOfSuperClass() => $_has(0);
  @$pb.TagNumber(1)
  void clearFieldsOfSuperClass() => clearField(1);
  @$pb.TagNumber(1)
  GFieldsOfAircraft ensureFieldsOfSuperClass() => $_ensure(0);
}

enum GRotorcraft_Props {
  rotorcraft, 
  helicopter, 
  gyrocopter, 
  notSet
}

class GRotorcraft extends $pb.GeneratedMessage {
  static const $core.Map<$core.int, GRotorcraft_Props> _GRotorcraft_PropsByTag = {
    1 : GRotorcraft_Props.rotorcraft,
    3 : GRotorcraft_Props.helicopter,
    4 : GRotorcraft_Props.gyrocopter,
    0 : GRotorcraft_Props.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GRotorcraft', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'com.company.project'), createEmptyInstance: create)
    ..oo(0, [1, 3, 4])
    ..aOM<GFieldsOfRotorcraft>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'rotorcraft', subBuilder: GFieldsOfRotorcraft.create)
    ..aOM<GHelicopter>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'helicopter', subBuilder: GHelicopter.create)
    ..aOM<GGyrocopter>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'gyrocopter', subBuilder: GGyrocopter.create)
    ..hasRequiredFields = false
  ;

  GRotorcraft._() : super();
  factory GRotorcraft({
    GFieldsOfRotorcraft? rotorcraft,
    GHelicopter? helicopter,
    GGyrocopter? gyrocopter,
  }) {
    final _result = create();
    if (rotorcraft != null) {
      _result.rotorcraft = rotorcraft;
    }
    if (helicopter != null) {
      _result.helicopter = helicopter;
    }
    if (gyrocopter != null) {
      _result.gyrocopter = gyrocopter;
    }
    return _result;
  }
  factory GRotorcraft.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GRotorcraft.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GRotorcraft clone() => GRotorcraft()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GRotorcraft copyWith(void Function(GRotorcraft) updates) => super.copyWith((message) => updates(message as GRotorcraft)) as GRotorcraft; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GRotorcraft create() => GRotorcraft._();
  GRotorcraft createEmptyInstance() => create();
  static $pb.PbList<GRotorcraft> createRepeated() => $pb.PbList<GRotorcraft>();
  @$core.pragma('dart2js:noInline')
  static GRotorcraft getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GRotorcraft>(create);
  static GRotorcraft? _defaultInstance;

  GRotorcraft_Props whichProps() => _GRotorcraft_PropsByTag[$_whichOneof(0)]!;
  void clearProps() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  GFieldsOfRotorcraft get rotorcraft => $_getN(0);
  @$pb.TagNumber(1)
  set rotorcraft(GFieldsOfRotorcraft v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasRotorcraft() => $_has(0);
  @$pb.TagNumber(1)
  void clearRotorcraft() => clearField(1);
  @$pb.TagNumber(1)
  GFieldsOfRotorcraft ensureRotorcraft() => $_ensure(0);

  @$pb.TagNumber(3)
  GHelicopter get helicopter => $_getN(1);
  @$pb.TagNumber(3)
  set helicopter(GHelicopter v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasHelicopter() => $_has(1);
  @$pb.TagNumber(3)
  void clearHelicopter() => clearField(3);
  @$pb.TagNumber(3)
  GHelicopter ensureHelicopter() => $_ensure(1);

  @$pb.TagNumber(4)
  GGyrocopter get gyrocopter => $_getN(2);
  @$pb.TagNumber(4)
  set gyrocopter(GGyrocopter v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasGyrocopter() => $_has(2);
  @$pb.TagNumber(4)
  void clearGyrocopter() => clearField(4);
  @$pb.TagNumber(4)
  GGyrocopter ensureGyrocopter() => $_ensure(2);
}

class GScooter extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GScooter', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'com.company.project'), createEmptyInstance: create)
    ..aOM<GFieldsOfAbstractVehicle>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'fieldsOfSuperClass', protoName: 'fieldsOfSuperClass', subBuilder: GFieldsOfAbstractVehicle.create)
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'key')
    ..hasRequiredFields = false
  ;

  GScooter._() : super();
  factory GScooter({
    GFieldsOfAbstractVehicle? fieldsOfSuperClass,
    $core.String? key,
  }) {
    final _result = create();
    if (fieldsOfSuperClass != null) {
      _result.fieldsOfSuperClass = fieldsOfSuperClass;
    }
    if (key != null) {
      _result.key = key;
    }
    return _result;
  }
  factory GScooter.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GScooter.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GScooter clone() => GScooter()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GScooter copyWith(void Function(GScooter) updates) => super.copyWith((message) => updates(message as GScooter)) as GScooter; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GScooter create() => GScooter._();
  GScooter createEmptyInstance() => create();
  static $pb.PbList<GScooter> createRepeated() => $pb.PbList<GScooter>();
  @$core.pragma('dart2js:noInline')
  static GScooter getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GScooter>(create);
  static GScooter? _defaultInstance;

  @$pb.TagNumber(1)
  GFieldsOfAbstractVehicle get fieldsOfSuperClass => $_getN(0);
  @$pb.TagNumber(1)
  set fieldsOfSuperClass(GFieldsOfAbstractVehicle v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasFieldsOfSuperClass() => $_has(0);
  @$pb.TagNumber(1)
  void clearFieldsOfSuperClass() => clearField(1);
  @$pb.TagNumber(1)
  GFieldsOfAbstractVehicle ensureFieldsOfSuperClass() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.String get key => $_getSZ(1);
  @$pb.TagNumber(2)
  set key($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasKey() => $_has(1);
  @$pb.TagNumber(2)
  void clearKey() => clearField(2);
}

class GFieldsOfVehicle extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GFieldsOfVehicle', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'com.company.project'), createEmptyInstance: create)
    ..a<$core.int>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'weight', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  GFieldsOfVehicle._() : super();
  factory GFieldsOfVehicle({
    $core.int? weight,
  }) {
    final _result = create();
    if (weight != null) {
      _result.weight = weight;
    }
    return _result;
  }
  factory GFieldsOfVehicle.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GFieldsOfVehicle.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GFieldsOfVehicle clone() => GFieldsOfVehicle()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GFieldsOfVehicle copyWith(void Function(GFieldsOfVehicle) updates) => super.copyWith((message) => updates(message as GFieldsOfVehicle)) as GFieldsOfVehicle; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GFieldsOfVehicle create() => GFieldsOfVehicle._();
  GFieldsOfVehicle createEmptyInstance() => create();
  static $pb.PbList<GFieldsOfVehicle> createRepeated() => $pb.PbList<GFieldsOfVehicle>();
  @$core.pragma('dart2js:noInline')
  static GFieldsOfVehicle getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GFieldsOfVehicle>(create);
  static GFieldsOfVehicle? _defaultInstance;

  @$pb.TagNumber(5)
  $core.int get weight => $_getIZ(0);
  @$pb.TagNumber(5)
  set weight($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(5)
  $core.bool hasWeight() => $_has(0);
  @$pb.TagNumber(5)
  void clearWeight() => clearField(5);
}

enum GVehicle_Props {
  vehicle, 
  aircraft, 
  car, 
  notSet
}

class GVehicle extends $pb.GeneratedMessage {
  static const $core.Map<$core.int, GVehicle_Props> _GVehicle_PropsByTag = {
    1 : GVehicle_Props.vehicle,
    3 : GVehicle_Props.aircraft,
    4 : GVehicle_Props.car,
    0 : GVehicle_Props.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GVehicle', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'com.company.project'), createEmptyInstance: create)
    ..oo(0, [1, 3, 4])
    ..aOM<GFieldsOfVehicle>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'vehicle', subBuilder: GFieldsOfVehicle.create)
    ..aOM<GAircraft>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'aircraft', subBuilder: GAircraft.create)
    ..aOM<GCar>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'car', subBuilder: GCar.create)
    ..hasRequiredFields = false
  ;

  GVehicle._() : super();
  factory GVehicle({
    GFieldsOfVehicle? vehicle,
    GAircraft? aircraft,
    GCar? car,
  }) {
    final _result = create();
    if (vehicle != null) {
      _result.vehicle = vehicle;
    }
    if (aircraft != null) {
      _result.aircraft = aircraft;
    }
    if (car != null) {
      _result.car = car;
    }
    return _result;
  }
  factory GVehicle.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GVehicle.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GVehicle clone() => GVehicle()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GVehicle copyWith(void Function(GVehicle) updates) => super.copyWith((message) => updates(message as GVehicle)) as GVehicle; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GVehicle create() => GVehicle._();
  GVehicle createEmptyInstance() => create();
  static $pb.PbList<GVehicle> createRepeated() => $pb.PbList<GVehicle>();
  @$core.pragma('dart2js:noInline')
  static GVehicle getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GVehicle>(create);
  static GVehicle? _defaultInstance;

  GVehicle_Props whichProps() => _GVehicle_PropsByTag[$_whichOneof(0)]!;
  void clearProps() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  GFieldsOfVehicle get vehicle => $_getN(0);
  @$pb.TagNumber(1)
  set vehicle(GFieldsOfVehicle v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasVehicle() => $_has(0);
  @$pb.TagNumber(1)
  void clearVehicle() => clearField(1);
  @$pb.TagNumber(1)
  GFieldsOfVehicle ensureVehicle() => $_ensure(0);

  @$pb.TagNumber(3)
  GAircraft get aircraft => $_getN(1);
  @$pb.TagNumber(3)
  set aircraft(GAircraft v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasAircraft() => $_has(1);
  @$pb.TagNumber(3)
  void clearAircraft() => clearField(3);
  @$pb.TagNumber(3)
  GAircraft ensureAircraft() => $_ensure(1);

  @$pb.TagNumber(4)
  GCar get car => $_getN(2);
  @$pb.TagNumber(4)
  set car(GCar v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasCar() => $_has(2);
  @$pb.TagNumber(4)
  void clearCar() => clearField(4);
  @$pb.TagNumber(4)
  GCar ensureCar() => $_ensure(2);
}

class GAbstractParentClass1 extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GAbstractParentClass1', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'com.company.project'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  GAbstractParentClass1._() : super();
  factory GAbstractParentClass1() => create();
  factory GAbstractParentClass1.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GAbstractParentClass1.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GAbstractParentClass1 clone() => GAbstractParentClass1()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GAbstractParentClass1 copyWith(void Function(GAbstractParentClass1) updates) => super.copyWith((message) => updates(message as GAbstractParentClass1)) as GAbstractParentClass1; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GAbstractParentClass1 create() => GAbstractParentClass1._();
  GAbstractParentClass1 createEmptyInstance() => create();
  static $pb.PbList<GAbstractParentClass1> createRepeated() => $pb.PbList<GAbstractParentClass1>();
  @$core.pragma('dart2js:noInline')
  static GAbstractParentClass1 getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GAbstractParentClass1>(create);
  static GAbstractParentClass1? _defaultInstance;
}

class GFieldsOfAbstractParentClass2 extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GFieldsOfAbstractParentClass2', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'com.company.project'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  GFieldsOfAbstractParentClass2._() : super();
  factory GFieldsOfAbstractParentClass2() => create();
  factory GFieldsOfAbstractParentClass2.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GFieldsOfAbstractParentClass2.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GFieldsOfAbstractParentClass2 clone() => GFieldsOfAbstractParentClass2()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GFieldsOfAbstractParentClass2 copyWith(void Function(GFieldsOfAbstractParentClass2) updates) => super.copyWith((message) => updates(message as GFieldsOfAbstractParentClass2)) as GFieldsOfAbstractParentClass2; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GFieldsOfAbstractParentClass2 create() => GFieldsOfAbstractParentClass2._();
  GFieldsOfAbstractParentClass2 createEmptyInstance() => create();
  static $pb.PbList<GFieldsOfAbstractParentClass2> createRepeated() => $pb.PbList<GFieldsOfAbstractParentClass2>();
  @$core.pragma('dart2js:noInline')
  static GFieldsOfAbstractParentClass2 getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GFieldsOfAbstractParentClass2>(create);
  static GFieldsOfAbstractParentClass2? _defaultInstance;
}

enum GAbstractParentClass2_Props {
  abstractParentClass2, 
  subClass1, 
  notSet
}

class GAbstractParentClass2 extends $pb.GeneratedMessage {
  static const $core.Map<$core.int, GAbstractParentClass2_Props> _GAbstractParentClass2_PropsByTag = {
    1 : GAbstractParentClass2_Props.abstractParentClass2,
    3 : GAbstractParentClass2_Props.subClass1,
    0 : GAbstractParentClass2_Props.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GAbstractParentClass2', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'com.company.project'), createEmptyInstance: create)
    ..oo(0, [1, 3])
    ..aOM<GFieldsOfAbstractParentClass2>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'abstractParentClass2', subBuilder: GFieldsOfAbstractParentClass2.create)
    ..aOM<GSubClass1>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'subClass1', subBuilder: GSubClass1.create)
    ..hasRequiredFields = false
  ;

  GAbstractParentClass2._() : super();
  factory GAbstractParentClass2({
    GFieldsOfAbstractParentClass2? abstractParentClass2,
    GSubClass1? subClass1,
  }) {
    final _result = create();
    if (abstractParentClass2 != null) {
      _result.abstractParentClass2 = abstractParentClass2;
    }
    if (subClass1 != null) {
      _result.subClass1 = subClass1;
    }
    return _result;
  }
  factory GAbstractParentClass2.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GAbstractParentClass2.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GAbstractParentClass2 clone() => GAbstractParentClass2()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GAbstractParentClass2 copyWith(void Function(GAbstractParentClass2) updates) => super.copyWith((message) => updates(message as GAbstractParentClass2)) as GAbstractParentClass2; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GAbstractParentClass2 create() => GAbstractParentClass2._();
  GAbstractParentClass2 createEmptyInstance() => create();
  static $pb.PbList<GAbstractParentClass2> createRepeated() => $pb.PbList<GAbstractParentClass2>();
  @$core.pragma('dart2js:noInline')
  static GAbstractParentClass2 getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GAbstractParentClass2>(create);
  static GAbstractParentClass2? _defaultInstance;

  GAbstractParentClass2_Props whichProps() => _GAbstractParentClass2_PropsByTag[$_whichOneof(0)]!;
  void clearProps() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  GFieldsOfAbstractParentClass2 get abstractParentClass2 => $_getN(0);
  @$pb.TagNumber(1)
  set abstractParentClass2(GFieldsOfAbstractParentClass2 v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasAbstractParentClass2() => $_has(0);
  @$pb.TagNumber(1)
  void clearAbstractParentClass2() => clearField(1);
  @$pb.TagNumber(1)
  GFieldsOfAbstractParentClass2 ensureAbstractParentClass2() => $_ensure(0);

  @$pb.TagNumber(3)
  GSubClass1 get subClass1 => $_getN(1);
  @$pb.TagNumber(3)
  set subClass1(GSubClass1 v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasSubClass1() => $_has(1);
  @$pb.TagNumber(3)
  void clearSubClass1() => clearField(3);
  @$pb.TagNumber(3)
  GSubClass1 ensureSubClass1() => $_ensure(1);
}

class GSubClass1 extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GSubClass1', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'com.company.project'), createEmptyInstance: create)
    ..aOM<GFieldsOfAbstractParentClass2>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'fieldsOfSuperClass', protoName: 'fieldsOfSuperClass', subBuilder: GFieldsOfAbstractParentClass2.create)
    ..hasRequiredFields = false
  ;

  GSubClass1._() : super();
  factory GSubClass1({
    GFieldsOfAbstractParentClass2? fieldsOfSuperClass,
  }) {
    final _result = create();
    if (fieldsOfSuperClass != null) {
      _result.fieldsOfSuperClass = fieldsOfSuperClass;
    }
    return _result;
  }
  factory GSubClass1.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GSubClass1.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GSubClass1 clone() => GSubClass1()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GSubClass1 copyWith(void Function(GSubClass1) updates) => super.copyWith((message) => updates(message as GSubClass1)) as GSubClass1; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GSubClass1 create() => GSubClass1._();
  GSubClass1 createEmptyInstance() => create();
  static $pb.PbList<GSubClass1> createRepeated() => $pb.PbList<GSubClass1>();
  @$core.pragma('dart2js:noInline')
  static GSubClass1 getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GSubClass1>(create);
  static GSubClass1? _defaultInstance;

  @$pb.TagNumber(1)
  GFieldsOfAbstractParentClass2 get fieldsOfSuperClass => $_getN(0);
  @$pb.TagNumber(1)
  set fieldsOfSuperClass(GFieldsOfAbstractParentClass2 v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasFieldsOfSuperClass() => $_has(0);
  @$pb.TagNumber(1)
  void clearFieldsOfSuperClass() => clearField(1);
  @$pb.TagNumber(1)
  GFieldsOfAbstractParentClass2 ensureFieldsOfSuperClass() => $_ensure(0);
}

class GAltNaming extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GAltNaming', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'com.company.project'), createEmptyInstance: create)
    ..aOS(19, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'UnconventionalName', protoName: 'UnconventionalName')
    ..aOM<$0.StringValue>(20, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'NUnconventionalName', protoName: 'NUnconventionalName', subBuilder: $0.StringValue.create)
    ..e<GApplianceType>(21, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'UnconventionalEnumName', $pb.PbFieldType.OE, protoName: 'UnconventionalEnumName', defaultOrMaker: GApplianceType.G_APPLIANCE_TYPE_HEAT, valueOf: GApplianceType.valueOf, enumValues: GApplianceType.values)
    ..e<GApplianceType>(22, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'NUnconventionalEnumName', $pb.PbFieldType.OE, protoName: 'NUnconventionalEnumName', defaultOrMaker: GApplianceType.G_APPLIANCE_TYPE_HEAT, valueOf: GApplianceType.valueOf, enumValues: GApplianceType.values)
    ..aOM<GEmpty>(23, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'UnconventionalCategory', protoName: 'UnconventionalCategory', subBuilder: GEmpty.create)
    ..aOM<GEmpty>(24, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'NUnconventionalCategory', protoName: 'NUnconventionalCategory', subBuilder: GEmpty.create)
    ..pc<GIngredient>(25, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'UnconventionalList', $pb.PbFieldType.PM, protoName: 'UnconventionalList', subBuilder: GIngredient.create)
    ..aOM<$1.Timestamp>(26, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'UnconventionalDateTime', protoName: 'UnconventionalDateTime', subBuilder: $1.Timestamp.create)
    ..aOM<$1.Timestamp>(27, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'NUnconventionalDateTime', protoName: 'NUnconventionalDateTime', subBuilder: $1.Timestamp.create)
    ..aOM<$2.Duration>(28, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'UnconventionalDuration', protoName: 'UnconventionalDuration', subBuilder: $2.Duration.create)
    ..aOM<$2.Duration>(29, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'NUnconventionalDuration', protoName: 'NUnconventionalDuration', subBuilder: $2.Duration.create)
    ..hasRequiredFields = false
  ;

  GAltNaming._() : super();
  factory GAltNaming({
    $core.String? unconventionalName,
    $0.StringValue? nUnconventionalName,
    GApplianceType? unconventionalEnumName,
    GApplianceType? nUnconventionalEnumName,
    GEmpty? unconventionalCategory,
    GEmpty? nUnconventionalCategory,
    $core.Iterable<GIngredient>? unconventionalList,
    $1.Timestamp? unconventionalDateTime,
    $1.Timestamp? nUnconventionalDateTime,
    $2.Duration? unconventionalDuration,
    $2.Duration? nUnconventionalDuration,
  }) {
    final _result = create();
    if (unconventionalName != null) {
      _result.unconventionalName = unconventionalName;
    }
    if (nUnconventionalName != null) {
      _result.nUnconventionalName = nUnconventionalName;
    }
    if (unconventionalEnumName != null) {
      _result.unconventionalEnumName = unconventionalEnumName;
    }
    if (nUnconventionalEnumName != null) {
      _result.nUnconventionalEnumName = nUnconventionalEnumName;
    }
    if (unconventionalCategory != null) {
      _result.unconventionalCategory = unconventionalCategory;
    }
    if (nUnconventionalCategory != null) {
      _result.nUnconventionalCategory = nUnconventionalCategory;
    }
    if (unconventionalList != null) {
      _result.unconventionalList.addAll(unconventionalList);
    }
    if (unconventionalDateTime != null) {
      _result.unconventionalDateTime = unconventionalDateTime;
    }
    if (nUnconventionalDateTime != null) {
      _result.nUnconventionalDateTime = nUnconventionalDateTime;
    }
    if (unconventionalDuration != null) {
      _result.unconventionalDuration = unconventionalDuration;
    }
    if (nUnconventionalDuration != null) {
      _result.nUnconventionalDuration = nUnconventionalDuration;
    }
    return _result;
  }
  factory GAltNaming.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GAltNaming.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GAltNaming clone() => GAltNaming()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GAltNaming copyWith(void Function(GAltNaming) updates) => super.copyWith((message) => updates(message as GAltNaming)) as GAltNaming; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GAltNaming create() => GAltNaming._();
  GAltNaming createEmptyInstance() => create();
  static $pb.PbList<GAltNaming> createRepeated() => $pb.PbList<GAltNaming>();
  @$core.pragma('dart2js:noInline')
  static GAltNaming getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GAltNaming>(create);
  static GAltNaming? _defaultInstance;

  @$pb.TagNumber(19)
  $core.String get unconventionalName => $_getSZ(0);
  @$pb.TagNumber(19)
  set unconventionalName($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(19)
  $core.bool hasUnconventionalName() => $_has(0);
  @$pb.TagNumber(19)
  void clearUnconventionalName() => clearField(19);

  @$pb.TagNumber(20)
  $0.StringValue get nUnconventionalName => $_getN(1);
  @$pb.TagNumber(20)
  set nUnconventionalName($0.StringValue v) { setField(20, v); }
  @$pb.TagNumber(20)
  $core.bool hasNUnconventionalName() => $_has(1);
  @$pb.TagNumber(20)
  void clearNUnconventionalName() => clearField(20);
  @$pb.TagNumber(20)
  $0.StringValue ensureNUnconventionalName() => $_ensure(1);

  @$pb.TagNumber(21)
  GApplianceType get unconventionalEnumName => $_getN(2);
  @$pb.TagNumber(21)
  set unconventionalEnumName(GApplianceType v) { setField(21, v); }
  @$pb.TagNumber(21)
  $core.bool hasUnconventionalEnumName() => $_has(2);
  @$pb.TagNumber(21)
  void clearUnconventionalEnumName() => clearField(21);

  @$pb.TagNumber(22)
  GApplianceType get nUnconventionalEnumName => $_getN(3);
  @$pb.TagNumber(22)
  set nUnconventionalEnumName(GApplianceType v) { setField(22, v); }
  @$pb.TagNumber(22)
  $core.bool hasNUnconventionalEnumName() => $_has(3);
  @$pb.TagNumber(22)
  void clearNUnconventionalEnumName() => clearField(22);

  @$pb.TagNumber(23)
  GEmpty get unconventionalCategory => $_getN(4);
  @$pb.TagNumber(23)
  set unconventionalCategory(GEmpty v) { setField(23, v); }
  @$pb.TagNumber(23)
  $core.bool hasUnconventionalCategory() => $_has(4);
  @$pb.TagNumber(23)
  void clearUnconventionalCategory() => clearField(23);
  @$pb.TagNumber(23)
  GEmpty ensureUnconventionalCategory() => $_ensure(4);

  @$pb.TagNumber(24)
  GEmpty get nUnconventionalCategory => $_getN(5);
  @$pb.TagNumber(24)
  set nUnconventionalCategory(GEmpty v) { setField(24, v); }
  @$pb.TagNumber(24)
  $core.bool hasNUnconventionalCategory() => $_has(5);
  @$pb.TagNumber(24)
  void clearNUnconventionalCategory() => clearField(24);
  @$pb.TagNumber(24)
  GEmpty ensureNUnconventionalCategory() => $_ensure(5);

  @$pb.TagNumber(25)
  $core.List<GIngredient> get unconventionalList => $_getList(6);

  @$pb.TagNumber(26)
  $1.Timestamp get unconventionalDateTime => $_getN(7);
  @$pb.TagNumber(26)
  set unconventionalDateTime($1.Timestamp v) { setField(26, v); }
  @$pb.TagNumber(26)
  $core.bool hasUnconventionalDateTime() => $_has(7);
  @$pb.TagNumber(26)
  void clearUnconventionalDateTime() => clearField(26);
  @$pb.TagNumber(26)
  $1.Timestamp ensureUnconventionalDateTime() => $_ensure(7);

  @$pb.TagNumber(27)
  $1.Timestamp get nUnconventionalDateTime => $_getN(8);
  @$pb.TagNumber(27)
  set nUnconventionalDateTime($1.Timestamp v) { setField(27, v); }
  @$pb.TagNumber(27)
  $core.bool hasNUnconventionalDateTime() => $_has(8);
  @$pb.TagNumber(27)
  void clearNUnconventionalDateTime() => clearField(27);
  @$pb.TagNumber(27)
  $1.Timestamp ensureNUnconventionalDateTime() => $_ensure(8);

  @$pb.TagNumber(28)
  $2.Duration get unconventionalDuration => $_getN(9);
  @$pb.TagNumber(28)
  set unconventionalDuration($2.Duration v) { setField(28, v); }
  @$pb.TagNumber(28)
  $core.bool hasUnconventionalDuration() => $_has(9);
  @$pb.TagNumber(28)
  void clearUnconventionalDuration() => clearField(28);
  @$pb.TagNumber(28)
  $2.Duration ensureUnconventionalDuration() => $_ensure(9);

  @$pb.TagNumber(29)
  $2.Duration get nUnconventionalDuration => $_getN(10);
  @$pb.TagNumber(29)
  set nUnconventionalDuration($2.Duration v) { setField(29, v); }
  @$pb.TagNumber(29)
  $core.bool hasNUnconventionalDuration() => $_has(10);
  @$pb.TagNumber(29)
  void clearNUnconventionalDuration() => clearField(29);
  @$pb.TagNumber(29)
  $2.Duration ensureNUnconventionalDuration() => $_ensure(10);
}

class GCalcParameters extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GCalcParameters', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'com.company.project'), createEmptyInstance: create)
    ..a<$core.int>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'parameter2', $pb.PbFieldType.O3)
    ..a<$core.int>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'parameter1', $pb.PbFieldType.O3)
    ..aOM<$0.Int32Value>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'parameter3', subBuilder: $0.Int32Value.create)
    ..aOM<$0.Int32Value>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'parameter4', subBuilder: $0.Int32Value.create)
    ..a<$core.int>(9, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'parameter5', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  GCalcParameters._() : super();
  factory GCalcParameters({
    $core.int? parameter2,
    $core.int? parameter1,
    $0.Int32Value? parameter3,
    $0.Int32Value? parameter4,
    $core.int? parameter5,
  }) {
    final _result = create();
    if (parameter2 != null) {
      _result.parameter2 = parameter2;
    }
    if (parameter1 != null) {
      _result.parameter1 = parameter1;
    }
    if (parameter3 != null) {
      _result.parameter3 = parameter3;
    }
    if (parameter4 != null) {
      _result.parameter4 = parameter4;
    }
    if (parameter5 != null) {
      _result.parameter5 = parameter5;
    }
    return _result;
  }
  factory GCalcParameters.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GCalcParameters.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GCalcParameters clone() => GCalcParameters()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GCalcParameters copyWith(void Function(GCalcParameters) updates) => super.copyWith((message) => updates(message as GCalcParameters)) as GCalcParameters; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GCalcParameters create() => GCalcParameters._();
  GCalcParameters createEmptyInstance() => create();
  static $pb.PbList<GCalcParameters> createRepeated() => $pb.PbList<GCalcParameters>();
  @$core.pragma('dart2js:noInline')
  static GCalcParameters getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GCalcParameters>(create);
  static GCalcParameters? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get parameter2 => $_getIZ(0);
  @$pb.TagNumber(1)
  set parameter2($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasParameter2() => $_has(0);
  @$pb.TagNumber(1)
  void clearParameter2() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get parameter1 => $_getIZ(1);
  @$pb.TagNumber(2)
  set parameter1($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasParameter1() => $_has(1);
  @$pb.TagNumber(2)
  void clearParameter1() => clearField(2);

  @$pb.TagNumber(3)
  $0.Int32Value get parameter3 => $_getN(2);
  @$pb.TagNumber(3)
  set parameter3($0.Int32Value v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasParameter3() => $_has(2);
  @$pb.TagNumber(3)
  void clearParameter3() => clearField(3);
  @$pb.TagNumber(3)
  $0.Int32Value ensureParameter3() => $_ensure(2);

  @$pb.TagNumber(4)
  $0.Int32Value get parameter4 => $_getN(3);
  @$pb.TagNumber(4)
  set parameter4($0.Int32Value v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasParameter4() => $_has(3);
  @$pb.TagNumber(4)
  void clearParameter4() => clearField(4);
  @$pb.TagNumber(4)
  $0.Int32Value ensureParameter4() => $_ensure(3);

  @$pb.TagNumber(9)
  $core.int get parameter5 => $_getIZ(4);
  @$pb.TagNumber(9)
  set parameter5($core.int v) { $_setSignedInt32(4, v); }
  @$pb.TagNumber(9)
  $core.bool hasParameter5() => $_has(4);
  @$pb.TagNumber(9)
  void clearParameter5() => clearField(9);
}

class GCalcResult extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GCalcResult', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'com.company.project'), createEmptyInstance: create)
    ..a<$core.int>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'result', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  GCalcResult._() : super();
  factory GCalcResult({
    $core.int? result,
  }) {
    final _result = create();
    if (result != null) {
      _result.result = result;
    }
    return _result;
  }
  factory GCalcResult.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GCalcResult.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GCalcResult clone() => GCalcResult()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GCalcResult copyWith(void Function(GCalcResult) updates) => super.copyWith((message) => updates(message as GCalcResult)) as GCalcResult; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GCalcResult create() => GCalcResult._();
  GCalcResult createEmptyInstance() => create();
  static $pb.PbList<GCalcResult> createRepeated() => $pb.PbList<GCalcResult>();
  @$core.pragma('dart2js:noInline')
  static GCalcResult getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GCalcResult>(create);
  static GCalcResult? _defaultInstance;

  @$pb.TagNumber(2)
  $core.int get result => $_getIZ(0);
  @$pb.TagNumber(2)
  set result($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(2)
  $core.bool hasResult() => $_has(0);
  @$pb.TagNumber(2)
  void clearResult() => clearField(2);
}

class GCategory extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GCategory', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'com.company.project'), createEmptyInstance: create)
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'title')
    ..aOM<GComponent>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'mainComponent', subBuilder: GComponent.create)
    ..aOM<GComponent>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'alternativeComponent', subBuilder: GComponent.create)
    ..pc<GComponent>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'otherComponents', $pb.PbFieldType.PM, subBuilder: GComponent.create)
    ..pc<GComponent>(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'secondaryComponents', $pb.PbFieldType.PM, subBuilder: GComponent.create)
    ..hasRequiredFields = false
  ;

  GCategory._() : super();
  factory GCategory({
    $core.String? title,
    GComponent? mainComponent,
    GComponent? alternativeComponent,
    $core.Iterable<GComponent>? otherComponents,
    $core.Iterable<GComponent>? secondaryComponents,
  }) {
    final _result = create();
    if (title != null) {
      _result.title = title;
    }
    if (mainComponent != null) {
      _result.mainComponent = mainComponent;
    }
    if (alternativeComponent != null) {
      _result.alternativeComponent = alternativeComponent;
    }
    if (otherComponents != null) {
      _result.otherComponents.addAll(otherComponents);
    }
    if (secondaryComponents != null) {
      _result.secondaryComponents.addAll(secondaryComponents);
    }
    return _result;
  }
  factory GCategory.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GCategory.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GCategory clone() => GCategory()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GCategory copyWith(void Function(GCategory) updates) => super.copyWith((message) => updates(message as GCategory)) as GCategory; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GCategory create() => GCategory._();
  GCategory createEmptyInstance() => create();
  static $pb.PbList<GCategory> createRepeated() => $pb.PbList<GCategory>();
  @$core.pragma('dart2js:noInline')
  static GCategory getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GCategory>(create);
  static GCategory? _defaultInstance;

  @$pb.TagNumber(2)
  $core.String get title => $_getSZ(0);
  @$pb.TagNumber(2)
  set title($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(2)
  $core.bool hasTitle() => $_has(0);
  @$pb.TagNumber(2)
  void clearTitle() => clearField(2);

  @$pb.TagNumber(3)
  GComponent get mainComponent => $_getN(1);
  @$pb.TagNumber(3)
  set mainComponent(GComponent v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasMainComponent() => $_has(1);
  @$pb.TagNumber(3)
  void clearMainComponent() => clearField(3);
  @$pb.TagNumber(3)
  GComponent ensureMainComponent() => $_ensure(1);

  @$pb.TagNumber(4)
  GComponent get alternativeComponent => $_getN(2);
  @$pb.TagNumber(4)
  set alternativeComponent(GComponent v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasAlternativeComponent() => $_has(2);
  @$pb.TagNumber(4)
  void clearAlternativeComponent() => clearField(4);
  @$pb.TagNumber(4)
  GComponent ensureAlternativeComponent() => $_ensure(2);

  @$pb.TagNumber(5)
  $core.List<GComponent> get otherComponents => $_getList(3);

  @$pb.TagNumber(6)
  $core.List<GComponent> get secondaryComponents => $_getList(4);
}

class GComponent extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GComponent', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'com.company.project'), createEmptyInstance: create)
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'description')
    ..hasRequiredFields = false
  ;

  GComponent._() : super();
  factory GComponent({
    $core.String? description,
  }) {
    final _result = create();
    if (description != null) {
      _result.description = description;
    }
    return _result;
  }
  factory GComponent.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GComponent.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GComponent clone() => GComponent()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GComponent copyWith(void Function(GComponent) updates) => super.copyWith((message) => updates(message as GComponent)) as GComponent; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GComponent create() => GComponent._();
  GComponent createEmptyInstance() => create();
  static $pb.PbList<GComponent> createRepeated() => $pb.PbList<GComponent>();
  @$core.pragma('dart2js:noInline')
  static GComponent getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GComponent>(create);
  static GComponent? _defaultInstance;

  @$pb.TagNumber(2)
  $core.String get description => $_getSZ(0);
  @$pb.TagNumber(2)
  set description($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(2)
  $core.bool hasDescription() => $_has(0);
  @$pb.TagNumber(2)
  void clearDescription() => clearField(2);
}

class GConstructObject1 extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GConstructObject1', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'com.company.project'), createEmptyInstance: create)
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'name')
    ..a<$core.int>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'number', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  GConstructObject1._() : super();
  factory GConstructObject1({
    $core.String? name,
    $core.int? number,
  }) {
    final _result = create();
    if (name != null) {
      _result.name = name;
    }
    if (number != null) {
      _result.number = number;
    }
    return _result;
  }
  factory GConstructObject1.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GConstructObject1.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GConstructObject1 clone() => GConstructObject1()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GConstructObject1 copyWith(void Function(GConstructObject1) updates) => super.copyWith((message) => updates(message as GConstructObject1)) as GConstructObject1; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GConstructObject1 create() => GConstructObject1._();
  GConstructObject1 createEmptyInstance() => create();
  static $pb.PbList<GConstructObject1> createRepeated() => $pb.PbList<GConstructObject1>();
  @$core.pragma('dart2js:noInline')
  static GConstructObject1 getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GConstructObject1>(create);
  static GConstructObject1? _defaultInstance;

  @$pb.TagNumber(2)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(2)
  set name($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(2)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(2)
  void clearName() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get number => $_getIZ(1);
  @$pb.TagNumber(3)
  set number($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(3)
  $core.bool hasNumber() => $_has(1);
  @$pb.TagNumber(3)
  void clearNumber() => clearField(3);
}

class GConstructObject2 extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GConstructObject2', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'com.company.project'), createEmptyInstance: create)
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'name')
    ..a<$core.int>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'number', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  GConstructObject2._() : super();
  factory GConstructObject2({
    $core.String? name,
    $core.int? number,
  }) {
    final _result = create();
    if (name != null) {
      _result.name = name;
    }
    if (number != null) {
      _result.number = number;
    }
    return _result;
  }
  factory GConstructObject2.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GConstructObject2.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GConstructObject2 clone() => GConstructObject2()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GConstructObject2 copyWith(void Function(GConstructObject2) updates) => super.copyWith((message) => updates(message as GConstructObject2)) as GConstructObject2; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GConstructObject2 create() => GConstructObject2._();
  GConstructObject2 createEmptyInstance() => create();
  static $pb.PbList<GConstructObject2> createRepeated() => $pb.PbList<GConstructObject2>();
  @$core.pragma('dart2js:noInline')
  static GConstructObject2 getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GConstructObject2>(create);
  static GConstructObject2? _defaultInstance;

  @$pb.TagNumber(2)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(2)
  set name($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(2)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(2)
  void clearName() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get number => $_getIZ(1);
  @$pb.TagNumber(3)
  set number($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(3)
  $core.bool hasNumber() => $_has(1);
  @$pb.TagNumber(3)
  void clearNumber() => clearField(3);
}

class GConstructObject3 extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GConstructObject3', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'com.company.project'), createEmptyInstance: create)
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'name')
    ..a<$core.int>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'number', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  GConstructObject3._() : super();
  factory GConstructObject3({
    $core.String? name,
    $core.int? number,
  }) {
    final _result = create();
    if (name != null) {
      _result.name = name;
    }
    if (number != null) {
      _result.number = number;
    }
    return _result;
  }
  factory GConstructObject3.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GConstructObject3.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GConstructObject3 clone() => GConstructObject3()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GConstructObject3 copyWith(void Function(GConstructObject3) updates) => super.copyWith((message) => updates(message as GConstructObject3)) as GConstructObject3; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GConstructObject3 create() => GConstructObject3._();
  GConstructObject3 createEmptyInstance() => create();
  static $pb.PbList<GConstructObject3> createRepeated() => $pb.PbList<GConstructObject3>();
  @$core.pragma('dart2js:noInline')
  static GConstructObject3 getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GConstructObject3>(create);
  static GConstructObject3? _defaultInstance;

  @$pb.TagNumber(2)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(2)
  set name($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(2)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(2)
  void clearName() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get number => $_getIZ(1);
  @$pb.TagNumber(3)
  set number($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(3)
  $core.bool hasNumber() => $_has(1);
  @$pb.TagNumber(3)
  void clearNumber() => clearField(3);
}

class GConstructObject4 extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GConstructObject4', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'com.company.project'), createEmptyInstance: create)
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'name')
    ..a<$core.int>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'number', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  GConstructObject4._() : super();
  factory GConstructObject4({
    $core.String? name,
    $core.int? number,
  }) {
    final _result = create();
    if (name != null) {
      _result.name = name;
    }
    if (number != null) {
      _result.number = number;
    }
    return _result;
  }
  factory GConstructObject4.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GConstructObject4.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GConstructObject4 clone() => GConstructObject4()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GConstructObject4 copyWith(void Function(GConstructObject4) updates) => super.copyWith((message) => updates(message as GConstructObject4)) as GConstructObject4; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GConstructObject4 create() => GConstructObject4._();
  GConstructObject4 createEmptyInstance() => create();
  static $pb.PbList<GConstructObject4> createRepeated() => $pb.PbList<GConstructObject4>();
  @$core.pragma('dart2js:noInline')
  static GConstructObject4 getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GConstructObject4>(create);
  static GConstructObject4? _defaultInstance;

  @$pb.TagNumber(2)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(2)
  set name($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(2)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(2)
  void clearName() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get number => $_getIZ(1);
  @$pb.TagNumber(3)
  set number($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(3)
  $core.bool hasNumber() => $_has(1);
  @$pb.TagNumber(3)
  void clearNumber() => clearField(3);
}

class GConstructObject5 extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GConstructObject5', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'com.company.project'), createEmptyInstance: create)
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'name')
    ..a<$core.int>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'number', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  GConstructObject5._() : super();
  factory GConstructObject5({
    $core.String? name,
    $core.int? number,
  }) {
    final _result = create();
    if (name != null) {
      _result.name = name;
    }
    if (number != null) {
      _result.number = number;
    }
    return _result;
  }
  factory GConstructObject5.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GConstructObject5.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GConstructObject5 clone() => GConstructObject5()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GConstructObject5 copyWith(void Function(GConstructObject5) updates) => super.copyWith((message) => updates(message as GConstructObject5)) as GConstructObject5; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GConstructObject5 create() => GConstructObject5._();
  GConstructObject5 createEmptyInstance() => create();
  static $pb.PbList<GConstructObject5> createRepeated() => $pb.PbList<GConstructObject5>();
  @$core.pragma('dart2js:noInline')
  static GConstructObject5 getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GConstructObject5>(create);
  static GConstructObject5? _defaultInstance;

  @$pb.TagNumber(2)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(2)
  set name($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(2)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(2)
  void clearName() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get number => $_getIZ(1);
  @$pb.TagNumber(3)
  set number($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(3)
  $core.bool hasNumber() => $_has(1);
  @$pb.TagNumber(3)
  void clearNumber() => clearField(3);
}

class GConstructObject6 extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GConstructObject6', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'com.company.project'), createEmptyInstance: create)
    ..aOM<$0.StringValue>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'name', subBuilder: $0.StringValue.create)
    ..aOM<$0.Int32Value>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'number', subBuilder: $0.Int32Value.create)
    ..hasRequiredFields = false
  ;

  GConstructObject6._() : super();
  factory GConstructObject6({
    $0.StringValue? name,
    $0.Int32Value? number,
  }) {
    final _result = create();
    if (name != null) {
      _result.name = name;
    }
    if (number != null) {
      _result.number = number;
    }
    return _result;
  }
  factory GConstructObject6.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GConstructObject6.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GConstructObject6 clone() => GConstructObject6()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GConstructObject6 copyWith(void Function(GConstructObject6) updates) => super.copyWith((message) => updates(message as GConstructObject6)) as GConstructObject6; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GConstructObject6 create() => GConstructObject6._();
  GConstructObject6 createEmptyInstance() => create();
  static $pb.PbList<GConstructObject6> createRepeated() => $pb.PbList<GConstructObject6>();
  @$core.pragma('dart2js:noInline')
  static GConstructObject6 getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GConstructObject6>(create);
  static GConstructObject6? _defaultInstance;

  @$pb.TagNumber(2)
  $0.StringValue get name => $_getN(0);
  @$pb.TagNumber(2)
  set name($0.StringValue v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(2)
  void clearName() => clearField(2);
  @$pb.TagNumber(2)
  $0.StringValue ensureName() => $_ensure(0);

  @$pb.TagNumber(3)
  $0.Int32Value get number => $_getN(1);
  @$pb.TagNumber(3)
  set number($0.Int32Value v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasNumber() => $_has(1);
  @$pb.TagNumber(3)
  void clearNumber() => clearField(3);
  @$pb.TagNumber(3)
  $0.Int32Value ensureNumber() => $_ensure(1);
}

class GConstructObject7 extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GConstructObject7', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'com.company.project'), createEmptyInstance: create)
    ..aOM<$0.Int32Value>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'number', subBuilder: $0.Int32Value.create)
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'name')
    ..hasRequiredFields = false
  ;

  GConstructObject7._() : super();
  factory GConstructObject7({
    $0.Int32Value? number,
    $core.String? name,
  }) {
    final _result = create();
    if (number != null) {
      _result.number = number;
    }
    if (name != null) {
      _result.name = name;
    }
    return _result;
  }
  factory GConstructObject7.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GConstructObject7.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GConstructObject7 clone() => GConstructObject7()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GConstructObject7 copyWith(void Function(GConstructObject7) updates) => super.copyWith((message) => updates(message as GConstructObject7)) as GConstructObject7; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GConstructObject7 create() => GConstructObject7._();
  GConstructObject7 createEmptyInstance() => create();
  static $pb.PbList<GConstructObject7> createRepeated() => $pb.PbList<GConstructObject7>();
  @$core.pragma('dart2js:noInline')
  static GConstructObject7 getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GConstructObject7>(create);
  static GConstructObject7? _defaultInstance;

  @$pb.TagNumber(2)
  $0.Int32Value get number => $_getN(0);
  @$pb.TagNumber(2)
  set number($0.Int32Value v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasNumber() => $_has(0);
  @$pb.TagNumber(2)
  void clearNumber() => clearField(2);
  @$pb.TagNumber(2)
  $0.Int32Value ensureNumber() => $_ensure(0);

  @$pb.TagNumber(3)
  $core.String get name => $_getSZ(1);
  @$pb.TagNumber(3)
  set name($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(3)
  $core.bool hasName() => $_has(1);
  @$pb.TagNumber(3)
  void clearName() => clearField(3);
}

class GConstructObject8 extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GConstructObject8', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'com.company.project'), createEmptyInstance: create)
    ..aOM<$0.Int32Value>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'number', subBuilder: $0.Int32Value.create)
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'name')
    ..hasRequiredFields = false
  ;

  GConstructObject8._() : super();
  factory GConstructObject8({
    $0.Int32Value? number,
    $core.String? name,
  }) {
    final _result = create();
    if (number != null) {
      _result.number = number;
    }
    if (name != null) {
      _result.name = name;
    }
    return _result;
  }
  factory GConstructObject8.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GConstructObject8.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GConstructObject8 clone() => GConstructObject8()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GConstructObject8 copyWith(void Function(GConstructObject8) updates) => super.copyWith((message) => updates(message as GConstructObject8)) as GConstructObject8; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GConstructObject8 create() => GConstructObject8._();
  GConstructObject8 createEmptyInstance() => create();
  static $pb.PbList<GConstructObject8> createRepeated() => $pb.PbList<GConstructObject8>();
  @$core.pragma('dart2js:noInline')
  static GConstructObject8 getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GConstructObject8>(create);
  static GConstructObject8? _defaultInstance;

  @$pb.TagNumber(2)
  $0.Int32Value get number => $_getN(0);
  @$pb.TagNumber(2)
  set number($0.Int32Value v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasNumber() => $_has(0);
  @$pb.TagNumber(2)
  void clearNumber() => clearField(2);
  @$pb.TagNumber(2)
  $0.Int32Value ensureNumber() => $_ensure(0);

  @$pb.TagNumber(3)
  $core.String get name => $_getSZ(1);
  @$pb.TagNumber(3)
  set name($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(3)
  $core.bool hasName() => $_has(1);
  @$pb.TagNumber(3)
  void clearName() => clearField(3);
}

class GEmpty extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GEmpty', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'com.company.project'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  GEmpty._() : super();
  factory GEmpty() => create();
  factory GEmpty.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GEmpty.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GEmpty clone() => GEmpty()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GEmpty copyWith(void Function(GEmpty) updates) => super.copyWith((message) => updates(message as GEmpty)) as GEmpty; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GEmpty create() => GEmpty._();
  GEmpty createEmptyInstance() => create();
  static $pb.PbList<GEmpty> createRepeated() => $pb.PbList<GEmpty>();
  @$core.pragma('dart2js:noInline')
  static GEmpty getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GEmpty>(create);
  static GEmpty? _defaultInstance;
}

class GEncapsulatedFieldsClass extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GEncapsulatedFieldsClass', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'com.company.project'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'finalString')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'encapsulatedString')
    ..hasRequiredFields = false
  ;

  GEncapsulatedFieldsClass._() : super();
  factory GEncapsulatedFieldsClass({
    $core.String? finalString,
    $core.String? encapsulatedString,
  }) {
    final _result = create();
    if (finalString != null) {
      _result.finalString = finalString;
    }
    if (encapsulatedString != null) {
      _result.encapsulatedString = encapsulatedString;
    }
    return _result;
  }
  factory GEncapsulatedFieldsClass.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GEncapsulatedFieldsClass.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GEncapsulatedFieldsClass clone() => GEncapsulatedFieldsClass()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GEncapsulatedFieldsClass copyWith(void Function(GEncapsulatedFieldsClass) updates) => super.copyWith((message) => updates(message as GEncapsulatedFieldsClass)) as GEncapsulatedFieldsClass; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GEncapsulatedFieldsClass create() => GEncapsulatedFieldsClass._();
  GEncapsulatedFieldsClass createEmptyInstance() => create();
  static $pb.PbList<GEncapsulatedFieldsClass> createRepeated() => $pb.PbList<GEncapsulatedFieldsClass>();
  @$core.pragma('dart2js:noInline')
  static GEncapsulatedFieldsClass getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GEncapsulatedFieldsClass>(create);
  static GEncapsulatedFieldsClass? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get finalString => $_getSZ(0);
  @$pb.TagNumber(1)
  set finalString($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasFinalString() => $_has(0);
  @$pb.TagNumber(1)
  void clearFinalString() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get encapsulatedString => $_getSZ(1);
  @$pb.TagNumber(2)
  set encapsulatedString($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasEncapsulatedString() => $_has(1);
  @$pb.TagNumber(2)
  void clearEncapsulatedString() => clearField(2);
}

class GFieldsOfScheduleConstraint extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GFieldsOfScheduleConstraint', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'com.company.project'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  GFieldsOfScheduleConstraint._() : super();
  factory GFieldsOfScheduleConstraint() => create();
  factory GFieldsOfScheduleConstraint.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GFieldsOfScheduleConstraint.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GFieldsOfScheduleConstraint clone() => GFieldsOfScheduleConstraint()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GFieldsOfScheduleConstraint copyWith(void Function(GFieldsOfScheduleConstraint) updates) => super.copyWith((message) => updates(message as GFieldsOfScheduleConstraint)) as GFieldsOfScheduleConstraint; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GFieldsOfScheduleConstraint create() => GFieldsOfScheduleConstraint._();
  GFieldsOfScheduleConstraint createEmptyInstance() => create();
  static $pb.PbList<GFieldsOfScheduleConstraint> createRepeated() => $pb.PbList<GFieldsOfScheduleConstraint>();
  @$core.pragma('dart2js:noInline')
  static GFieldsOfScheduleConstraint getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GFieldsOfScheduleConstraint>(create);
  static GFieldsOfScheduleConstraint? _defaultInstance;
}

enum GScheduleConstraint_Props {
  scheduleConstraint, 
  contestConstraint, 
  notSet
}

class GScheduleConstraint extends $pb.GeneratedMessage {
  static const $core.Map<$core.int, GScheduleConstraint_Props> _GScheduleConstraint_PropsByTag = {
    1 : GScheduleConstraint_Props.scheduleConstraint,
    3 : GScheduleConstraint_Props.contestConstraint,
    0 : GScheduleConstraint_Props.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GScheduleConstraint', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'com.company.project'), createEmptyInstance: create)
    ..oo(0, [1, 3])
    ..aOM<GFieldsOfScheduleConstraint>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'scheduleConstraint', subBuilder: GFieldsOfScheduleConstraint.create)
    ..aOM<GContestConstraint>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'contestConstraint', subBuilder: GContestConstraint.create)
    ..hasRequiredFields = false
  ;

  GScheduleConstraint._() : super();
  factory GScheduleConstraint({
    GFieldsOfScheduleConstraint? scheduleConstraint,
    GContestConstraint? contestConstraint,
  }) {
    final _result = create();
    if (scheduleConstraint != null) {
      _result.scheduleConstraint = scheduleConstraint;
    }
    if (contestConstraint != null) {
      _result.contestConstraint = contestConstraint;
    }
    return _result;
  }
  factory GScheduleConstraint.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GScheduleConstraint.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GScheduleConstraint clone() => GScheduleConstraint()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GScheduleConstraint copyWith(void Function(GScheduleConstraint) updates) => super.copyWith((message) => updates(message as GScheduleConstraint)) as GScheduleConstraint; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GScheduleConstraint create() => GScheduleConstraint._();
  GScheduleConstraint createEmptyInstance() => create();
  static $pb.PbList<GScheduleConstraint> createRepeated() => $pb.PbList<GScheduleConstraint>();
  @$core.pragma('dart2js:noInline')
  static GScheduleConstraint getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GScheduleConstraint>(create);
  static GScheduleConstraint? _defaultInstance;

  GScheduleConstraint_Props whichProps() => _GScheduleConstraint_PropsByTag[$_whichOneof(0)]!;
  void clearProps() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  GFieldsOfScheduleConstraint get scheduleConstraint => $_getN(0);
  @$pb.TagNumber(1)
  set scheduleConstraint(GFieldsOfScheduleConstraint v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasScheduleConstraint() => $_has(0);
  @$pb.TagNumber(1)
  void clearScheduleConstraint() => clearField(1);
  @$pb.TagNumber(1)
  GFieldsOfScheduleConstraint ensureScheduleConstraint() => $_ensure(0);

  @$pb.TagNumber(3)
  GContestConstraint get contestConstraint => $_getN(1);
  @$pb.TagNumber(3)
  set contestConstraint(GContestConstraint v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasContestConstraint() => $_has(1);
  @$pb.TagNumber(3)
  void clearContestConstraint() => clearField(3);
  @$pb.TagNumber(3)
  GContestConstraint ensureContestConstraint() => $_ensure(1);
}

class GConstraintAdded extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GConstraintAdded', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'com.company.project'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  GConstraintAdded._() : super();
  factory GConstraintAdded() => create();
  factory GConstraintAdded.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GConstraintAdded.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GConstraintAdded clone() => GConstraintAdded()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GConstraintAdded copyWith(void Function(GConstraintAdded) updates) => super.copyWith((message) => updates(message as GConstraintAdded)) as GConstraintAdded; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GConstraintAdded create() => GConstraintAdded._();
  GConstraintAdded createEmptyInstance() => create();
  static $pb.PbList<GConstraintAdded> createRepeated() => $pb.PbList<GConstraintAdded>();
  @$core.pragma('dart2js:noInline')
  static GConstraintAdded getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GConstraintAdded>(create);
  static GConstraintAdded? _defaultInstance;
}

class GContestConstraint extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GContestConstraint', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'com.company.project'), createEmptyInstance: create)
    ..aOM<GFieldsOfScheduleConstraint>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'fieldsOfSuperClass', protoName: 'fieldsOfSuperClass', subBuilder: GFieldsOfScheduleConstraint.create)
    ..hasRequiredFields = false
  ;

  GContestConstraint._() : super();
  factory GContestConstraint({
    GFieldsOfScheduleConstraint? fieldsOfSuperClass,
  }) {
    final _result = create();
    if (fieldsOfSuperClass != null) {
      _result.fieldsOfSuperClass = fieldsOfSuperClass;
    }
    return _result;
  }
  factory GContestConstraint.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GContestConstraint.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GContestConstraint clone() => GContestConstraint()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GContestConstraint copyWith(void Function(GContestConstraint) updates) => super.copyWith((message) => updates(message as GContestConstraint)) as GContestConstraint; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GContestConstraint create() => GContestConstraint._();
  GContestConstraint createEmptyInstance() => create();
  static $pb.PbList<GContestConstraint> createRepeated() => $pb.PbList<GContestConstraint>();
  @$core.pragma('dart2js:noInline')
  static GContestConstraint getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GContestConstraint>(create);
  static GContestConstraint? _defaultInstance;

  @$pb.TagNumber(1)
  GFieldsOfScheduleConstraint get fieldsOfSuperClass => $_getN(0);
  @$pb.TagNumber(1)
  set fieldsOfSuperClass(GFieldsOfScheduleConstraint v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasFieldsOfSuperClass() => $_has(0);
  @$pb.TagNumber(1)
  void clearFieldsOfSuperClass() => clearField(1);
  @$pb.TagNumber(1)
  GFieldsOfScheduleConstraint ensureFieldsOfSuperClass() => $_ensure(0);
}

class GIngredient extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GIngredient', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'com.company.project'), createEmptyInstance: create)
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'description')
    ..a<$core.List<$core.int>>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'quantity', $pb.PbFieldType.OY)
    ..a<$core.double>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'precision', $pb.PbFieldType.OD)
    ..aOM<$2.Duration>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'cookingDuration', subBuilder: $2.Duration.create)
    ..aOM<GComponent>(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'mainComponent', subBuilder: GComponent.create)
    ..pc<GComponent>(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'otherComponents', $pb.PbFieldType.PM, subBuilder: GComponent.create)
    ..aOM<GComponent>(8, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'alternativeComponent', subBuilder: GComponent.create)
    ..pc<GComponent>(9, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'secondaryComponents', $pb.PbFieldType.PM, subBuilder: GComponent.create)
    ..hasRequiredFields = false
  ;

  GIngredient._() : super();
  factory GIngredient({
    $core.String? description,
    $core.List<$core.int>? quantity,
    $core.double? precision,
    $2.Duration? cookingDuration,
    GComponent? mainComponent,
    $core.Iterable<GComponent>? otherComponents,
    GComponent? alternativeComponent,
    $core.Iterable<GComponent>? secondaryComponents,
  }) {
    final _result = create();
    if (description != null) {
      _result.description = description;
    }
    if (quantity != null) {
      _result.quantity = quantity;
    }
    if (precision != null) {
      _result.precision = precision;
    }
    if (cookingDuration != null) {
      _result.cookingDuration = cookingDuration;
    }
    if (mainComponent != null) {
      _result.mainComponent = mainComponent;
    }
    if (otherComponents != null) {
      _result.otherComponents.addAll(otherComponents);
    }
    if (alternativeComponent != null) {
      _result.alternativeComponent = alternativeComponent;
    }
    if (secondaryComponents != null) {
      _result.secondaryComponents.addAll(secondaryComponents);
    }
    return _result;
  }
  factory GIngredient.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GIngredient.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GIngredient clone() => GIngredient()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GIngredient copyWith(void Function(GIngredient) updates) => super.copyWith((message) => updates(message as GIngredient)) as GIngredient; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GIngredient create() => GIngredient._();
  GIngredient createEmptyInstance() => create();
  static $pb.PbList<GIngredient> createRepeated() => $pb.PbList<GIngredient>();
  @$core.pragma('dart2js:noInline')
  static GIngredient getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GIngredient>(create);
  static GIngredient? _defaultInstance;

  @$pb.TagNumber(2)
  $core.String get description => $_getSZ(0);
  @$pb.TagNumber(2)
  set description($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(2)
  $core.bool hasDescription() => $_has(0);
  @$pb.TagNumber(2)
  void clearDescription() => clearField(2);

  @$pb.TagNumber(3)
  $core.List<$core.int> get quantity => $_getN(1);
  @$pb.TagNumber(3)
  set quantity($core.List<$core.int> v) { $_setBytes(1, v); }
  @$pb.TagNumber(3)
  $core.bool hasQuantity() => $_has(1);
  @$pb.TagNumber(3)
  void clearQuantity() => clearField(3);

  @$pb.TagNumber(4)
  $core.double get precision => $_getN(2);
  @$pb.TagNumber(4)
  set precision($core.double v) { $_setDouble(2, v); }
  @$pb.TagNumber(4)
  $core.bool hasPrecision() => $_has(2);
  @$pb.TagNumber(4)
  void clearPrecision() => clearField(4);

  @$pb.TagNumber(5)
  $2.Duration get cookingDuration => $_getN(3);
  @$pb.TagNumber(5)
  set cookingDuration($2.Duration v) { setField(5, v); }
  @$pb.TagNumber(5)
  $core.bool hasCookingDuration() => $_has(3);
  @$pb.TagNumber(5)
  void clearCookingDuration() => clearField(5);
  @$pb.TagNumber(5)
  $2.Duration ensureCookingDuration() => $_ensure(3);

  @$pb.TagNumber(6)
  GComponent get mainComponent => $_getN(4);
  @$pb.TagNumber(6)
  set mainComponent(GComponent v) { setField(6, v); }
  @$pb.TagNumber(6)
  $core.bool hasMainComponent() => $_has(4);
  @$pb.TagNumber(6)
  void clearMainComponent() => clearField(6);
  @$pb.TagNumber(6)
  GComponent ensureMainComponent() => $_ensure(4);

  @$pb.TagNumber(7)
  $core.List<GComponent> get otherComponents => $_getList(5);

  @$pb.TagNumber(8)
  GComponent get alternativeComponent => $_getN(6);
  @$pb.TagNumber(8)
  set alternativeComponent(GComponent v) { setField(8, v); }
  @$pb.TagNumber(8)
  $core.bool hasAlternativeComponent() => $_has(6);
  @$pb.TagNumber(8)
  void clearAlternativeComponent() => clearField(8);
  @$pb.TagNumber(8)
  GComponent ensureAlternativeComponent() => $_ensure(6);

  @$pb.TagNumber(9)
  $core.List<GComponent> get secondaryComponents => $_getList(7);
}

class GFieldsOfBranch extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GFieldsOfBranch', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'com.company.project'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  GFieldsOfBranch._() : super();
  factory GFieldsOfBranch() => create();
  factory GFieldsOfBranch.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GFieldsOfBranch.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GFieldsOfBranch clone() => GFieldsOfBranch()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GFieldsOfBranch copyWith(void Function(GFieldsOfBranch) updates) => super.copyWith((message) => updates(message as GFieldsOfBranch)) as GFieldsOfBranch; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GFieldsOfBranch create() => GFieldsOfBranch._();
  GFieldsOfBranch createEmptyInstance() => create();
  static $pb.PbList<GFieldsOfBranch> createRepeated() => $pb.PbList<GFieldsOfBranch>();
  @$core.pragma('dart2js:noInline')
  static GFieldsOfBranch getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GFieldsOfBranch>(create);
  static GFieldsOfBranch? _defaultInstance;
}

enum GBranch_Props {
  branch, 
  twig, 
  notSet
}

class GBranch extends $pb.GeneratedMessage {
  static const $core.Map<$core.int, GBranch_Props> _GBranch_PropsByTag = {
    1 : GBranch_Props.branch,
    3 : GBranch_Props.twig,
    0 : GBranch_Props.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GBranch', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'com.company.project'), createEmptyInstance: create)
    ..oo(0, [1, 3])
    ..aOM<GFieldsOfBranch>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'branch', subBuilder: GFieldsOfBranch.create)
    ..aOM<GTwig>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'twig', subBuilder: GTwig.create)
    ..hasRequiredFields = false
  ;

  GBranch._() : super();
  factory GBranch({
    GFieldsOfBranch? branch,
    GTwig? twig,
  }) {
    final _result = create();
    if (branch != null) {
      _result.branch = branch;
    }
    if (twig != null) {
      _result.twig = twig;
    }
    return _result;
  }
  factory GBranch.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GBranch.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GBranch clone() => GBranch()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GBranch copyWith(void Function(GBranch) updates) => super.copyWith((message) => updates(message as GBranch)) as GBranch; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GBranch create() => GBranch._();
  GBranch createEmptyInstance() => create();
  static $pb.PbList<GBranch> createRepeated() => $pb.PbList<GBranch>();
  @$core.pragma('dart2js:noInline')
  static GBranch getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GBranch>(create);
  static GBranch? _defaultInstance;

  GBranch_Props whichProps() => _GBranch_PropsByTag[$_whichOneof(0)]!;
  void clearProps() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  GFieldsOfBranch get branch => $_getN(0);
  @$pb.TagNumber(1)
  set branch(GFieldsOfBranch v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasBranch() => $_has(0);
  @$pb.TagNumber(1)
  void clearBranch() => clearField(1);
  @$pb.TagNumber(1)
  GFieldsOfBranch ensureBranch() => $_ensure(0);

  @$pb.TagNumber(3)
  GTwig get twig => $_getN(1);
  @$pb.TagNumber(3)
  set twig(GTwig v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasTwig() => $_has(1);
  @$pb.TagNumber(3)
  void clearTwig() => clearField(3);
  @$pb.TagNumber(3)
  GTwig ensureTwig() => $_ensure(1);
}

class GFieldsOfTwig extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GFieldsOfTwig', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'com.company.project'), createEmptyInstance: create)
    ..aOM<GFieldsOfBranch>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'fieldsOfSuperClass', protoName: 'fieldsOfSuperClass', subBuilder: GFieldsOfBranch.create)
    ..a<$core.int>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'prop1', $pb.PbFieldType.O3)
    ..a<$core.int>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'prop2', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  GFieldsOfTwig._() : super();
  factory GFieldsOfTwig({
    GFieldsOfBranch? fieldsOfSuperClass,
    $core.int? prop1,
    $core.int? prop2,
  }) {
    final _result = create();
    if (fieldsOfSuperClass != null) {
      _result.fieldsOfSuperClass = fieldsOfSuperClass;
    }
    if (prop1 != null) {
      _result.prop1 = prop1;
    }
    if (prop2 != null) {
      _result.prop2 = prop2;
    }
    return _result;
  }
  factory GFieldsOfTwig.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GFieldsOfTwig.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GFieldsOfTwig clone() => GFieldsOfTwig()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GFieldsOfTwig copyWith(void Function(GFieldsOfTwig) updates) => super.copyWith((message) => updates(message as GFieldsOfTwig)) as GFieldsOfTwig; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GFieldsOfTwig create() => GFieldsOfTwig._();
  GFieldsOfTwig createEmptyInstance() => create();
  static $pb.PbList<GFieldsOfTwig> createRepeated() => $pb.PbList<GFieldsOfTwig>();
  @$core.pragma('dart2js:noInline')
  static GFieldsOfTwig getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GFieldsOfTwig>(create);
  static GFieldsOfTwig? _defaultInstance;

  @$pb.TagNumber(1)
  GFieldsOfBranch get fieldsOfSuperClass => $_getN(0);
  @$pb.TagNumber(1)
  set fieldsOfSuperClass(GFieldsOfBranch v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasFieldsOfSuperClass() => $_has(0);
  @$pb.TagNumber(1)
  void clearFieldsOfSuperClass() => clearField(1);
  @$pb.TagNumber(1)
  GFieldsOfBranch ensureFieldsOfSuperClass() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.int get prop1 => $_getIZ(1);
  @$pb.TagNumber(2)
  set prop1($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasProp1() => $_has(1);
  @$pb.TagNumber(2)
  void clearProp1() => clearField(2);

  @$pb.TagNumber(4)
  $core.int get prop2 => $_getIZ(2);
  @$pb.TagNumber(4)
  set prop2($core.int v) { $_setSignedInt32(2, v); }
  @$pb.TagNumber(4)
  $core.bool hasProp2() => $_has(2);
  @$pb.TagNumber(4)
  void clearProp2() => clearField(4);
}

enum GTwig_Props {
  twig, 
  leaf, 
  notSet
}

class GTwig extends $pb.GeneratedMessage {
  static const $core.Map<$core.int, GTwig_Props> _GTwig_PropsByTag = {
    1 : GTwig_Props.twig,
    3 : GTwig_Props.leaf,
    0 : GTwig_Props.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GTwig', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'com.company.project'), createEmptyInstance: create)
    ..oo(0, [1, 3])
    ..aOM<GFieldsOfTwig>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'twig', subBuilder: GFieldsOfTwig.create)
    ..aOM<GLeaf>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'leaf', subBuilder: GLeaf.create)
    ..hasRequiredFields = false
  ;

  GTwig._() : super();
  factory GTwig({
    GFieldsOfTwig? twig,
    GLeaf? leaf,
  }) {
    final _result = create();
    if (twig != null) {
      _result.twig = twig;
    }
    if (leaf != null) {
      _result.leaf = leaf;
    }
    return _result;
  }
  factory GTwig.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GTwig.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GTwig clone() => GTwig()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GTwig copyWith(void Function(GTwig) updates) => super.copyWith((message) => updates(message as GTwig)) as GTwig; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GTwig create() => GTwig._();
  GTwig createEmptyInstance() => create();
  static $pb.PbList<GTwig> createRepeated() => $pb.PbList<GTwig>();
  @$core.pragma('dart2js:noInline')
  static GTwig getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GTwig>(create);
  static GTwig? _defaultInstance;

  GTwig_Props whichProps() => _GTwig_PropsByTag[$_whichOneof(0)]!;
  void clearProps() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  GFieldsOfTwig get twig => $_getN(0);
  @$pb.TagNumber(1)
  set twig(GFieldsOfTwig v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasTwig() => $_has(0);
  @$pb.TagNumber(1)
  void clearTwig() => clearField(1);
  @$pb.TagNumber(1)
  GFieldsOfTwig ensureTwig() => $_ensure(0);

  @$pb.TagNumber(3)
  GLeaf get leaf => $_getN(1);
  @$pb.TagNumber(3)
  set leaf(GLeaf v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasLeaf() => $_has(1);
  @$pb.TagNumber(3)
  void clearLeaf() => clearField(3);
  @$pb.TagNumber(3)
  GLeaf ensureLeaf() => $_ensure(1);
}

class GLeaf extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GLeaf', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'com.company.project'), createEmptyInstance: create)
    ..aOM<GFieldsOfTwig>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'fieldsOfSuperClass', protoName: 'fieldsOfSuperClass', subBuilder: GFieldsOfTwig.create)
    ..hasRequiredFields = false
  ;

  GLeaf._() : super();
  factory GLeaf({
    GFieldsOfTwig? fieldsOfSuperClass,
  }) {
    final _result = create();
    if (fieldsOfSuperClass != null) {
      _result.fieldsOfSuperClass = fieldsOfSuperClass;
    }
    return _result;
  }
  factory GLeaf.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GLeaf.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GLeaf clone() => GLeaf()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GLeaf copyWith(void Function(GLeaf) updates) => super.copyWith((message) => updates(message as GLeaf)) as GLeaf; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GLeaf create() => GLeaf._();
  GLeaf createEmptyInstance() => create();
  static $pb.PbList<GLeaf> createRepeated() => $pb.PbList<GLeaf>();
  @$core.pragma('dart2js:noInline')
  static GLeaf getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GLeaf>(create);
  static GLeaf? _defaultInstance;

  @$pb.TagNumber(1)
  GFieldsOfTwig get fieldsOfSuperClass => $_getN(0);
  @$pb.TagNumber(1)
  set fieldsOfSuperClass(GFieldsOfTwig v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasFieldsOfSuperClass() => $_has(0);
  @$pb.TagNumber(1)
  void clearFieldsOfSuperClass() => clearField(1);
  @$pb.TagNumber(1)
  GFieldsOfTwig ensureFieldsOfSuperClass() => $_ensure(0);
}

class GKey extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GKey', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'com.company.project'), createEmptyInstance: create)
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'key')
    ..hasRequiredFields = false
  ;

  GKey._() : super();
  factory GKey({
    $core.String? key,
  }) {
    final _result = create();
    if (key != null) {
      _result.key = key;
    }
    return _result;
  }
  factory GKey.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GKey.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GKey clone() => GKey()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GKey copyWith(void Function(GKey) updates) => super.copyWith((message) => updates(message as GKey)) as GKey; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GKey create() => GKey._();
  GKey createEmptyInstance() => create();
  static $pb.PbList<GKey> createRepeated() => $pb.PbList<GKey>();
  @$core.pragma('dart2js:noInline')
  static GKey getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GKey>(create);
  static GKey? _defaultInstance;

  @$pb.TagNumber(2)
  $core.String get key => $_getSZ(0);
  @$pb.TagNumber(2)
  set key($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(2)
  $core.bool hasKey() => $_has(0);
  @$pb.TagNumber(2)
  void clearKey() => clearField(2);
}

class GListsHost extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GListsHost', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'com.company.project'), createEmptyInstance: create)
    ..p<$core.bool>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'vbools', $pb.PbFieldType.KB)
    ..p<$core.bool>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'nvbools', $pb.PbFieldType.KB)
    ..pPS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'vstrings')
    ..pPS(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'nvstrings')
    ..pc<$2.Duration>(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'vdurations', $pb.PbFieldType.PM, subBuilder: $2.Duration.create)
    ..pc<$2.Duration>(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'nvdurations', $pb.PbFieldType.PM, subBuilder: $2.Duration.create)
    ..pc<$1.Timestamp>(8, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'vdatetimes', $pb.PbFieldType.PM, subBuilder: $1.Timestamp.create)
    ..pc<$1.Timestamp>(9, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'nvdatetimes', $pb.PbFieldType.PM, subBuilder: $1.Timestamp.create)
    ..p<$core.List<$core.int>>(10, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'vdecimals', $pb.PbFieldType.PY)
    ..p<$core.List<$core.int>>(11, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'nvdecimals', $pb.PbFieldType.PY)
    ..p<$core.int>(12, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'vints', $pb.PbFieldType.K3)
    ..p<$core.int>(13, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'nvints', $pb.PbFieldType.K3)
    ..p<$core.double>(14, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'vdoubles', $pb.PbFieldType.KD)
    ..p<$core.double>(15, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'nvdoubles', $pb.PbFieldType.KD)
    ..pc<GApplianceType>(16, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'vapplianceTypes', $pb.PbFieldType.KE, valueOf: GApplianceType.valueOf, enumValues: GApplianceType.values, defaultEnumValue: GApplianceType.G_APPLIANCE_TYPE_HEAT)
    ..pc<GApplianceType>(17, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'nvapplianceTypes', $pb.PbFieldType.KE, valueOf: GApplianceType.valueOf, enumValues: GApplianceType.values, defaultEnumValue: GApplianceType.G_APPLIANCE_TYPE_HEAT)
    ..hasRequiredFields = false
  ;

  GListsHost._() : super();
  factory GListsHost({
    $core.Iterable<$core.bool>? vbools,
    $core.Iterable<$core.bool>? nvbools,
    $core.Iterable<$core.String>? vstrings,
    $core.Iterable<$core.String>? nvstrings,
    $core.Iterable<$2.Duration>? vdurations,
    $core.Iterable<$2.Duration>? nvdurations,
    $core.Iterable<$1.Timestamp>? vdatetimes,
    $core.Iterable<$1.Timestamp>? nvdatetimes,
    $core.Iterable<$core.List<$core.int>>? vdecimals,
    $core.Iterable<$core.List<$core.int>>? nvdecimals,
    $core.Iterable<$core.int>? vints,
    $core.Iterable<$core.int>? nvints,
    $core.Iterable<$core.double>? vdoubles,
    $core.Iterable<$core.double>? nvdoubles,
    $core.Iterable<GApplianceType>? vapplianceTypes,
    $core.Iterable<GApplianceType>? nvapplianceTypes,
  }) {
    final _result = create();
    if (vbools != null) {
      _result.vbools.addAll(vbools);
    }
    if (nvbools != null) {
      _result.nvbools.addAll(nvbools);
    }
    if (vstrings != null) {
      _result.vstrings.addAll(vstrings);
    }
    if (nvstrings != null) {
      _result.nvstrings.addAll(nvstrings);
    }
    if (vdurations != null) {
      _result.vdurations.addAll(vdurations);
    }
    if (nvdurations != null) {
      _result.nvdurations.addAll(nvdurations);
    }
    if (vdatetimes != null) {
      _result.vdatetimes.addAll(vdatetimes);
    }
    if (nvdatetimes != null) {
      _result.nvdatetimes.addAll(nvdatetimes);
    }
    if (vdecimals != null) {
      _result.vdecimals.addAll(vdecimals);
    }
    if (nvdecimals != null) {
      _result.nvdecimals.addAll(nvdecimals);
    }
    if (vints != null) {
      _result.vints.addAll(vints);
    }
    if (nvints != null) {
      _result.nvints.addAll(nvints);
    }
    if (vdoubles != null) {
      _result.vdoubles.addAll(vdoubles);
    }
    if (nvdoubles != null) {
      _result.nvdoubles.addAll(nvdoubles);
    }
    if (vapplianceTypes != null) {
      _result.vapplianceTypes.addAll(vapplianceTypes);
    }
    if (nvapplianceTypes != null) {
      _result.nvapplianceTypes.addAll(nvapplianceTypes);
    }
    return _result;
  }
  factory GListsHost.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GListsHost.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GListsHost clone() => GListsHost()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GListsHost copyWith(void Function(GListsHost) updates) => super.copyWith((message) => updates(message as GListsHost)) as GListsHost; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GListsHost create() => GListsHost._();
  GListsHost createEmptyInstance() => create();
  static $pb.PbList<GListsHost> createRepeated() => $pb.PbList<GListsHost>();
  @$core.pragma('dart2js:noInline')
  static GListsHost getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GListsHost>(create);
  static GListsHost? _defaultInstance;

  @$pb.TagNumber(2)
  $core.List<$core.bool> get vbools => $_getList(0);

  @$pb.TagNumber(3)
  $core.List<$core.bool> get nvbools => $_getList(1);

  @$pb.TagNumber(4)
  $core.List<$core.String> get vstrings => $_getList(2);

  @$pb.TagNumber(5)
  $core.List<$core.String> get nvstrings => $_getList(3);

  @$pb.TagNumber(6)
  $core.List<$2.Duration> get vdurations => $_getList(4);

  @$pb.TagNumber(7)
  $core.List<$2.Duration> get nvdurations => $_getList(5);

  @$pb.TagNumber(8)
  $core.List<$1.Timestamp> get vdatetimes => $_getList(6);

  @$pb.TagNumber(9)
  $core.List<$1.Timestamp> get nvdatetimes => $_getList(7);

  @$pb.TagNumber(10)
  $core.List<$core.List<$core.int>> get vdecimals => $_getList(8);

  @$pb.TagNumber(11)
  $core.List<$core.List<$core.int>> get nvdecimals => $_getList(9);

  @$pb.TagNumber(12)
  $core.List<$core.int> get vints => $_getList(10);

  @$pb.TagNumber(13)
  $core.List<$core.int> get nvints => $_getList(11);

  @$pb.TagNumber(14)
  $core.List<$core.double> get vdoubles => $_getList(12);

  @$pb.TagNumber(15)
  $core.List<$core.double> get nvdoubles => $_getList(13);

  @$pb.TagNumber(16)
  $core.List<GApplianceType> get vapplianceTypes => $_getList(14);

  @$pb.TagNumber(17)
  $core.List<GApplianceType> get nvapplianceTypes => $_getList(15);
}

class GPerson extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GPerson', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'com.company.project'), createEmptyInstance: create)
    ..aOM<$0.BoolValue>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'boolValue', subBuilder: $0.BoolValue.create)
    ..a<$core.List<$core.int>>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'decVal', $pb.PbFieldType.OY)
    ..hasRequiredFields = false
  ;

  GPerson._() : super();
  factory GPerson({
    $0.BoolValue? boolValue,
    $core.List<$core.int>? decVal,
  }) {
    final _result = create();
    if (boolValue != null) {
      _result.boolValue = boolValue;
    }
    if (decVal != null) {
      _result.decVal = decVal;
    }
    return _result;
  }
  factory GPerson.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GPerson.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GPerson clone() => GPerson()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GPerson copyWith(void Function(GPerson) updates) => super.copyWith((message) => updates(message as GPerson)) as GPerson; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GPerson create() => GPerson._();
  GPerson createEmptyInstance() => create();
  static $pb.PbList<GPerson> createRepeated() => $pb.PbList<GPerson>();
  @$core.pragma('dart2js:noInline')
  static GPerson getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GPerson>(create);
  static GPerson? _defaultInstance;

  @$pb.TagNumber(1)
  $0.BoolValue get boolValue => $_getN(0);
  @$pb.TagNumber(1)
  set boolValue($0.BoolValue v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasBoolValue() => $_has(0);
  @$pb.TagNumber(1)
  void clearBoolValue() => clearField(1);
  @$pb.TagNumber(1)
  $0.BoolValue ensureBoolValue() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.List<$core.int> get decVal => $_getN(1);
  @$pb.TagNumber(2)
  set decVal($core.List<$core.int> v) { $_setBytes(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasDecVal() => $_has(1);
  @$pb.TagNumber(2)
  void clearDecVal() => clearField(2);
}

class GRecipe extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GRecipe', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'com.company.project'), createEmptyInstance: create)
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'title')
    ..aOM<$0.StringValue>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'description', subBuilder: $0.StringValue.create)
    ..aOM<GCategory>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'category', subBuilder: GCategory.create)
    ..pc<GIngredient>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'ingredients', $pb.PbFieldType.PM, subBuilder: GIngredient.create)
    ..aOM<$1.Timestamp>(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'publishDate', subBuilder: $1.Timestamp.create)
    ..aOM<$1.Timestamp>(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'expiryDate', subBuilder: $1.Timestamp.create)
    ..aOM<$2.Duration>(8, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'preparationDuration', subBuilder: $2.Duration.create)
    ..aOM<$2.Duration>(9, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'totalDuration', subBuilder: $2.Duration.create)
    ..aOB(10, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'isPublished')
    ..aOM<$0.BoolValue>(11, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'requiresRobot', subBuilder: $0.BoolValue.create)
    ..aOM<$0.DoubleValue>(12, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'grossWeight', subBuilder: $0.DoubleValue.create)
    ..aOM<$0.DoubleValue>(13, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'netWeight', subBuilder: $0.DoubleValue.create)
    ..e<GApplianceType>(14, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'mainApplianceType', $pb.PbFieldType.OE, defaultOrMaker: GApplianceType.G_APPLIANCE_TYPE_HEAT, valueOf: GApplianceType.valueOf, enumValues: GApplianceType.values)
    ..e<GApplianceType>(15, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'secondaryApplianceType', $pb.PbFieldType.OE, defaultOrMaker: GApplianceType.G_APPLIANCE_TYPE_HEAT, valueOf: GApplianceType.valueOf, enumValues: GApplianceType.values)
    ..pPS(16, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'tags')
    ..pPS(17, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'extraTags')
    ..pc<GApplianceType>(18, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'moreApplianceTypes', $pb.PbFieldType.KE, valueOf: GApplianceType.valueOf, enumValues: GApplianceType.values, defaultEnumValue: GApplianceType.G_APPLIANCE_TYPE_HEAT)
    ..hasRequiredFields = false
  ;

  GRecipe._() : super();
  factory GRecipe({
    $core.String? title,
    $0.StringValue? description,
    GCategory? category,
    $core.Iterable<GIngredient>? ingredients,
    $1.Timestamp? publishDate,
    $1.Timestamp? expiryDate,
    $2.Duration? preparationDuration,
    $2.Duration? totalDuration,
    $core.bool? isPublished,
    $0.BoolValue? requiresRobot,
    $0.DoubleValue? grossWeight,
    $0.DoubleValue? netWeight,
    GApplianceType? mainApplianceType,
    GApplianceType? secondaryApplianceType,
    $core.Iterable<$core.String>? tags,
    $core.Iterable<$core.String>? extraTags,
    $core.Iterable<GApplianceType>? moreApplianceTypes,
  }) {
    final _result = create();
    if (title != null) {
      _result.title = title;
    }
    if (description != null) {
      _result.description = description;
    }
    if (category != null) {
      _result.category = category;
    }
    if (ingredients != null) {
      _result.ingredients.addAll(ingredients);
    }
    if (publishDate != null) {
      _result.publishDate = publishDate;
    }
    if (expiryDate != null) {
      _result.expiryDate = expiryDate;
    }
    if (preparationDuration != null) {
      _result.preparationDuration = preparationDuration;
    }
    if (totalDuration != null) {
      _result.totalDuration = totalDuration;
    }
    if (isPublished != null) {
      _result.isPublished = isPublished;
    }
    if (requiresRobot != null) {
      _result.requiresRobot = requiresRobot;
    }
    if (grossWeight != null) {
      _result.grossWeight = grossWeight;
    }
    if (netWeight != null) {
      _result.netWeight = netWeight;
    }
    if (mainApplianceType != null) {
      _result.mainApplianceType = mainApplianceType;
    }
    if (secondaryApplianceType != null) {
      _result.secondaryApplianceType = secondaryApplianceType;
    }
    if (tags != null) {
      _result.tags.addAll(tags);
    }
    if (extraTags != null) {
      _result.extraTags.addAll(extraTags);
    }
    if (moreApplianceTypes != null) {
      _result.moreApplianceTypes.addAll(moreApplianceTypes);
    }
    return _result;
  }
  factory GRecipe.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GRecipe.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GRecipe clone() => GRecipe()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GRecipe copyWith(void Function(GRecipe) updates) => super.copyWith((message) => updates(message as GRecipe)) as GRecipe; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GRecipe create() => GRecipe._();
  GRecipe createEmptyInstance() => create();
  static $pb.PbList<GRecipe> createRepeated() => $pb.PbList<GRecipe>();
  @$core.pragma('dart2js:noInline')
  static GRecipe getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GRecipe>(create);
  static GRecipe? _defaultInstance;

  @$pb.TagNumber(2)
  $core.String get title => $_getSZ(0);
  @$pb.TagNumber(2)
  set title($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(2)
  $core.bool hasTitle() => $_has(0);
  @$pb.TagNumber(2)
  void clearTitle() => clearField(2);

  @$pb.TagNumber(3)
  $0.StringValue get description => $_getN(1);
  @$pb.TagNumber(3)
  set description($0.StringValue v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasDescription() => $_has(1);
  @$pb.TagNumber(3)
  void clearDescription() => clearField(3);
  @$pb.TagNumber(3)
  $0.StringValue ensureDescription() => $_ensure(1);

  @$pb.TagNumber(4)
  GCategory get category => $_getN(2);
  @$pb.TagNumber(4)
  set category(GCategory v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasCategory() => $_has(2);
  @$pb.TagNumber(4)
  void clearCategory() => clearField(4);
  @$pb.TagNumber(4)
  GCategory ensureCategory() => $_ensure(2);

  @$pb.TagNumber(5)
  $core.List<GIngredient> get ingredients => $_getList(3);

  @$pb.TagNumber(6)
  $1.Timestamp get publishDate => $_getN(4);
  @$pb.TagNumber(6)
  set publishDate($1.Timestamp v) { setField(6, v); }
  @$pb.TagNumber(6)
  $core.bool hasPublishDate() => $_has(4);
  @$pb.TagNumber(6)
  void clearPublishDate() => clearField(6);
  @$pb.TagNumber(6)
  $1.Timestamp ensurePublishDate() => $_ensure(4);

  @$pb.TagNumber(7)
  $1.Timestamp get expiryDate => $_getN(5);
  @$pb.TagNumber(7)
  set expiryDate($1.Timestamp v) { setField(7, v); }
  @$pb.TagNumber(7)
  $core.bool hasExpiryDate() => $_has(5);
  @$pb.TagNumber(7)
  void clearExpiryDate() => clearField(7);
  @$pb.TagNumber(7)
  $1.Timestamp ensureExpiryDate() => $_ensure(5);

  @$pb.TagNumber(8)
  $2.Duration get preparationDuration => $_getN(6);
  @$pb.TagNumber(8)
  set preparationDuration($2.Duration v) { setField(8, v); }
  @$pb.TagNumber(8)
  $core.bool hasPreparationDuration() => $_has(6);
  @$pb.TagNumber(8)
  void clearPreparationDuration() => clearField(8);
  @$pb.TagNumber(8)
  $2.Duration ensurePreparationDuration() => $_ensure(6);

  @$pb.TagNumber(9)
  $2.Duration get totalDuration => $_getN(7);
  @$pb.TagNumber(9)
  set totalDuration($2.Duration v) { setField(9, v); }
  @$pb.TagNumber(9)
  $core.bool hasTotalDuration() => $_has(7);
  @$pb.TagNumber(9)
  void clearTotalDuration() => clearField(9);
  @$pb.TagNumber(9)
  $2.Duration ensureTotalDuration() => $_ensure(7);

  @$pb.TagNumber(10)
  $core.bool get isPublished => $_getBF(8);
  @$pb.TagNumber(10)
  set isPublished($core.bool v) { $_setBool(8, v); }
  @$pb.TagNumber(10)
  $core.bool hasIsPublished() => $_has(8);
  @$pb.TagNumber(10)
  void clearIsPublished() => clearField(10);

  @$pb.TagNumber(11)
  $0.BoolValue get requiresRobot => $_getN(9);
  @$pb.TagNumber(11)
  set requiresRobot($0.BoolValue v) { setField(11, v); }
  @$pb.TagNumber(11)
  $core.bool hasRequiresRobot() => $_has(9);
  @$pb.TagNumber(11)
  void clearRequiresRobot() => clearField(11);
  @$pb.TagNumber(11)
  $0.BoolValue ensureRequiresRobot() => $_ensure(9);

  @$pb.TagNumber(12)
  $0.DoubleValue get grossWeight => $_getN(10);
  @$pb.TagNumber(12)
  set grossWeight($0.DoubleValue v) { setField(12, v); }
  @$pb.TagNumber(12)
  $core.bool hasGrossWeight() => $_has(10);
  @$pb.TagNumber(12)
  void clearGrossWeight() => clearField(12);
  @$pb.TagNumber(12)
  $0.DoubleValue ensureGrossWeight() => $_ensure(10);

  @$pb.TagNumber(13)
  $0.DoubleValue get netWeight => $_getN(11);
  @$pb.TagNumber(13)
  set netWeight($0.DoubleValue v) { setField(13, v); }
  @$pb.TagNumber(13)
  $core.bool hasNetWeight() => $_has(11);
  @$pb.TagNumber(13)
  void clearNetWeight() => clearField(13);
  @$pb.TagNumber(13)
  $0.DoubleValue ensureNetWeight() => $_ensure(11);

  @$pb.TagNumber(14)
  GApplianceType get mainApplianceType => $_getN(12);
  @$pb.TagNumber(14)
  set mainApplianceType(GApplianceType v) { setField(14, v); }
  @$pb.TagNumber(14)
  $core.bool hasMainApplianceType() => $_has(12);
  @$pb.TagNumber(14)
  void clearMainApplianceType() => clearField(14);

  @$pb.TagNumber(15)
  GApplianceType get secondaryApplianceType => $_getN(13);
  @$pb.TagNumber(15)
  set secondaryApplianceType(GApplianceType v) { setField(15, v); }
  @$pb.TagNumber(15)
  $core.bool hasSecondaryApplianceType() => $_has(13);
  @$pb.TagNumber(15)
  void clearSecondaryApplianceType() => clearField(15);

  @$pb.TagNumber(16)
  $core.List<$core.String> get tags => $_getList(14);

  @$pb.TagNumber(17)
  $core.List<$core.String> get extraTags => $_getList(15);

  @$pb.TagNumber(18)
  $core.List<GApplianceType> get moreApplianceTypes => $_getList(16);
}

class GStarship extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GStarship', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'com.company.project'), createEmptyInstance: create)
    ..a<$core.List<$core.int>>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'range', $pb.PbFieldType.OY)
    ..a<$core.List<$core.int>>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'odometer', $pb.PbFieldType.OY)
    ..a<$core.int>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'engineNumber', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  GStarship._() : super();
  factory GStarship({
    $core.List<$core.int>? range,
    $core.List<$core.int>? odometer,
    $core.int? engineNumber,
  }) {
    final _result = create();
    if (range != null) {
      _result.range = range;
    }
    if (odometer != null) {
      _result.odometer = odometer;
    }
    if (engineNumber != null) {
      _result.engineNumber = engineNumber;
    }
    return _result;
  }
  factory GStarship.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GStarship.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GStarship clone() => GStarship()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GStarship copyWith(void Function(GStarship) updates) => super.copyWith((message) => updates(message as GStarship)) as GStarship; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GStarship create() => GStarship._();
  GStarship createEmptyInstance() => create();
  static $pb.PbList<GStarship> createRepeated() => $pb.PbList<GStarship>();
  @$core.pragma('dart2js:noInline')
  static GStarship getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GStarship>(create);
  static GStarship? _defaultInstance;

  @$pb.TagNumber(2)
  $core.List<$core.int> get range => $_getN(0);
  @$pb.TagNumber(2)
  set range($core.List<$core.int> v) { $_setBytes(0, v); }
  @$pb.TagNumber(2)
  $core.bool hasRange() => $_has(0);
  @$pb.TagNumber(2)
  void clearRange() => clearField(2);

  @$pb.TagNumber(3)
  $core.List<$core.int> get odometer => $_getN(1);
  @$pb.TagNumber(3)
  set odometer($core.List<$core.int> v) { $_setBytes(1, v); }
  @$pb.TagNumber(3)
  $core.bool hasOdometer() => $_has(1);
  @$pb.TagNumber(3)
  void clearOdometer() => clearField(3);

  @$pb.TagNumber(4)
  $core.int get engineNumber => $_getIZ(2);
  @$pb.TagNumber(4)
  set engineNumber($core.int v) { $_setSignedInt32(2, v); }
  @$pb.TagNumber(4)
  $core.bool hasEngineNumber() => $_has(2);
  @$pb.TagNumber(4)
  void clearEngineNumber() => clearField(4);
}

class GKnife extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GKnife', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'com.company.project'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'name')
    ..e<GKnifeType>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'type', $pb.PbFieldType.OE, defaultOrMaker: GKnifeType.G_KNIFE_TYPE_CHEFS_KNIFE, valueOf: GKnifeType.valueOf, enumValues: GKnifeType.values)
    ..hasRequiredFields = false
  ;

  GKnife._() : super();
  factory GKnife({
    $core.String? name,
    GKnifeType? type,
  }) {
    final _result = create();
    if (name != null) {
      _result.name = name;
    }
    if (type != null) {
      _result.type = type;
    }
    return _result;
  }
  factory GKnife.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GKnife.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GKnife clone() => GKnife()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GKnife copyWith(void Function(GKnife) updates) => super.copyWith((message) => updates(message as GKnife)) as GKnife; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GKnife create() => GKnife._();
  GKnife createEmptyInstance() => create();
  static $pb.PbList<GKnife> createRepeated() => $pb.PbList<GKnife>();
  @$core.pragma('dart2js:noInline')
  static GKnife getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GKnife>(create);
  static GKnife? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(1)
  set name($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => clearField(1);

  @$pb.TagNumber(2)
  GKnifeType get type => $_getN(1);
  @$pb.TagNumber(2)
  set type(GKnifeType v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasType() => $_has(1);
  @$pb.TagNumber(2)
  void clearType() => clearField(2);
}

class GGarlicPress extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GGarlicPress', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'com.company.project'), createEmptyInstance: create)
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'name')
    ..aOB(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'machineWashable')
    ..hasRequiredFields = false
  ;

  GGarlicPress._() : super();
  factory GGarlicPress({
    $core.String? name,
    $core.bool? machineWashable,
  }) {
    final _result = create();
    if (name != null) {
      _result.name = name;
    }
    if (machineWashable != null) {
      _result.machineWashable = machineWashable;
    }
    return _result;
  }
  factory GGarlicPress.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GGarlicPress.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GGarlicPress clone() => GGarlicPress()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GGarlicPress copyWith(void Function(GGarlicPress) updates) => super.copyWith((message) => updates(message as GGarlicPress)) as GGarlicPress; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GGarlicPress create() => GGarlicPress._();
  GGarlicPress createEmptyInstance() => create();
  static $pb.PbList<GGarlicPress> createRepeated() => $pb.PbList<GGarlicPress>();
  @$core.pragma('dart2js:noInline')
  static GGarlicPress getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GGarlicPress>(create);
  static GGarlicPress? _defaultInstance;

  @$pb.TagNumber(2)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(2)
  set name($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(2)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(2)
  void clearName() => clearField(2);

  @$pb.TagNumber(3)
  $core.bool get machineWashable => $_getBF(1);
  @$pb.TagNumber(3)
  set machineWashable($core.bool v) { $_setBool(1, v); }
  @$pb.TagNumber(3)
  $core.bool hasMachineWashable() => $_has(1);
  @$pb.TagNumber(3)
  void clearMachineWashable() => clearField(3);
}

class GKitchen extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GKitchen', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'com.company.project'), createEmptyInstance: create)
    ..pc<GRecipe>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'recipeList', $pb.PbFieldType.PM, subBuilder: GRecipe.create)
    ..m<$core.String, GRecipe>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'recipeMap', entryClassName: 'GKitchen.RecipeMapEntry', keyFieldType: $pb.PbFieldType.OS, valueFieldType: $pb.PbFieldType.OM, valueCreator: GRecipe.create, packageName: const $pb.PackageName('com.company.project'))
    ..aOM<$1.Timestamp>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'nextInspectionDate', subBuilder: $1.Timestamp.create)
    ..hasRequiredFields = false
  ;

  GKitchen._() : super();
  factory GKitchen({
    $core.Iterable<GRecipe>? recipeList,
    $core.Map<$core.String, GRecipe>? recipeMap,
    $1.Timestamp? nextInspectionDate,
  }) {
    final _result = create();
    if (recipeList != null) {
      _result.recipeList.addAll(recipeList);
    }
    if (recipeMap != null) {
      _result.recipeMap.addAll(recipeMap);
    }
    if (nextInspectionDate != null) {
      _result.nextInspectionDate = nextInspectionDate;
    }
    return _result;
  }
  factory GKitchen.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GKitchen.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GKitchen clone() => GKitchen()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GKitchen copyWith(void Function(GKitchen) updates) => super.copyWith((message) => updates(message as GKitchen)) as GKitchen; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GKitchen create() => GKitchen._();
  GKitchen createEmptyInstance() => create();
  static $pb.PbList<GKitchen> createRepeated() => $pb.PbList<GKitchen>();
  @$core.pragma('dart2js:noInline')
  static GKitchen getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GKitchen>(create);
  static GKitchen? _defaultInstance;

  @$pb.TagNumber(2)
  $core.List<GRecipe> get recipeList => $_getList(0);

  @$pb.TagNumber(3)
  $core.Map<$core.String, GRecipe> get recipeMap => $_getMap(1);

  @$pb.TagNumber(4)
  $1.Timestamp get nextInspectionDate => $_getN(2);
  @$pb.TagNumber(4)
  set nextInspectionDate($1.Timestamp v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasNextInspectionDate() => $_has(2);
  @$pb.TagNumber(4)
  void clearNextInspectionDate() => clearField(4);
  @$pb.TagNumber(4)
  $1.Timestamp ensureNextInspectionDate() => $_ensure(2);
}

class GChef extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GChef', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'com.company.project'), createEmptyInstance: create)
    ..aOM<GRecipe>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'favoriteRecipe', subBuilder: GRecipe.create)
    ..aOM<GKnife>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'favoriteKnife', subBuilder: GKnife.create)
    ..e<GApplianceType>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'favoriteApplianceType', $pb.PbFieldType.OE, defaultOrMaker: GApplianceType.G_APPLIANCE_TYPE_HEAT, valueOf: GApplianceType.valueOf, enumValues: GApplianceType.values)
    ..pPS(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'favoriteWords')
    ..aOM<$1.Timestamp>(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'birthdate', subBuilder: $1.Timestamp.create)
    ..aOM<$2.Duration>(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'shelfLife', subBuilder: $2.Duration.create)
    ..hasRequiredFields = false
  ;

  GChef._() : super();
  factory GChef({
    GRecipe? favoriteRecipe,
    GKnife? favoriteKnife,
    GApplianceType? favoriteApplianceType,
    $core.Iterable<$core.String>? favoriteWords,
    $1.Timestamp? birthdate,
    $2.Duration? shelfLife,
  }) {
    final _result = create();
    if (favoriteRecipe != null) {
      _result.favoriteRecipe = favoriteRecipe;
    }
    if (favoriteKnife != null) {
      _result.favoriteKnife = favoriteKnife;
    }
    if (favoriteApplianceType != null) {
      _result.favoriteApplianceType = favoriteApplianceType;
    }
    if (favoriteWords != null) {
      _result.favoriteWords.addAll(favoriteWords);
    }
    if (birthdate != null) {
      _result.birthdate = birthdate;
    }
    if (shelfLife != null) {
      _result.shelfLife = shelfLife;
    }
    return _result;
  }
  factory GChef.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GChef.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GChef clone() => GChef()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GChef copyWith(void Function(GChef) updates) => super.copyWith((message) => updates(message as GChef)) as GChef; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GChef create() => GChef._();
  GChef createEmptyInstance() => create();
  static $pb.PbList<GChef> createRepeated() => $pb.PbList<GChef>();
  @$core.pragma('dart2js:noInline')
  static GChef getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GChef>(create);
  static GChef? _defaultInstance;

  @$pb.TagNumber(2)
  GRecipe get favoriteRecipe => $_getN(0);
  @$pb.TagNumber(2)
  set favoriteRecipe(GRecipe v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasFavoriteRecipe() => $_has(0);
  @$pb.TagNumber(2)
  void clearFavoriteRecipe() => clearField(2);
  @$pb.TagNumber(2)
  GRecipe ensureFavoriteRecipe() => $_ensure(0);

  @$pb.TagNumber(3)
  GKnife get favoriteKnife => $_getN(1);
  @$pb.TagNumber(3)
  set favoriteKnife(GKnife v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasFavoriteKnife() => $_has(1);
  @$pb.TagNumber(3)
  void clearFavoriteKnife() => clearField(3);
  @$pb.TagNumber(3)
  GKnife ensureFavoriteKnife() => $_ensure(1);

  @$pb.TagNumber(4)
  GApplianceType get favoriteApplianceType => $_getN(2);
  @$pb.TagNumber(4)
  set favoriteApplianceType(GApplianceType v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasFavoriteApplianceType() => $_has(2);
  @$pb.TagNumber(4)
  void clearFavoriteApplianceType() => clearField(4);

  @$pb.TagNumber(5)
  $core.List<$core.String> get favoriteWords => $_getList(3);

  @$pb.TagNumber(6)
  $1.Timestamp get birthdate => $_getN(4);
  @$pb.TagNumber(6)
  set birthdate($1.Timestamp v) { setField(6, v); }
  @$pb.TagNumber(6)
  $core.bool hasBirthdate() => $_has(4);
  @$pb.TagNumber(6)
  void clearBirthdate() => clearField(6);
  @$pb.TagNumber(6)
  $1.Timestamp ensureBirthdate() => $_ensure(4);

  @$pb.TagNumber(7)
  $2.Duration get shelfLife => $_getN(5);
  @$pb.TagNumber(7)
  set shelfLife($2.Duration v) { setField(7, v); }
  @$pb.TagNumber(7)
  $core.bool hasShelfLife() => $_has(5);
  @$pb.TagNumber(7)
  void clearShelfLife() => clearField(7);
  @$pb.TagNumber(7)
  $2.Duration ensureShelfLife() => $_ensure(5);
}

class GSousChef extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GSousChef', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'com.company.project'), createEmptyInstance: create)
    ..aOM<GChef>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'fieldsOfSuperClass', protoName: 'fieldsOfSuperClass', subBuilder: GChef.create)
    ..hasRequiredFields = false
  ;

  GSousChef._() : super();
  factory GSousChef({
    GChef? fieldsOfSuperClass,
  }) {
    final _result = create();
    if (fieldsOfSuperClass != null) {
      _result.fieldsOfSuperClass = fieldsOfSuperClass;
    }
    return _result;
  }
  factory GSousChef.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GSousChef.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GSousChef clone() => GSousChef()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GSousChef copyWith(void Function(GSousChef) updates) => super.copyWith((message) => updates(message as GSousChef)) as GSousChef; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GSousChef create() => GSousChef._();
  GSousChef createEmptyInstance() => create();
  static $pb.PbList<GSousChef> createRepeated() => $pb.PbList<GSousChef>();
  @$core.pragma('dart2js:noInline')
  static GSousChef getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GSousChef>(create);
  static GSousChef? _defaultInstance;

  @$pb.TagNumber(1)
  GChef get fieldsOfSuperClass => $_getN(0);
  @$pb.TagNumber(1)
  set fieldsOfSuperClass(GChef v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasFieldsOfSuperClass() => $_has(0);
  @$pb.TagNumber(1)
  void clearFieldsOfSuperClass() => clearField(1);
  @$pb.TagNumber(1)
  GChef ensureFieldsOfSuperClass() => $_ensure(0);
}

class GKnifeMaster extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GKnifeMaster', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'com.company.project'), createEmptyInstance: create)
    ..aOM<GChef>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'fieldsOfSuperClass', protoName: 'fieldsOfSuperClass', subBuilder: GChef.create)
    ..aOM<GKnife>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'favoriteKnife', subBuilder: GKnife.create)
    ..hasRequiredFields = false
  ;

  GKnifeMaster._() : super();
  factory GKnifeMaster({
    GChef? fieldsOfSuperClass,
    GKnife? favoriteKnife,
  }) {
    final _result = create();
    if (fieldsOfSuperClass != null) {
      _result.fieldsOfSuperClass = fieldsOfSuperClass;
    }
    if (favoriteKnife != null) {
      _result.favoriteKnife = favoriteKnife;
    }
    return _result;
  }
  factory GKnifeMaster.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GKnifeMaster.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GKnifeMaster clone() => GKnifeMaster()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GKnifeMaster copyWith(void Function(GKnifeMaster) updates) => super.copyWith((message) => updates(message as GKnifeMaster)) as GKnifeMaster; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GKnifeMaster create() => GKnifeMaster._();
  GKnifeMaster createEmptyInstance() => create();
  static $pb.PbList<GKnifeMaster> createRepeated() => $pb.PbList<GKnifeMaster>();
  @$core.pragma('dart2js:noInline')
  static GKnifeMaster getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GKnifeMaster>(create);
  static GKnifeMaster? _defaultInstance;

  @$pb.TagNumber(1)
  GChef get fieldsOfSuperClass => $_getN(0);
  @$pb.TagNumber(1)
  set fieldsOfSuperClass(GChef v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasFieldsOfSuperClass() => $_has(0);
  @$pb.TagNumber(1)
  void clearFieldsOfSuperClass() => clearField(1);
  @$pb.TagNumber(1)
  GChef ensureFieldsOfSuperClass() => $_ensure(0);

  @$pb.TagNumber(2)
  GKnife get favoriteKnife => $_getN(1);
  @$pb.TagNumber(2)
  set favoriteKnife(GKnife v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasFavoriteKnife() => $_has(1);
  @$pb.TagNumber(2)
  void clearFavoriteKnife() => clearField(2);
  @$pb.TagNumber(2)
  GKnife ensureFavoriteKnife() => $_ensure(1);
}

class GInventory extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GInventory', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'com.company.project'), createEmptyInstance: create)
    ..m<$core.String, $core.int>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'numberOfThings', entryClassName: 'GInventory.NumberOfThingsEntry', keyFieldType: $pb.PbFieldType.OS, valueFieldType: $pb.PbFieldType.O3, packageName: const $pb.PackageName('com.company.project'))
    ..m<$core.String, GRecipe>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'recipesByName', entryClassName: 'GInventory.RecipesByNameEntry', keyFieldType: $pb.PbFieldType.OS, valueFieldType: $pb.PbFieldType.OM, valueCreator: GRecipe.create, packageName: const $pb.PackageName('com.company.project'))
    ..aOM<$2.Duration>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'timeSpan', subBuilder: $2.Duration.create)
    ..hasRequiredFields = false
  ;

  GInventory._() : super();
  factory GInventory({
    $core.Map<$core.String, $core.int>? numberOfThings,
    $core.Map<$core.String, GRecipe>? recipesByName,
    $2.Duration? timeSpan,
  }) {
    final _result = create();
    if (numberOfThings != null) {
      _result.numberOfThings.addAll(numberOfThings);
    }
    if (recipesByName != null) {
      _result.recipesByName.addAll(recipesByName);
    }
    if (timeSpan != null) {
      _result.timeSpan = timeSpan;
    }
    return _result;
  }
  factory GInventory.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GInventory.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GInventory clone() => GInventory()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GInventory copyWith(void Function(GInventory) updates) => super.copyWith((message) => updates(message as GInventory)) as GInventory; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GInventory create() => GInventory._();
  GInventory createEmptyInstance() => create();
  static $pb.PbList<GInventory> createRepeated() => $pb.PbList<GInventory>();
  @$core.pragma('dart2js:noInline')
  static GInventory getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GInventory>(create);
  static GInventory? _defaultInstance;

  @$pb.TagNumber(2)
  $core.Map<$core.String, $core.int> get numberOfThings => $_getMap(0);

  @$pb.TagNumber(3)
  $core.Map<$core.String, GRecipe> get recipesByName => $_getMap(1);

  @$pb.TagNumber(4)
  $2.Duration get timeSpan => $_getN(2);
  @$pb.TagNumber(4)
  set timeSpan($2.Duration v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasTimeSpan() => $_has(2);
  @$pb.TagNumber(4)
  void clearTimeSpan() => clearField(4);
  @$pb.TagNumber(4)
  $2.Duration ensureTimeSpan() => $_ensure(2);
}

class GPrecisionSubject extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GPrecisionSubject', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'com.company.project'), createEmptyInstance: create)
    ..aOM<$1.Timestamp>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'dateProperty', subBuilder: $1.Timestamp.create)
    ..aOM<$2.Duration>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'durationProperty', subBuilder: $2.Duration.create)
    ..hasRequiredFields = false
  ;

  GPrecisionSubject._() : super();
  factory GPrecisionSubject({
    $1.Timestamp? dateProperty,
    $2.Duration? durationProperty,
  }) {
    final _result = create();
    if (dateProperty != null) {
      _result.dateProperty = dateProperty;
    }
    if (durationProperty != null) {
      _result.durationProperty = durationProperty;
    }
    return _result;
  }
  factory GPrecisionSubject.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GPrecisionSubject.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GPrecisionSubject clone() => GPrecisionSubject()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GPrecisionSubject copyWith(void Function(GPrecisionSubject) updates) => super.copyWith((message) => updates(message as GPrecisionSubject)) as GPrecisionSubject; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GPrecisionSubject create() => GPrecisionSubject._();
  GPrecisionSubject createEmptyInstance() => create();
  static $pb.PbList<GPrecisionSubject> createRepeated() => $pb.PbList<GPrecisionSubject>();
  @$core.pragma('dart2js:noInline')
  static GPrecisionSubject getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GPrecisionSubject>(create);
  static GPrecisionSubject? _defaultInstance;

  @$pb.TagNumber(2)
  $1.Timestamp get dateProperty => $_getN(0);
  @$pb.TagNumber(2)
  set dateProperty($1.Timestamp v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasDateProperty() => $_has(0);
  @$pb.TagNumber(2)
  void clearDateProperty() => clearField(2);
  @$pb.TagNumber(2)
  $1.Timestamp ensureDateProperty() => $_ensure(0);

  @$pb.TagNumber(3)
  $2.Duration get durationProperty => $_getN(1);
  @$pb.TagNumber(3)
  set durationProperty($2.Duration v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasDurationProperty() => $_has(1);
  @$pb.TagNumber(3)
  void clearDurationProperty() => clearField(3);
  @$pb.TagNumber(3)
  $2.Duration ensureDurationProperty() => $_ensure(1);
}

