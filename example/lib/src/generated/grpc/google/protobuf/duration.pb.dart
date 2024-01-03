//
//  Generated code. Do not modify.
//  source: google/protobuf/duration.proto
//

// ignore_for_file: library_prefixes, unnecessary_import

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;
import 'package:protobuf/src/protobuf/mixins/well_known.dart' as $mixin;

///  A Duration represents a signed, fixed-length span of time represented
///  as a count of seconds and fractions of seconds at nanosecond
///  resolution. It is independent of any calendar and concepts like "day"
///  or "month". It is related to Timestamp in that the difference between
///  two Timestamp values is a Duration and it can be added or subtracted
///  from a Timestamp. Range is approximately +-10,000 years.
///
///  # Examples
///
///  Example 1: Compute Duration from two Timestamps in pseudo code.
///
///      Timestamp start = ...;
///      Timestamp end = ...;
///      Duration duration = ...;
///
///      duration.seconds = end.seconds - start.seconds;
///      duration.nanos = end.nanos - start.nanos;
///
///      if (duration.seconds < 0 && duration.nanos > 0) {
///        duration.seconds += 1;
///        duration.nanos -= 1000000000;
///      } else if (duration.seconds > 0 && duration.nanos < 0) {
///        duration.seconds -= 1;
///        duration.nanos += 1000000000;
///      }
///
///  Example 2: Compute Timestamp from Timestamp + Duration in pseudo code.
///
///      Timestamp start = ...;
///      Duration duration = ...;
///      Timestamp end = ...;
///
///      end.seconds = start.seconds + duration.seconds;
///      end.nanos = start.nanos + duration.nanos;
///
///      if (end.nanos < 0) {
///        end.seconds -= 1;
///        end.nanos += 1000000000;
///      } else if (end.nanos >= 1000000000) {
///        end.seconds += 1;
///        end.nanos -= 1000000000;
///      }
///
///  Example 3: Compute Duration from datetime.timedelta in Python.
///
///      td = datetime.timedelta(days=3, minutes=10)
///      duration = Duration()
///      duration.FromTimedelta(td)
///
///  # JSON Mapping
///
///  In JSON format, the Duration type is encoded as a string rather than an
///  object, where the string ends in the suffix "s" (indicating seconds) and
///  is preceded by the number of seconds, with nanoseconds expressed as
///  fractional seconds. For example, 3 seconds with 0 nanoseconds should be
///  encoded in JSON format as "3s", while 3 seconds and 1 nanosecond should
///  be expressed in JSON format as "3.000000001s", and 3 seconds and 1
///  microsecond should be expressed in JSON format as "3.000001s".
class Duration extends $pb.GeneratedMessage with $mixin.DurationMixin {
  Duration({
    $fixnum.Int64? seconds,
    $core.int? nanos,
  }) {
    if (seconds != null) {
      this.seconds = seconds;
    }
    if (nanos != null) {
      this.nanos = nanos;
    }
  }
  Duration._() : super();
  factory Duration.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Duration.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Duration', package: const $pb.PackageName(_omitMessageNames ? '' : 'google.protobuf'), createEmptyInstance: create, toProto3Json: $mixin.DurationMixin.toProto3JsonHelper, fromProto3Json: $mixin.DurationMixin.fromProto3JsonHelper)
    ..aInt64(1, _omitFieldNames ? '' : 'seconds')
    ..a<$core.int>(2, _omitFieldNames ? '' : 'nanos', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Use deepCopy() instead. '
  'Will be removed in next major version')
  @$core.override Duration clone() => deepCopy();
  @$core.Deprecated(
  'Use rebuild(void Function(Duration) updates) instead. '
  'Will be removed in next major version')
  @$core.override Duration copyWith(void Function(Duration) updates) => rebuild(updates);

  @$core.override $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Duration create() => Duration._();
  @$core.override Duration createEmptyInstance() => create();
  static $pb.PbList<Duration> createRepeated() => $pb.PbList<Duration>();
  @$core.pragma('dart2js:noInline')
  static Duration getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Duration>(create);
  static Duration? _defaultInstance;

  /// Signed seconds of the span of time. Must be from -315,576,000,000
  /// to +315,576,000,000 inclusive. Note: these bounds are computed from:
  /// 60 sec/min * 60 min/hr * 24 hr/day * 365.25 days/year * 10000 years
  @$pb.TagNumber(1)
  $fixnum.Int64 get seconds => $_getI64(0);
  @$pb.TagNumber(1)
  set seconds($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSeconds() => $_has(0);
  @$pb.TagNumber(1)
  void clearSeconds() => clearField(1);

  /// Signed fractions of a second at nanosecond resolution of the span
  /// of time. Durations less than one second are represented with a 0
  /// `seconds` field and a positive or negative `nanos` field. For durations
  /// of one second or more, a non-zero value for the `nanos` field must be
  /// of the same sign as the `seconds` field. Must be from -999,999,999
  /// to +999,999,999 inclusive.
  @$pb.TagNumber(2)
  $core.int get nanos => $_getIZ(1);
  @$pb.TagNumber(2)
  set nanos($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasNanos() => $_has(1);
  @$pb.TagNumber(2)
  void clearNanos() => clearField(2);
  /// Creates a new protobuf.Duration from a dart:core Duration [duration].
  static Duration fromDartDuration($core.Duration duration) {
    final seconds = duration.inSeconds;
    final nanoseconds = (duration.inMicroseconds % $core.Duration.microsecondsPerSecond) * 1000;
    return Duration.create()
      ..seconds = $fixnum.Int64(seconds)
      ..nanos = nanoseconds;
  }

  /// Convert this protobuf.Duration back to a Dart Duration
  $core.Duration toDartDuration() {
    final seconds = this.seconds.toInt();
    final totalMicroseconds =
        (seconds * $core.Duration.microsecondsPerSecond) + nanos ~/ 1000;
    return $core.Duration(microseconds: totalMicroseconds);
  }

}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
