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
            'useWellKnownTimestamp',
            'useWellKnownDuration',
            'useProtoFieldNamingConventions',
            'packageName',
            'options',
            'prefix',
            'wellKnownDurationType',
            'wellKnownTimestampType',
            'defaultIntPrecision',
            'decimalEncoding',
            'outProtoPath',
            'toEntityMethodName'
          ],
        );
        final val = Config(
          useWellKnownWrappers: $checkedConvert(
              'useWellKnownWrappers', (v) => v as bool? ?? false),
          useWellKnownDuration: $checkedConvert(
              'useWellKnownDuration', (v) => v as bool? ?? false),
          useWellKnownTimestamp: $checkedConvert(
              'useWellKnownTimestamp', (v) => v as bool? ?? false),
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
          wellKnownDurationType: $checkedConvert(
              'wellKnownDurationType', (v) => v as String? ?? r'$Duration'),
          wellKnownTimestampType: $checkedConvert(
              'wellKnownTimestampType', (v) => v as String? ?? r'$Timestamp'),
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
          outProtoPath: $checkedConvert(
              'outProtoPath', (v) => v as String? ?? 'proto/model.proto'),
          toEntityMethodName:
              $checkedConvert('toEntityMethodName', (v) => v as String?),
        );
        return val;
      },
    );

Map<String, dynamic> _$ConfigToJson(Config instance) => <String, dynamic>{
      'useWellKnownWrappers': instance.useWellKnownWrappers,
      'useWellKnownTimestamp': instance.useWellKnownTimestamp,
      'useWellKnownDuration': instance.useWellKnownDuration,
      'useProtoFieldNamingConventions': instance.useProtoFieldNamingConventions,
      'packageName': instance.packageName,
      'options': instance.options,
      'prefix': instance.prefix,
      'wellKnownDurationType': instance.wellKnownDurationType,
      'wellKnownTimestampType': instance.wellKnownTimestampType,
      'defaultIntPrecision':
          _$IntPrecisionEnumMap[instance.defaultIntPrecision]!,
      'decimalEncoding': _$DecimalEncodingEnumMap[instance.decimalEncoding]!,
      'outProtoPath': instance.outProtoPath,
      'toEntityMethodName': instance.toEntityMethodName,
    };

const _$IntPrecisionEnumMap = {
  IntPrecision.int32: 'int32',
  IntPrecision.int64: 'int64',
};

const _$DecimalEncodingEnumMap = {
  DecimalEncoding.binary: 'binary',
  DecimalEncoding.string: 'string',
};
