///
//  Generated code. Do not modify.
//  source: model.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

class GIngredient extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GIngredient', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'com.mycompany.myproject'), createEmptyInstance: create)
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'description')
    ..a<$core.double>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'quantity', $pb.PbFieldType.OD)
    ..a<$core.int>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'batchSize', $pb.PbFieldType.O3)
    ..aInt64(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'estimatedPreparationTime')
    ..aInt64(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'expiryDate')
    ..hasRequiredFields = false
  ;

  GIngredient._() : super();
  factory GIngredient({
    $core.String? description,
    $core.double? quantity,
    $core.int? batchSize,
    $fixnum.Int64? estimatedPreparationTime,
    $fixnum.Int64? expiryDate,
  }) {
    final _result = create();
    if (description != null) {
      _result.description = description;
    }
    if (quantity != null) {
      _result.quantity = quantity;
    }
    if (batchSize != null) {
      _result.batchSize = batchSize;
    }
    if (estimatedPreparationTime != null) {
      _result.estimatedPreparationTime = estimatedPreparationTime;
    }
    if (expiryDate != null) {
      _result.expiryDate = expiryDate;
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
  $core.double get quantity => $_getN(1);
  @$pb.TagNumber(3)
  set quantity($core.double v) { $_setDouble(1, v); }
  @$pb.TagNumber(3)
  $core.bool hasQuantity() => $_has(1);
  @$pb.TagNumber(3)
  void clearQuantity() => clearField(3);

  @$pb.TagNumber(4)
  $core.int get batchSize => $_getIZ(2);
  @$pb.TagNumber(4)
  set batchSize($core.int v) { $_setSignedInt32(2, v); }
  @$pb.TagNumber(4)
  $core.bool hasBatchSize() => $_has(2);
  @$pb.TagNumber(4)
  void clearBatchSize() => clearField(4);

  @$pb.TagNumber(5)
  $fixnum.Int64 get estimatedPreparationTime => $_getI64(3);
  @$pb.TagNumber(5)
  set estimatedPreparationTime($fixnum.Int64 v) { $_setInt64(3, v); }
  @$pb.TagNumber(5)
  $core.bool hasEstimatedPreparationTime() => $_has(3);
  @$pb.TagNumber(5)
  void clearEstimatedPreparationTime() => clearField(5);

  @$pb.TagNumber(6)
  $fixnum.Int64 get expiryDate => $_getI64(4);
  @$pb.TagNumber(6)
  set expiryDate($fixnum.Int64 v) { $_setInt64(4, v); }
  @$pb.TagNumber(6)
  $core.bool hasExpiryDate() => $_has(4);
  @$pb.TagNumber(6)
  void clearExpiryDate() => clearField(6);
}

class GRecipe extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GRecipe', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'com.mycompany.myproject'), createEmptyInstance: create)
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'id')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'ptitle')
    ..pc<GIngredient>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'ingredients', $pb.PbFieldType.PM, subBuilder: GIngredient.create)
    ..hasRequiredFields = false
  ;

  GRecipe._() : super();
  factory GRecipe({
    $core.String? id,
    $core.String? ptitle,
    $core.Iterable<GIngredient>? ingredients,
  }) {
    final _result = create();
    if (id != null) {
      _result.id = id;
    }
    if (ptitle != null) {
      _result.ptitle = ptitle;
    }
    if (ingredients != null) {
      _result.ingredients.addAll(ingredients);
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
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(2)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(2)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(2)
  void clearId() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get ptitle => $_getSZ(1);
  @$pb.TagNumber(3)
  set ptitle($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(3)
  $core.bool hasPtitle() => $_has(1);
  @$pb.TagNumber(3)
  void clearPtitle() => clearField(3);

  @$pb.TagNumber(4)
  $core.List<GIngredient> get ingredients => $_getList(2);
}

class GFieldsOfVehicle extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GFieldsOfVehicle', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'com.mycompany.myproject'), createEmptyInstance: create)
    ..a<$core.double>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'weight', $pb.PbFieldType.OD)
    ..hasRequiredFields = false
  ;

  GFieldsOfVehicle._() : super();
  factory GFieldsOfVehicle({
    $core.double? weight,
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

  @$pb.TagNumber(2)
  $core.double get weight => $_getN(0);
  @$pb.TagNumber(2)
  set weight($core.double v) { $_setDouble(0, v); }
  @$pb.TagNumber(2)
  $core.bool hasWeight() => $_has(0);
  @$pb.TagNumber(2)
  void clearWeight() => clearField(2);
}

enum GVehicle_Props {
  vehicle, 
  car, 
  airplane, 
  notSet
}

class GVehicle extends $pb.GeneratedMessage {
  static const $core.Map<$core.int, GVehicle_Props> _GVehicle_PropsByTag = {
    1 : GVehicle_Props.vehicle,
    2 : GVehicle_Props.car,
    3 : GVehicle_Props.airplane,
    0 : GVehicle_Props.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GVehicle', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'com.mycompany.myproject'), createEmptyInstance: create)
    ..oo(0, [1, 2, 3])
    ..aOM<GFieldsOfVehicle>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'vehicle', subBuilder: GFieldsOfVehicle.create)
    ..aOM<GCar>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'car', subBuilder: GCar.create)
    ..aOM<GAirplane>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'airplane', subBuilder: GAirplane.create)
    ..hasRequiredFields = false
  ;

  GVehicle._() : super();
  factory GVehicle({
    GFieldsOfVehicle? vehicle,
    GCar? car,
    GAirplane? airplane,
  }) {
    final _result = create();
    if (vehicle != null) {
      _result.vehicle = vehicle;
    }
    if (car != null) {
      _result.car = car;
    }
    if (airplane != null) {
      _result.airplane = airplane;
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

  @$pb.TagNumber(2)
  GCar get car => $_getN(1);
  @$pb.TagNumber(2)
  set car(GCar v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasCar() => $_has(1);
  @$pb.TagNumber(2)
  void clearCar() => clearField(2);
  @$pb.TagNumber(2)
  GCar ensureCar() => $_ensure(1);

  @$pb.TagNumber(3)
  GAirplane get airplane => $_getN(2);
  @$pb.TagNumber(3)
  set airplane(GAirplane v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasAirplane() => $_has(2);
  @$pb.TagNumber(3)
  void clearAirplane() => clearField(3);
  @$pb.TagNumber(3)
  GAirplane ensureAirplane() => $_ensure(2);
}

class GAirplane extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GAirplane', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'com.mycompany.myproject'), createEmptyInstance: create)
    ..aOM<GFieldsOfVehicle>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'fieldsOfSuperClass', protoName: 'fieldsOfSuperClass', subBuilder: GFieldsOfVehicle.create)
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'registration')
    ..a<$core.int>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'serviceCeiling', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  GAirplane._() : super();
  factory GAirplane({
    GFieldsOfVehicle? fieldsOfSuperClass,
    $core.String? registration,
    $core.int? serviceCeiling,
  }) {
    final _result = create();
    if (fieldsOfSuperClass != null) {
      _result.fieldsOfSuperClass = fieldsOfSuperClass;
    }
    if (registration != null) {
      _result.registration = registration;
    }
    if (serviceCeiling != null) {
      _result.serviceCeiling = serviceCeiling;
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
  $core.String get registration => $_getSZ(1);
  @$pb.TagNumber(2)
  set registration($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasRegistration() => $_has(1);
  @$pb.TagNumber(2)
  void clearRegistration() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get serviceCeiling => $_getIZ(2);
  @$pb.TagNumber(3)
  set serviceCeiling($core.int v) { $_setSignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasServiceCeiling() => $_has(2);
  @$pb.TagNumber(3)
  void clearServiceCeiling() => clearField(3);
}

class GCar extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GCar', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'com.mycompany.myproject'), createEmptyInstance: create)
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

