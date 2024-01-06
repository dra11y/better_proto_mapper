// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'config.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Config _$ConfigFromJson(Map<String, dynamic> json) => $checkedCreate(
      'Config',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          allowedKeys: const [
            'useWellKnownWrappers',
            'useProtoFieldNamingConventions',
            'packageName',
            'options',
            'prefix',
            'defaultIntPrecision',
            'decimalEncoding',
            'outProtoPath',
            'outGrpcPath',
            'toEntityMethodName',
            'barrelCommonExportPackage'
          ],
        );
        final val = Config(
          useWellKnownWrappers: $checkedConvert(
              'useWellKnownWrappers', (v) => v as bool? ?? false),
          useProtoFieldNamingConventions: $checkedConvert(
              'useProtoFieldNamingConventions', (v) => v as bool? ?? true),
          packageName:
              $checkedConvert('packageName', (v) => v as String? ?? ''),
          options: $checkedConvert(
              'options',
              (v) =>
                  (v as List<dynamic>?)?.map((e) => e as String).toList() ??
                  const []),
          prefix: $checkedConvert('prefix', (v) => v as String? ?? 'G'),
          defaultIntPrecision: $checkedConvert(
              'defaultIntPrecision',
              (v) =>
                  $enumDecodeNullable(_$IntPrecisionEnumMap, v) ??
                  IntPrecision.int32),
          decimalEncoding: $checkedConvert(
              'decimalEncoding',
              (v) =>
                  $enumDecodeNullable(_$DecimalEncodingEnumMap, v) ??
                  DecimalEncoding.binary),
          outProtoPath: $checkedConvert('outProtoPath',
              (v) => v as String? ?? 'generated/proto/generated.proto'),
          outGrpcPath: $checkedConvert(
              'outGrpcPath', (v) => v as String? ?? 'generated/grpc'),
          toEntityMethodName: $checkedConvert(
              'toEntityMethodName', (v) => v as String? ?? 'toEntity'),
          barrelCommonExportPackage: $checkedConvert(
              'barrelCommonExportPackage',
              (v) => v as String? ?? 'package:protobuf/protobuf.dart'),
        );
        return val;
      },
    );

Map<String, dynamic> _$ConfigToJson(Config instance) => <String, dynamic>{
      'useWellKnownWrappers': instance.useWellKnownWrappers,
      'useProtoFieldNamingConventions': instance.useProtoFieldNamingConventions,
      'packageName': instance.packageName,
      'options': instance.options,
      'prefix': instance.prefix,
      'defaultIntPrecision':
          _$IntPrecisionEnumMap[instance.defaultIntPrecision]!,
      'decimalEncoding': _$DecimalEncodingEnumMap[instance.decimalEncoding]!,
      'outProtoPath': instance.outProtoPath,
      'outGrpcPath': instance.outGrpcPath,
      'toEntityMethodName': instance.toEntityMethodName,
      'barrelCommonExportPackage': instance.barrelCommonExportPackage,
    };

const _$IntPrecisionEnumMap = {
  IntPrecision.int32: 'int32',
  IntPrecision.int64: 'int64',
};

const _$DecimalEncodingEnumMap = {
  DecimalEncoding.binary: 'binary',
  DecimalEncoding.string: 'string',
};
