// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:json_annotation/json_annotation.dart';
import 'package:better_proto_annotations/src/annotations/proto_field.dart';
import 'decimal_encoding.dart';
export 'decimal_encoding.dart';

part 'config.g.dart';

@JsonSerializable(
  checked: true,
  disallowUnrecognizedKeys: true,
)
class Config {
  final bool useWellKnownWrappers;
  final bool useProtoFieldNamingConventions;
  final String packageName;
  final List<String> options;
  final String prefix;
  final IntPrecision defaultIntPrecision;
  final DecimalEncoding decimalEncoding;
  final String outProtoPath;
  final String outGrpcPath;
  final String toEntityMethodName;
  final String barrelCommonExportPackage;

  Config({
    this.useWellKnownWrappers = false,
    this.useProtoFieldNamingConventions = true,
    this.packageName = '',
    this.options = const [],
    this.prefix = 'G',
    this.defaultIntPrecision = IntPrecision.int32,
    this.decimalEncoding = DecimalEncoding.binary,
    this.outProtoPath = 'generated/proto/generated.proto',
    this.outGrpcPath = 'generated/grpc',
    this.toEntityMethodName = 'toEntity',
    this.barrelCommonExportPackage = 'package:protobuf/protobuf.dart',
  });

  factory Config.fromJson(Map<String, dynamic> json) => _$ConfigFromJson(json);
  Map<String, dynamic> toJson() => _$ConfigToJson(this);

  @override
  String toString() =>
      '''$runtimeType(${JsonEncoder.withIndent('  ').convert(toJson())})''';
}
