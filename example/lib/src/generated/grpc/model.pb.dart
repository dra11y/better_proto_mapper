//
//  Generated code. Do not modify.
//  source: model.proto
//

// ignore_for_file: library_prefixes, unnecessary_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'google/protobuf/timestamp.pb.dart' as $0;

class GAuthor extends $pb.GeneratedMessage {
  GAuthor({
    $core.String? id,
    $core.String? firstName,
    $core.String? lastName,
    $core.Iterable<GBook>? books,
    $core.DateTime? created,
    $core.DateTime? updated,
  }) {
    if (id != null) {
      this.id = id;
    }
    if (firstName != null) {
      this.firstName = firstName;
    }
    if (lastName != null) {
      this.lastName = lastName;
    }
    if (books != null) {
      this.books.addAll(books);
    }
    if (created != null) {
      this.created = created;
    }
    if (updated != null) {
      this.updated = updated;
    }
  }
  GAuthor._() : super();
  factory GAuthor.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GAuthor.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GAuthor', createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..aOS(2, _omitFieldNames ? '' : 'firstName')
    ..aOS(3, _omitFieldNames ? '' : 'lastName')
    ..pc<GBook>(4, _omitFieldNames ? '' : 'books', $pb.PbFieldType.PM, subBuilder: GBook.create)
    ..aOM<$0.Timestamp>(5, _omitFieldNames ? '' : 'created', subBuilder: $0.Timestamp.create)
    ..aOM<$0.Timestamp>(6, _omitFieldNames ? '' : 'updated', subBuilder: $0.Timestamp.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Use deepCopy() instead. '
  'Will be removed in next major version')
  @$core.override GAuthor clone() => deepCopy();
  @$core.Deprecated(
  'Use rebuild(void Function(GAuthor) updates) instead. '
  'Will be removed in next major version')
  @$core.override GAuthor copyWith(void Function(GAuthor) updates) => rebuild(updates);

  @$core.override $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GAuthor create() => GAuthor._();
  @$core.override GAuthor createEmptyInstance() => create();
  static $pb.PbList<GAuthor> createRepeated() => $pb.PbList<GAuthor>();
  @$core.pragma('dart2js:noInline')
  static GAuthor getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GAuthor>(create);
  static GAuthor? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String? get id => $_has(0) ? $_get(0, '') : null;
  @$pb.TagNumber(1)
  set id($core.String? v) { v != null ? $_setString(0, v) : clearField(1); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String? get firstName => $_has(1) ? $_get(1, '') : null;
  @$pb.TagNumber(2)
  set firstName($core.String? v) { v != null ? $_setString(1, v) : clearField(2); }
  @$pb.TagNumber(2)
  $core.bool hasFirstName() => $_has(1);
  @$pb.TagNumber(2)
  void clearFirstName() => clearField(2);

  @$pb.TagNumber(3)
  $core.String? get lastName => $_has(2) ? $_get(2, '') : null;
  @$pb.TagNumber(3)
  set lastName($core.String? v) { v != null ? $_setString(2, v) : clearField(3); }
  @$pb.TagNumber(3)
  $core.bool hasLastName() => $_has(2);
  @$pb.TagNumber(3)
  void clearLastName() => clearField(3);

  @$pb.TagNumber(4)
  $core.List<GBook> get books => $_getList(3);

  @$pb.TagNumber(5)
  $core.DateTime? get created => $_has(4) ? ($_getN(4) as $0.Timestamp).toDateTime() : null;
  @$pb.TagNumber(5)
  set created($core.DateTime? v) { v != null ? setField(5, $0.Timestamp.fromDateTime(v)) : clearField(5); }
  @$pb.TagNumber(5)
  $core.bool hasCreated() => $_has(4);
  @$pb.TagNumber(5)
  void clearCreated() => clearField(5);
  @$pb.TagNumber(5)
  $core.DateTime? ensureCreated() => $_ensure(4);

  @$pb.TagNumber(6)
  $core.DateTime? get updated => $_has(5) ? ($_getN(5) as $0.Timestamp).toDateTime() : null;
  @$pb.TagNumber(6)
  set updated($core.DateTime? v) { v != null ? setField(6, $0.Timestamp.fromDateTime(v)) : clearField(6); }
  @$pb.TagNumber(6)
  $core.bool hasUpdated() => $_has(5);
  @$pb.TagNumber(6)
  void clearUpdated() => clearField(6);
  @$pb.TagNumber(6)
  $core.DateTime? ensureUpdated() => $_ensure(5);
}

class GBook extends $pb.GeneratedMessage {
  GBook({
    $core.String? id,
    $core.String? title,
    $core.Iterable<GAuthor>? authors,
    $core.DateTime? created,
    $core.DateTime? updated,
  }) {
    if (id != null) {
      this.id = id;
    }
    if (title != null) {
      this.title = title;
    }
    if (authors != null) {
      this.authors.addAll(authors);
    }
    if (created != null) {
      this.created = created;
    }
    if (updated != null) {
      this.updated = updated;
    }
  }
  GBook._() : super();
  factory GBook.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GBook.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GBook', createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..aOS(2, _omitFieldNames ? '' : 'title')
    ..pc<GAuthor>(3, _omitFieldNames ? '' : 'authors', $pb.PbFieldType.PM, subBuilder: GAuthor.create)
    ..aOM<$0.Timestamp>(4, _omitFieldNames ? '' : 'created', subBuilder: $0.Timestamp.create)
    ..aOM<$0.Timestamp>(5, _omitFieldNames ? '' : 'updated', subBuilder: $0.Timestamp.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Use deepCopy() instead. '
  'Will be removed in next major version')
  @$core.override GBook clone() => deepCopy();
  @$core.Deprecated(
  'Use rebuild(void Function(GBook) updates) instead. '
  'Will be removed in next major version')
  @$core.override GBook copyWith(void Function(GBook) updates) => rebuild(updates);

  @$core.override $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GBook create() => GBook._();
  @$core.override GBook createEmptyInstance() => create();
  static $pb.PbList<GBook> createRepeated() => $pb.PbList<GBook>();
  @$core.pragma('dart2js:noInline')
  static GBook getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GBook>(create);
  static GBook? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String? get id => $_has(0) ? $_get(0, '') : null;
  @$pb.TagNumber(1)
  set id($core.String? v) { v != null ? $_setString(0, v) : clearField(1); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String? get title => $_has(1) ? $_get(1, '') : null;
  @$pb.TagNumber(2)
  set title($core.String? v) { v != null ? $_setString(1, v) : clearField(2); }
  @$pb.TagNumber(2)
  $core.bool hasTitle() => $_has(1);
  @$pb.TagNumber(2)
  void clearTitle() => clearField(2);

  @$pb.TagNumber(3)
  $core.List<GAuthor> get authors => $_getList(2);

  @$pb.TagNumber(4)
  $core.DateTime? get created => $_has(3) ? ($_getN(3) as $0.Timestamp).toDateTime() : null;
  @$pb.TagNumber(4)
  set created($core.DateTime? v) { v != null ? setField(4, $0.Timestamp.fromDateTime(v)) : clearField(4); }
  @$pb.TagNumber(4)
  $core.bool hasCreated() => $_has(3);
  @$pb.TagNumber(4)
  void clearCreated() => clearField(4);
  @$pb.TagNumber(4)
  $core.DateTime? ensureCreated() => $_ensure(3);

  @$pb.TagNumber(5)
  $core.DateTime? get updated => $_has(4) ? ($_getN(4) as $0.Timestamp).toDateTime() : null;
  @$pb.TagNumber(5)
  set updated($core.DateTime? v) { v != null ? setField(5, $0.Timestamp.fromDateTime(v)) : clearField(5); }
  @$pb.TagNumber(5)
  $core.bool hasUpdated() => $_has(4);
  @$pb.TagNumber(5)
  void clearUpdated() => clearField(5);
  @$pb.TagNumber(5)
  $core.DateTime? ensureUpdated() => $_ensure(4);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
