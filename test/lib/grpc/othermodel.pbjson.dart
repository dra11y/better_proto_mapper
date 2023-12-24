///
//  Generated code. Do not modify.
//  source: othermodel.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,deprecated_member_use_from_same_package,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use gApplianceTypeDescriptor instead')
const GApplianceType$json = const {
  '1': 'GApplianceType',
  '2': const [
    const {'1': 'G_APPLIANCE_TYPE_HEAT', '2': 0},
    const {'1': 'G_APPLIANCE_TYPE_COLD', '2': 1},
    const {'1': 'G_APPLIANCE_TYPE_CUTLERY', '2': 2},
  ],
};

/// Descriptor for `GApplianceType`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List gApplianceTypeDescriptor = $convert.base64Decode('Cg5HQXBwbGlhbmNlVHlwZRIZChVHX0FQUExJQU5DRV9UWVBFX0hFQVQQABIZChVHX0FQUExJQU5DRV9UWVBFX0NPTEQQARIcChhHX0FQUExJQU5DRV9UWVBFX0NVVExFUlkQAg==');
@$core.Deprecated('Use gRecipeTypesDescriptor instead')
const GRecipeTypes$json = const {
  '1': 'GRecipeTypes',
  '2': const [
    const {'1': 'G_RECIPE_TYPES_COOK', '2': 0},
    const {'1': 'G_RECIPE_TYPES_GRILL', '2': 1},
    const {'1': 'G_RECIPE_TYPES_FRY', '2': 2},
    const {'1': 'G_RECIPE_TYPES_STEW', '2': 3},
  ],
};

/// Descriptor for `GRecipeTypes`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List gRecipeTypesDescriptor = $convert.base64Decode('CgxHUmVjaXBlVHlwZXMSFwoTR19SRUNJUEVfVFlQRVNfQ09PSxAAEhgKFEdfUkVDSVBFX1RZUEVTX0dSSUxMEAESFgoSR19SRUNJUEVfVFlQRVNfRlJZEAISFwoTR19SRUNJUEVfVFlQRVNfU1RFVxAD');
@$core.Deprecated('Use gKnifeTypeDescriptor instead')
const GKnifeType$json = const {
  '1': 'GKnifeType',
  '2': const [
    const {'1': 'G_KNIFE_TYPE_CHEFS_KNIFE', '2': 0},
    const {'1': 'G_KNIFE_TYPE_PARING_KNIFE', '2': 1},
    const {'1': 'G_KNIFE_TYPE_BREAD_KNIFE', '2': 2},
  ],
};

/// Descriptor for `GKnifeType`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List gKnifeTypeDescriptor = $convert.base64Decode('CgpHS25pZmVUeXBlEhwKGEdfS05JRkVfVFlQRV9DSEVGU19LTklGRRAAEh0KGUdfS05JRkVfVFlQRV9QQVJJTkdfS05JRkUQARIcChhHX0tOSUZFX1RZUEVfQlJFQURfS05JRkUQAg==');
@$core.Deprecated('Use gChefTypeDescriptor instead')
const GChefType$json = const {
  '1': 'GChefType',
  '2': const [
    const {'1': 'G_CHEF_TYPE_SENIOR_CHEF', '2': 0},
    const {'1': 'G_CHEF_TYPE_SOUS_CHEF', '2': 1},
    const {'1': 'G_CHEF_TYPE_PASTRY_CHEF', '2': 2},
    const {'1': 'G_CHEF_TYPE_FISH_CHEF', '2': 3},
  ],
};

/// Descriptor for `GChefType`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List gChefTypeDescriptor = $convert.base64Decode('CglHQ2hlZlR5cGUSGwoXR19DSEVGX1RZUEVfU0VOSU9SX0NIRUYQABIZChVHX0NIRUZfVFlQRV9TT1VTX0NIRUYQARIbChdHX0NIRUZfVFlQRV9QQVNUUllfQ0hFRhACEhkKFUdfQ0hFRl9UWVBFX0ZJU0hfQ0hFRhAD');
@$core.Deprecated('Use gFieldsOfAbstractVehicleDescriptor instead')
const GFieldsOfAbstractVehicle$json = const {
  '1': 'GFieldsOfAbstractVehicle',
  '2': const [
    const {'1': 'weight', '3': 2, '4': 1, '5': 5, '10': 'weight'},
  ],
};

/// Descriptor for `GFieldsOfAbstractVehicle`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List gFieldsOfAbstractVehicleDescriptor = $convert.base64Decode('ChhHRmllbGRzT2ZBYnN0cmFjdFZlaGljbGUSFgoGd2VpZ2h0GAIgASgFUgZ3ZWlnaHQ=');
@$core.Deprecated('Use gAbstractVehicleDescriptor instead')
const GAbstractVehicle$json = const {
  '1': 'GAbstractVehicle',
  '2': const [
    const {'1': 'abstract_vehicle', '3': 1, '4': 1, '5': 11, '6': '.com.company.project.GFieldsOfAbstractVehicle', '9': 0, '10': 'abstractVehicle'},
    const {'1': 'bicycle', '3': 3, '4': 1, '5': 11, '6': '.com.company.project.GBicycle', '9': 0, '10': 'bicycle'},
    const {'1': 'scooter', '3': 4, '4': 1, '5': 11, '6': '.com.company.project.GScooter', '9': 0, '10': 'scooter'},
  ],
  '8': const [
    const {'1': 'props'},
  ],
};

/// Descriptor for `GAbstractVehicle`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List gAbstractVehicleDescriptor = $convert.base64Decode('ChBHQWJzdHJhY3RWZWhpY2xlEloKEGFic3RyYWN0X3ZlaGljbGUYASABKAsyLS5jb20uY29tcGFueS5wcm9qZWN0LkdGaWVsZHNPZkFic3RyYWN0VmVoaWNsZUgAUg9hYnN0cmFjdFZlaGljbGUSOQoHYmljeWNsZRgDIAEoCzIdLmNvbS5jb21wYW55LnByb2plY3QuR0JpY3ljbGVIAFIHYmljeWNsZRI5CgdzY29vdGVyGAQgASgLMh0uY29tLmNvbXBhbnkucHJvamVjdC5HU2Nvb3RlckgAUgdzY29vdGVyQgcKBXByb3Bz');
@$core.Deprecated('Use gFieldsOfAircraftDescriptor instead')
const GFieldsOfAircraft$json = const {
  '1': 'GFieldsOfAircraft',
  '2': const [
    const {'1': 'fieldsOfSuperClass', '3': 6, '4': 1, '5': 11, '6': '.com.company.project.GFieldsOfVehicle', '10': 'fieldsOfSuperClass'},
    const {'1': 'service_ceiling', '3': 3, '4': 1, '5': 5, '10': 'serviceCeiling'},
    const {'1': 'key', '3': 4, '4': 1, '5': 9, '10': 'key'},
  ],
};

/// Descriptor for `GFieldsOfAircraft`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List gFieldsOfAircraftDescriptor = $convert.base64Decode('ChFHRmllbGRzT2ZBaXJjcmFmdBJVChJmaWVsZHNPZlN1cGVyQ2xhc3MYBiABKAsyJS5jb20uY29tcGFueS5wcm9qZWN0LkdGaWVsZHNPZlZlaGljbGVSEmZpZWxkc09mU3VwZXJDbGFzcxInCg9zZXJ2aWNlX2NlaWxpbmcYAyABKAVSDnNlcnZpY2VDZWlsaW5nEhAKA2tleRgEIAEoCVIDa2V5');
@$core.Deprecated('Use gAircraftDescriptor instead')
const GAircraft$json = const {
  '1': 'GAircraft',
  '2': const [
    const {'1': 'aircraft', '3': 1, '4': 1, '5': 11, '6': '.com.company.project.GFieldsOfAircraft', '9': 0, '10': 'aircraft'},
    const {'1': 'airplane', '3': 3, '4': 1, '5': 11, '6': '.com.company.project.GAirplane', '9': 0, '10': 'airplane'},
    const {'1': 'rotorcraft', '3': 4, '4': 1, '5': 11, '6': '.com.company.project.GRotorcraft', '9': 0, '10': 'rotorcraft'},
    const {'1': 'balloon', '3': 5, '4': 1, '5': 11, '6': '.com.company.project.GBalloon', '9': 0, '10': 'balloon'},
  ],
  '8': const [
    const {'1': 'props'},
  ],
};

/// Descriptor for `GAircraft`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List gAircraftDescriptor = $convert.base64Decode('CglHQWlyY3JhZnQSRAoIYWlyY3JhZnQYASABKAsyJi5jb20uY29tcGFueS5wcm9qZWN0LkdGaWVsZHNPZkFpcmNyYWZ0SABSCGFpcmNyYWZ0EjwKCGFpcnBsYW5lGAMgASgLMh4uY29tLmNvbXBhbnkucHJvamVjdC5HQWlycGxhbmVIAFIIYWlycGxhbmUSQgoKcm90b3JjcmFmdBgEIAEoCzIgLmNvbS5jb21wYW55LnByb2plY3QuR1JvdG9yY3JhZnRIAFIKcm90b3JjcmFmdBI5CgdiYWxsb29uGAUgASgLMh0uY29tLmNvbXBhbnkucHJvamVjdC5HQmFsbG9vbkgAUgdiYWxsb29uQgcKBXByb3Bz');
@$core.Deprecated('Use gAirplaneDescriptor instead')
const GAirplane$json = const {
  '1': 'GAirplane',
  '2': const [
    const {'1': 'fieldsOfSuperClass', '3': 1, '4': 1, '5': 11, '6': '.com.company.project.GFieldsOfAircraft', '10': 'fieldsOfSuperClass'},
    const {'1': 'wingspan', '3': 2, '4': 1, '5': 5, '10': 'wingspan'},
  ],
};

/// Descriptor for `GAirplane`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List gAirplaneDescriptor = $convert.base64Decode('CglHQWlycGxhbmUSVgoSZmllbGRzT2ZTdXBlckNsYXNzGAEgASgLMiYuY29tLmNvbXBhbnkucHJvamVjdC5HRmllbGRzT2ZBaXJjcmFmdFISZmllbGRzT2ZTdXBlckNsYXNzEhoKCHdpbmdzcGFuGAIgASgFUgh3aW5nc3Bhbg==');
@$core.Deprecated('Use gBalloonDescriptor instead')
const GBalloon$json = const {
  '1': 'GBalloon',
  '2': const [
    const {'1': 'weight', '3': 2, '4': 1, '5': 5, '10': 'weight'},
    const {'1': 'key', '3': 3, '4': 1, '5': 9, '10': 'key'},
    const {'1': 'service_ceiling', '3': 4, '4': 1, '5': 5, '10': 'serviceCeiling'},
  ],
};

/// Descriptor for `GBalloon`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List gBalloonDescriptor = $convert.base64Decode('CghHQmFsbG9vbhIWCgZ3ZWlnaHQYAiABKAVSBndlaWdodBIQCgNrZXkYAyABKAlSA2tleRInCg9zZXJ2aWNlX2NlaWxpbmcYBCABKAVSDnNlcnZpY2VDZWlsaW5n');
@$core.Deprecated('Use gBicycleDescriptor instead')
const GBicycle$json = const {
  '1': 'GBicycle',
  '2': const [
    const {'1': 'fieldsOfSuperClass', '3': 1, '4': 1, '5': 11, '6': '.com.company.project.GFieldsOfAbstractVehicle', '10': 'fieldsOfSuperClass'},
    const {'1': 'wheel_diamater', '3': 2, '4': 1, '5': 12, '10': 'wheelDiamater'},
    const {'1': 'key', '3': 3, '4': 1, '5': 9, '10': 'key'},
  ],
};

/// Descriptor for `GBicycle`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List gBicycleDescriptor = $convert.base64Decode('CghHQmljeWNsZRJdChJmaWVsZHNPZlN1cGVyQ2xhc3MYASABKAsyLS5jb20uY29tcGFueS5wcm9qZWN0LkdGaWVsZHNPZkFic3RyYWN0VmVoaWNsZVISZmllbGRzT2ZTdXBlckNsYXNzEiUKDndoZWVsX2RpYW1hdGVyGAIgASgMUg13aGVlbERpYW1hdGVyEhAKA2tleRgDIAEoCVIDa2V5');
@$core.Deprecated('Use gCarDescriptor instead')
const GCar$json = const {
  '1': 'GCar',
  '2': const [
    const {'1': 'fieldsOfSuperClass', '3': 1, '4': 1, '5': 11, '6': '.com.company.project.GFieldsOfVehicle', '10': 'fieldsOfSuperClass'},
    const {'1': 'number_of_doors', '3': 2, '4': 1, '5': 5, '10': 'numberOfDoors'},
  ],
};

/// Descriptor for `GCar`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List gCarDescriptor = $convert.base64Decode('CgRHQ2FyElUKEmZpZWxkc09mU3VwZXJDbGFzcxgBIAEoCzIlLmNvbS5jb21wYW55LnByb2plY3QuR0ZpZWxkc09mVmVoaWNsZVISZmllbGRzT2ZTdXBlckNsYXNzEiYKD251bWJlcl9vZl9kb29ycxgCIAEoBVINbnVtYmVyT2ZEb29ycw==');
@$core.Deprecated('Use gEntityDescriptor instead')
const GEntity$json = const {
  '1': 'GEntity',
  '2': const [
    const {'1': 'key', '3': 2, '4': 1, '5': 9, '10': 'key'},
  ],
};

/// Descriptor for `GEntity`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List gEntityDescriptor = $convert.base64Decode('CgdHRW50aXR5EhAKA2tleRgCIAEoCVIDa2V5');
@$core.Deprecated('Use gGyrocopterDescriptor instead')
const GGyrocopter$json = const {
  '1': 'GGyrocopter',
  '2': const [
    const {'1': 'fieldsOfSuperClass', '3': 1, '4': 1, '5': 11, '6': '.com.company.project.GFieldsOfRotorcraft', '10': 'fieldsOfSuperClass'},
  ],
};

/// Descriptor for `GGyrocopter`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List gGyrocopterDescriptor = $convert.base64Decode('CgtHR3lyb2NvcHRlchJYChJmaWVsZHNPZlN1cGVyQ2xhc3MYASABKAsyKC5jb20uY29tcGFueS5wcm9qZWN0LkdGaWVsZHNPZlJvdG9yY3JhZnRSEmZpZWxkc09mU3VwZXJDbGFzcw==');
@$core.Deprecated('Use gHelicopterDescriptor instead')
const GHelicopter$json = const {
  '1': 'GHelicopter',
  '2': const [
    const {'1': 'fieldsOfSuperClass', '3': 1, '4': 1, '5': 11, '6': '.com.company.project.GFieldsOfRotorcraft', '10': 'fieldsOfSuperClass'},
  ],
};

/// Descriptor for `GHelicopter`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List gHelicopterDescriptor = $convert.base64Decode('CgtHSGVsaWNvcHRlchJYChJmaWVsZHNPZlN1cGVyQ2xhc3MYASABKAsyKC5jb20uY29tcGFueS5wcm9qZWN0LkdGaWVsZHNPZlJvdG9yY3JhZnRSEmZpZWxkc09mU3VwZXJDbGFzcw==');
@$core.Deprecated('Use gFieldsOfRotorcraftDescriptor instead')
const GFieldsOfRotorcraft$json = const {
  '1': 'GFieldsOfRotorcraft',
  '2': const [
    const {'1': 'fieldsOfSuperClass', '3': 1, '4': 1, '5': 11, '6': '.com.company.project.GFieldsOfAircraft', '10': 'fieldsOfSuperClass'},
  ],
};

/// Descriptor for `GFieldsOfRotorcraft`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List gFieldsOfRotorcraftDescriptor = $convert.base64Decode('ChNHRmllbGRzT2ZSb3RvcmNyYWZ0ElYKEmZpZWxkc09mU3VwZXJDbGFzcxgBIAEoCzImLmNvbS5jb21wYW55LnByb2plY3QuR0ZpZWxkc09mQWlyY3JhZnRSEmZpZWxkc09mU3VwZXJDbGFzcw==');
@$core.Deprecated('Use gRotorcraftDescriptor instead')
const GRotorcraft$json = const {
  '1': 'GRotorcraft',
  '2': const [
    const {'1': 'rotorcraft', '3': 1, '4': 1, '5': 11, '6': '.com.company.project.GFieldsOfRotorcraft', '9': 0, '10': 'rotorcraft'},
    const {'1': 'helicopter', '3': 3, '4': 1, '5': 11, '6': '.com.company.project.GHelicopter', '9': 0, '10': 'helicopter'},
    const {'1': 'gyrocopter', '3': 4, '4': 1, '5': 11, '6': '.com.company.project.GGyrocopter', '9': 0, '10': 'gyrocopter'},
  ],
  '8': const [
    const {'1': 'props'},
  ],
};

/// Descriptor for `GRotorcraft`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List gRotorcraftDescriptor = $convert.base64Decode('CgtHUm90b3JjcmFmdBJKCgpyb3RvcmNyYWZ0GAEgASgLMiguY29tLmNvbXBhbnkucHJvamVjdC5HRmllbGRzT2ZSb3RvcmNyYWZ0SABSCnJvdG9yY3JhZnQSQgoKaGVsaWNvcHRlchgDIAEoCzIgLmNvbS5jb21wYW55LnByb2plY3QuR0hlbGljb3B0ZXJIAFIKaGVsaWNvcHRlchJCCgpneXJvY29wdGVyGAQgASgLMiAuY29tLmNvbXBhbnkucHJvamVjdC5HR3lyb2NvcHRlckgAUgpneXJvY29wdGVyQgcKBXByb3Bz');
@$core.Deprecated('Use gScooterDescriptor instead')
const GScooter$json = const {
  '1': 'GScooter',
  '2': const [
    const {'1': 'fieldsOfSuperClass', '3': 1, '4': 1, '5': 11, '6': '.com.company.project.GFieldsOfAbstractVehicle', '10': 'fieldsOfSuperClass'},
    const {'1': 'key', '3': 2, '4': 1, '5': 9, '10': 'key'},
  ],
};

/// Descriptor for `GScooter`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List gScooterDescriptor = $convert.base64Decode('CghHU2Nvb3RlchJdChJmaWVsZHNPZlN1cGVyQ2xhc3MYASABKAsyLS5jb20uY29tcGFueS5wcm9qZWN0LkdGaWVsZHNPZkFic3RyYWN0VmVoaWNsZVISZmllbGRzT2ZTdXBlckNsYXNzEhAKA2tleRgCIAEoCVIDa2V5');
@$core.Deprecated('Use gFieldsOfVehicleDescriptor instead')
const GFieldsOfVehicle$json = const {
  '1': 'GFieldsOfVehicle',
  '2': const [
    const {'1': 'weight', '3': 5, '4': 1, '5': 5, '10': 'weight'},
  ],
};

/// Descriptor for `GFieldsOfVehicle`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List gFieldsOfVehicleDescriptor = $convert.base64Decode('ChBHRmllbGRzT2ZWZWhpY2xlEhYKBndlaWdodBgFIAEoBVIGd2VpZ2h0');
@$core.Deprecated('Use gVehicleDescriptor instead')
const GVehicle$json = const {
  '1': 'GVehicle',
  '2': const [
    const {'1': 'vehicle', '3': 1, '4': 1, '5': 11, '6': '.com.company.project.GFieldsOfVehicle', '9': 0, '10': 'vehicle'},
    const {'1': 'aircraft', '3': 3, '4': 1, '5': 11, '6': '.com.company.project.GAircraft', '9': 0, '10': 'aircraft'},
    const {'1': 'car', '3': 4, '4': 1, '5': 11, '6': '.com.company.project.GCar', '9': 0, '10': 'car'},
  ],
  '8': const [
    const {'1': 'props'},
  ],
};

/// Descriptor for `GVehicle`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List gVehicleDescriptor = $convert.base64Decode('CghHVmVoaWNsZRJBCgd2ZWhpY2xlGAEgASgLMiUuY29tLmNvbXBhbnkucHJvamVjdC5HRmllbGRzT2ZWZWhpY2xlSABSB3ZlaGljbGUSPAoIYWlyY3JhZnQYAyABKAsyHi5jb20uY29tcGFueS5wcm9qZWN0LkdBaXJjcmFmdEgAUghhaXJjcmFmdBItCgNjYXIYBCABKAsyGS5jb20uY29tcGFueS5wcm9qZWN0LkdDYXJIAFIDY2FyQgcKBXByb3Bz');
@$core.Deprecated('Use gAbstractParentClass1Descriptor instead')
const GAbstractParentClass1$json = const {
  '1': 'GAbstractParentClass1',
};

/// Descriptor for `GAbstractParentClass1`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List gAbstractParentClass1Descriptor = $convert.base64Decode('ChVHQWJzdHJhY3RQYXJlbnRDbGFzczE=');
@$core.Deprecated('Use gFieldsOfAbstractParentClass2Descriptor instead')
const GFieldsOfAbstractParentClass2$json = const {
  '1': 'GFieldsOfAbstractParentClass2',
};

/// Descriptor for `GFieldsOfAbstractParentClass2`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List gFieldsOfAbstractParentClass2Descriptor = $convert.base64Decode('Ch1HRmllbGRzT2ZBYnN0cmFjdFBhcmVudENsYXNzMg==');
@$core.Deprecated('Use gAbstractParentClass2Descriptor instead')
const GAbstractParentClass2$json = const {
  '1': 'GAbstractParentClass2',
  '2': const [
    const {'1': 'abstract_parent_class2', '3': 1, '4': 1, '5': 11, '6': '.com.company.project.GFieldsOfAbstractParentClass2', '9': 0, '10': 'abstractParentClass2'},
    const {'1': 'sub_class1', '3': 3, '4': 1, '5': 11, '6': '.com.company.project.GSubClass1', '9': 0, '10': 'subClass1'},
  ],
  '8': const [
    const {'1': 'props'},
  ],
};

/// Descriptor for `GAbstractParentClass2`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List gAbstractParentClass2Descriptor = $convert.base64Decode('ChVHQWJzdHJhY3RQYXJlbnRDbGFzczISagoWYWJzdHJhY3RfcGFyZW50X2NsYXNzMhgBIAEoCzIyLmNvbS5jb21wYW55LnByb2plY3QuR0ZpZWxkc09mQWJzdHJhY3RQYXJlbnRDbGFzczJIAFIUYWJzdHJhY3RQYXJlbnRDbGFzczISQAoKc3ViX2NsYXNzMRgDIAEoCzIfLmNvbS5jb21wYW55LnByb2plY3QuR1N1YkNsYXNzMUgAUglzdWJDbGFzczFCBwoFcHJvcHM=');
@$core.Deprecated('Use gSubClass1Descriptor instead')
const GSubClass1$json = const {
  '1': 'GSubClass1',
  '2': const [
    const {'1': 'fieldsOfSuperClass', '3': 1, '4': 1, '5': 11, '6': '.com.company.project.GFieldsOfAbstractParentClass2', '10': 'fieldsOfSuperClass'},
  ],
};

/// Descriptor for `GSubClass1`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List gSubClass1Descriptor = $convert.base64Decode('CgpHU3ViQ2xhc3MxEmIKEmZpZWxkc09mU3VwZXJDbGFzcxgBIAEoCzIyLmNvbS5jb21wYW55LnByb2plY3QuR0ZpZWxkc09mQWJzdHJhY3RQYXJlbnRDbGFzczJSEmZpZWxkc09mU3VwZXJDbGFzcw==');
@$core.Deprecated('Use gAltNamingDescriptor instead')
const GAltNaming$json = const {
  '1': 'GAltNaming',
  '2': const [
    const {'1': 'UnconventionalName', '3': 19, '4': 1, '5': 9, '10': 'UnconventionalName'},
    const {'1': 'NUnconventionalName', '3': 20, '4': 1, '5': 11, '6': '.google.protobuf.StringValue', '10': 'NUnconventionalName'},
    const {'1': 'UnconventionalEnumName', '3': 21, '4': 1, '5': 14, '6': '.com.company.project.GApplianceType', '10': 'UnconventionalEnumName'},
    const {'1': 'NUnconventionalEnumName', '3': 22, '4': 1, '5': 14, '6': '.com.company.project.GApplianceType', '10': 'NUnconventionalEnumName'},
    const {'1': 'UnconventionalCategory', '3': 23, '4': 1, '5': 11, '6': '.com.company.project.GEmpty', '10': 'UnconventionalCategory'},
    const {'1': 'NUnconventionalCategory', '3': 24, '4': 1, '5': 11, '6': '.com.company.project.GEmpty', '10': 'NUnconventionalCategory'},
    const {'1': 'UnconventionalList', '3': 25, '4': 3, '5': 11, '6': '.com.company.project.GIngredient', '10': 'UnconventionalList'},
    const {'1': 'UnconventionalDateTime', '3': 26, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'UnconventionalDateTime'},
    const {'1': 'NUnconventionalDateTime', '3': 27, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'NUnconventionalDateTime'},
    const {'1': 'UnconventionalDuration', '3': 28, '4': 1, '5': 11, '6': '.google.protobuf.Duration', '10': 'UnconventionalDuration'},
    const {'1': 'NUnconventionalDuration', '3': 29, '4': 1, '5': 11, '6': '.google.protobuf.Duration', '10': 'NUnconventionalDuration'},
  ],
};

/// Descriptor for `GAltNaming`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List gAltNamingDescriptor = $convert.base64Decode('CgpHQWx0TmFtaW5nEi4KElVuY29udmVudGlvbmFsTmFtZRgTIAEoCVISVW5jb252ZW50aW9uYWxOYW1lEk4KE05VbmNvbnZlbnRpb25hbE5hbWUYFCABKAsyHC5nb29nbGUucHJvdG9idWYuU3RyaW5nVmFsdWVSE05VbmNvbnZlbnRpb25hbE5hbWUSWwoWVW5jb252ZW50aW9uYWxFbnVtTmFtZRgVIAEoDjIjLmNvbS5jb21wYW55LnByb2plY3QuR0FwcGxpYW5jZVR5cGVSFlVuY29udmVudGlvbmFsRW51bU5hbWUSXQoXTlVuY29udmVudGlvbmFsRW51bU5hbWUYFiABKA4yIy5jb20uY29tcGFueS5wcm9qZWN0LkdBcHBsaWFuY2VUeXBlUhdOVW5jb252ZW50aW9uYWxFbnVtTmFtZRJTChZVbmNvbnZlbnRpb25hbENhdGVnb3J5GBcgASgLMhsuY29tLmNvbXBhbnkucHJvamVjdC5HRW1wdHlSFlVuY29udmVudGlvbmFsQ2F0ZWdvcnkSVQoXTlVuY29udmVudGlvbmFsQ2F0ZWdvcnkYGCABKAsyGy5jb20uY29tcGFueS5wcm9qZWN0LkdFbXB0eVIXTlVuY29udmVudGlvbmFsQ2F0ZWdvcnkSUAoSVW5jb252ZW50aW9uYWxMaXN0GBkgAygLMiAuY29tLmNvbXBhbnkucHJvamVjdC5HSW5ncmVkaWVudFISVW5jb252ZW50aW9uYWxMaXN0ElIKFlVuY29udmVudGlvbmFsRGF0ZVRpbWUYGiABKAsyGi5nb29nbGUucHJvdG9idWYuVGltZXN0YW1wUhZVbmNvbnZlbnRpb25hbERhdGVUaW1lElQKF05VbmNvbnZlbnRpb25hbERhdGVUaW1lGBsgASgLMhouZ29vZ2xlLnByb3RvYnVmLlRpbWVzdGFtcFIXTlVuY29udmVudGlvbmFsRGF0ZVRpbWUSUQoWVW5jb252ZW50aW9uYWxEdXJhdGlvbhgcIAEoCzIZLmdvb2dsZS5wcm90b2J1Zi5EdXJhdGlvblIWVW5jb252ZW50aW9uYWxEdXJhdGlvbhJTChdOVW5jb252ZW50aW9uYWxEdXJhdGlvbhgdIAEoCzIZLmdvb2dsZS5wcm90b2J1Zi5EdXJhdGlvblIXTlVuY29udmVudGlvbmFsRHVyYXRpb24=');
@$core.Deprecated('Use gCalcParametersDescriptor instead')
const GCalcParameters$json = const {
  '1': 'GCalcParameters',
  '2': const [
    const {'1': 'parameter1', '3': 2, '4': 1, '5': 5, '10': 'parameter1'},
    const {'1': 'parameter2', '3': 1, '4': 1, '5': 5, '10': 'parameter2'},
    const {'1': 'parameter3', '3': 3, '4': 1, '5': 11, '6': '.google.protobuf.Int32Value', '10': 'parameter3'},
    const {'1': 'parameter4', '3': 4, '4': 1, '5': 11, '6': '.google.protobuf.Int32Value', '10': 'parameter4'},
    const {'1': 'parameter5', '3': 9, '4': 1, '5': 5, '10': 'parameter5'},
  ],
};

/// Descriptor for `GCalcParameters`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List gCalcParametersDescriptor = $convert.base64Decode('Cg9HQ2FsY1BhcmFtZXRlcnMSHgoKcGFyYW1ldGVyMRgCIAEoBVIKcGFyYW1ldGVyMRIeCgpwYXJhbWV0ZXIyGAEgASgFUgpwYXJhbWV0ZXIyEjsKCnBhcmFtZXRlcjMYAyABKAsyGy5nb29nbGUucHJvdG9idWYuSW50MzJWYWx1ZVIKcGFyYW1ldGVyMxI7CgpwYXJhbWV0ZXI0GAQgASgLMhsuZ29vZ2xlLnByb3RvYnVmLkludDMyVmFsdWVSCnBhcmFtZXRlcjQSHgoKcGFyYW1ldGVyNRgJIAEoBVIKcGFyYW1ldGVyNQ==');
@$core.Deprecated('Use gCalcResultDescriptor instead')
const GCalcResult$json = const {
  '1': 'GCalcResult',
  '2': const [
    const {'1': 'result', '3': 2, '4': 1, '5': 5, '10': 'result'},
  ],
};

/// Descriptor for `GCalcResult`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List gCalcResultDescriptor = $convert.base64Decode('CgtHQ2FsY1Jlc3VsdBIWCgZyZXN1bHQYAiABKAVSBnJlc3VsdA==');
@$core.Deprecated('Use gCategoryDescriptor instead')
const GCategory$json = const {
  '1': 'GCategory',
  '2': const [
    const {'1': 'title', '3': 2, '4': 1, '5': 9, '10': 'title'},
    const {'1': 'main_component', '3': 3, '4': 1, '5': 11, '6': '.com.company.project.GComponent', '10': 'mainComponent'},
    const {'1': 'alternative_component', '3': 4, '4': 1, '5': 11, '6': '.com.company.project.GComponent', '10': 'alternativeComponent'},
    const {'1': 'other_components', '3': 5, '4': 3, '5': 11, '6': '.com.company.project.GComponent', '10': 'otherComponents'},
    const {'1': 'secondary_components', '3': 6, '4': 3, '5': 11, '6': '.com.company.project.GComponent', '10': 'secondaryComponents'},
  ],
};

/// Descriptor for `GCategory`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List gCategoryDescriptor = $convert.base64Decode('CglHQ2F0ZWdvcnkSFAoFdGl0bGUYAiABKAlSBXRpdGxlEkYKDm1haW5fY29tcG9uZW50GAMgASgLMh8uY29tLmNvbXBhbnkucHJvamVjdC5HQ29tcG9uZW50Ug1tYWluQ29tcG9uZW50ElQKFWFsdGVybmF0aXZlX2NvbXBvbmVudBgEIAEoCzIfLmNvbS5jb21wYW55LnByb2plY3QuR0NvbXBvbmVudFIUYWx0ZXJuYXRpdmVDb21wb25lbnQSSgoQb3RoZXJfY29tcG9uZW50cxgFIAMoCzIfLmNvbS5jb21wYW55LnByb2plY3QuR0NvbXBvbmVudFIPb3RoZXJDb21wb25lbnRzElIKFHNlY29uZGFyeV9jb21wb25lbnRzGAYgAygLMh8uY29tLmNvbXBhbnkucHJvamVjdC5HQ29tcG9uZW50UhNzZWNvbmRhcnlDb21wb25lbnRz');
@$core.Deprecated('Use gComponentDescriptor instead')
const GComponent$json = const {
  '1': 'GComponent',
  '2': const [
    const {'1': 'description', '3': 2, '4': 1, '5': 9, '10': 'description'},
  ],
};

/// Descriptor for `GComponent`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List gComponentDescriptor = $convert.base64Decode('CgpHQ29tcG9uZW50EiAKC2Rlc2NyaXB0aW9uGAIgASgJUgtkZXNjcmlwdGlvbg==');
@$core.Deprecated('Use gConstructObject1Descriptor instead')
const GConstructObject1$json = const {
  '1': 'GConstructObject1',
  '2': const [
    const {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'number', '3': 3, '4': 1, '5': 5, '10': 'number'},
  ],
};

/// Descriptor for `GConstructObject1`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List gConstructObject1Descriptor = $convert.base64Decode('ChFHQ29uc3RydWN0T2JqZWN0MRISCgRuYW1lGAIgASgJUgRuYW1lEhYKBm51bWJlchgDIAEoBVIGbnVtYmVy');
@$core.Deprecated('Use gConstructObject2Descriptor instead')
const GConstructObject2$json = const {
  '1': 'GConstructObject2',
  '2': const [
    const {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'number', '3': 3, '4': 1, '5': 5, '10': 'number'},
  ],
};

/// Descriptor for `GConstructObject2`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List gConstructObject2Descriptor = $convert.base64Decode('ChFHQ29uc3RydWN0T2JqZWN0MhISCgRuYW1lGAIgASgJUgRuYW1lEhYKBm51bWJlchgDIAEoBVIGbnVtYmVy');
@$core.Deprecated('Use gConstructObject3Descriptor instead')
const GConstructObject3$json = const {
  '1': 'GConstructObject3',
  '2': const [
    const {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'number', '3': 3, '4': 1, '5': 5, '10': 'number'},
  ],
};

/// Descriptor for `GConstructObject3`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List gConstructObject3Descriptor = $convert.base64Decode('ChFHQ29uc3RydWN0T2JqZWN0MxISCgRuYW1lGAIgASgJUgRuYW1lEhYKBm51bWJlchgDIAEoBVIGbnVtYmVy');
@$core.Deprecated('Use gConstructObject4Descriptor instead')
const GConstructObject4$json = const {
  '1': 'GConstructObject4',
  '2': const [
    const {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'number', '3': 3, '4': 1, '5': 5, '10': 'number'},
  ],
};

/// Descriptor for `GConstructObject4`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List gConstructObject4Descriptor = $convert.base64Decode('ChFHQ29uc3RydWN0T2JqZWN0NBISCgRuYW1lGAIgASgJUgRuYW1lEhYKBm51bWJlchgDIAEoBVIGbnVtYmVy');
@$core.Deprecated('Use gConstructObject5Descriptor instead')
const GConstructObject5$json = const {
  '1': 'GConstructObject5',
  '2': const [
    const {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'number', '3': 3, '4': 1, '5': 5, '10': 'number'},
  ],
};

/// Descriptor for `GConstructObject5`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List gConstructObject5Descriptor = $convert.base64Decode('ChFHQ29uc3RydWN0T2JqZWN0NRISCgRuYW1lGAIgASgJUgRuYW1lEhYKBm51bWJlchgDIAEoBVIGbnVtYmVy');
@$core.Deprecated('Use gConstructObject6Descriptor instead')
const GConstructObject6$json = const {
  '1': 'GConstructObject6',
  '2': const [
    const {'1': 'name', '3': 2, '4': 1, '5': 11, '6': '.google.protobuf.StringValue', '10': 'name'},
    const {'1': 'number', '3': 3, '4': 1, '5': 11, '6': '.google.protobuf.Int32Value', '10': 'number'},
  ],
};

/// Descriptor for `GConstructObject6`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List gConstructObject6Descriptor = $convert.base64Decode('ChFHQ29uc3RydWN0T2JqZWN0NhIwCgRuYW1lGAIgASgLMhwuZ29vZ2xlLnByb3RvYnVmLlN0cmluZ1ZhbHVlUgRuYW1lEjMKBm51bWJlchgDIAEoCzIbLmdvb2dsZS5wcm90b2J1Zi5JbnQzMlZhbHVlUgZudW1iZXI=');
@$core.Deprecated('Use gConstructObject7Descriptor instead')
const GConstructObject7$json = const {
  '1': 'GConstructObject7',
  '2': const [
    const {'1': 'number', '3': 2, '4': 1, '5': 11, '6': '.google.protobuf.Int32Value', '10': 'number'},
    const {'1': 'name', '3': 3, '4': 1, '5': 9, '10': 'name'},
  ],
};

/// Descriptor for `GConstructObject7`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List gConstructObject7Descriptor = $convert.base64Decode('ChFHQ29uc3RydWN0T2JqZWN0NxIzCgZudW1iZXIYAiABKAsyGy5nb29nbGUucHJvdG9idWYuSW50MzJWYWx1ZVIGbnVtYmVyEhIKBG5hbWUYAyABKAlSBG5hbWU=');
@$core.Deprecated('Use gConstructObject8Descriptor instead')
const GConstructObject8$json = const {
  '1': 'GConstructObject8',
  '2': const [
    const {'1': 'number', '3': 2, '4': 1, '5': 11, '6': '.google.protobuf.Int32Value', '10': 'number'},
    const {'1': 'name', '3': 3, '4': 1, '5': 9, '10': 'name'},
  ],
};

/// Descriptor for `GConstructObject8`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List gConstructObject8Descriptor = $convert.base64Decode('ChFHQ29uc3RydWN0T2JqZWN0OBIzCgZudW1iZXIYAiABKAsyGy5nb29nbGUucHJvdG9idWYuSW50MzJWYWx1ZVIGbnVtYmVyEhIKBG5hbWUYAyABKAlSBG5hbWU=');
@$core.Deprecated('Use gEmptyDescriptor instead')
const GEmpty$json = const {
  '1': 'GEmpty',
};

/// Descriptor for `GEmpty`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List gEmptyDescriptor = $convert.base64Decode('CgZHRW1wdHk=');
@$core.Deprecated('Use gEncapsulatedFieldsClassDescriptor instead')
const GEncapsulatedFieldsClass$json = const {
  '1': 'GEncapsulatedFieldsClass',
  '2': const [
    const {'1': 'final_string', '3': 1, '4': 1, '5': 9, '10': 'finalString'},
    const {'1': 'encapsulated_string', '3': 2, '4': 1, '5': 9, '10': 'encapsulatedString'},
  ],
};

/// Descriptor for `GEncapsulatedFieldsClass`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List gEncapsulatedFieldsClassDescriptor = $convert.base64Decode('ChhHRW5jYXBzdWxhdGVkRmllbGRzQ2xhc3MSIQoMZmluYWxfc3RyaW5nGAEgASgJUgtmaW5hbFN0cmluZxIvChNlbmNhcHN1bGF0ZWRfc3RyaW5nGAIgASgJUhJlbmNhcHN1bGF0ZWRTdHJpbmc=');
@$core.Deprecated('Use gFieldsOfScheduleConstraintDescriptor instead')
const GFieldsOfScheduleConstraint$json = const {
  '1': 'GFieldsOfScheduleConstraint',
};

/// Descriptor for `GFieldsOfScheduleConstraint`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List gFieldsOfScheduleConstraintDescriptor = $convert.base64Decode('ChtHRmllbGRzT2ZTY2hlZHVsZUNvbnN0cmFpbnQ=');
@$core.Deprecated('Use gScheduleConstraintDescriptor instead')
const GScheduleConstraint$json = const {
  '1': 'GScheduleConstraint',
  '2': const [
    const {'1': 'schedule_constraint', '3': 1, '4': 1, '5': 11, '6': '.com.company.project.GFieldsOfScheduleConstraint', '9': 0, '10': 'scheduleConstraint'},
    const {'1': 'contest_constraint', '3': 3, '4': 1, '5': 11, '6': '.com.company.project.GContestConstraint', '9': 0, '10': 'contestConstraint'},
  ],
  '8': const [
    const {'1': 'props'},
  ],
};

/// Descriptor for `GScheduleConstraint`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List gScheduleConstraintDescriptor = $convert.base64Decode('ChNHU2NoZWR1bGVDb25zdHJhaW50EmMKE3NjaGVkdWxlX2NvbnN0cmFpbnQYASABKAsyMC5jb20uY29tcGFueS5wcm9qZWN0LkdGaWVsZHNPZlNjaGVkdWxlQ29uc3RyYWludEgAUhJzY2hlZHVsZUNvbnN0cmFpbnQSWAoSY29udGVzdF9jb25zdHJhaW50GAMgASgLMicuY29tLmNvbXBhbnkucHJvamVjdC5HQ29udGVzdENvbnN0cmFpbnRIAFIRY29udGVzdENvbnN0cmFpbnRCBwoFcHJvcHM=');
@$core.Deprecated('Use gConstraintAddedDescriptor instead')
const GConstraintAdded$json = const {
  '1': 'GConstraintAdded',
};

/// Descriptor for `GConstraintAdded`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List gConstraintAddedDescriptor = $convert.base64Decode('ChBHQ29uc3RyYWludEFkZGVk');
@$core.Deprecated('Use gContestConstraintDescriptor instead')
const GContestConstraint$json = const {
  '1': 'GContestConstraint',
  '2': const [
    const {'1': 'fieldsOfSuperClass', '3': 1, '4': 1, '5': 11, '6': '.com.company.project.GFieldsOfScheduleConstraint', '10': 'fieldsOfSuperClass'},
  ],
};

/// Descriptor for `GContestConstraint`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List gContestConstraintDescriptor = $convert.base64Decode('ChJHQ29udGVzdENvbnN0cmFpbnQSYAoSZmllbGRzT2ZTdXBlckNsYXNzGAEgASgLMjAuY29tLmNvbXBhbnkucHJvamVjdC5HRmllbGRzT2ZTY2hlZHVsZUNvbnN0cmFpbnRSEmZpZWxkc09mU3VwZXJDbGFzcw==');
@$core.Deprecated('Use gIngredientDescriptor instead')
const GIngredient$json = const {
  '1': 'GIngredient',
  '2': const [
    const {'1': 'description', '3': 2, '4': 1, '5': 9, '10': 'description'},
    const {'1': 'quantity', '3': 3, '4': 1, '5': 12, '10': 'quantity'},
    const {'1': 'precision', '3': 4, '4': 1, '5': 1, '10': 'precision'},
    const {'1': 'cooking_duration', '3': 5, '4': 1, '5': 11, '6': '.google.protobuf.Duration', '10': 'cookingDuration'},
    const {'1': 'main_component', '3': 6, '4': 1, '5': 11, '6': '.com.company.project.GComponent', '10': 'mainComponent'},
    const {'1': 'other_components', '3': 7, '4': 3, '5': 11, '6': '.com.company.project.GComponent', '10': 'otherComponents'},
    const {'1': 'alternative_component', '3': 8, '4': 1, '5': 11, '6': '.com.company.project.GComponent', '10': 'alternativeComponent'},
    const {'1': 'secondary_components', '3': 9, '4': 3, '5': 11, '6': '.com.company.project.GComponent', '10': 'secondaryComponents'},
  ],
};

/// Descriptor for `GIngredient`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List gIngredientDescriptor = $convert.base64Decode('CgtHSW5ncmVkaWVudBIgCgtkZXNjcmlwdGlvbhgCIAEoCVILZGVzY3JpcHRpb24SGgoIcXVhbnRpdHkYAyABKAxSCHF1YW50aXR5EhwKCXByZWNpc2lvbhgEIAEoAVIJcHJlY2lzaW9uEkQKEGNvb2tpbmdfZHVyYXRpb24YBSABKAsyGS5nb29nbGUucHJvdG9idWYuRHVyYXRpb25SD2Nvb2tpbmdEdXJhdGlvbhJGCg5tYWluX2NvbXBvbmVudBgGIAEoCzIfLmNvbS5jb21wYW55LnByb2plY3QuR0NvbXBvbmVudFINbWFpbkNvbXBvbmVudBJKChBvdGhlcl9jb21wb25lbnRzGAcgAygLMh8uY29tLmNvbXBhbnkucHJvamVjdC5HQ29tcG9uZW50Ug9vdGhlckNvbXBvbmVudHMSVAoVYWx0ZXJuYXRpdmVfY29tcG9uZW50GAggASgLMh8uY29tLmNvbXBhbnkucHJvamVjdC5HQ29tcG9uZW50UhRhbHRlcm5hdGl2ZUNvbXBvbmVudBJSChRzZWNvbmRhcnlfY29tcG9uZW50cxgJIAMoCzIfLmNvbS5jb21wYW55LnByb2plY3QuR0NvbXBvbmVudFITc2Vjb25kYXJ5Q29tcG9uZW50cw==');
@$core.Deprecated('Use gFieldsOfBranchDescriptor instead')
const GFieldsOfBranch$json = const {
  '1': 'GFieldsOfBranch',
};

/// Descriptor for `GFieldsOfBranch`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List gFieldsOfBranchDescriptor = $convert.base64Decode('Cg9HRmllbGRzT2ZCcmFuY2g=');
@$core.Deprecated('Use gBranchDescriptor instead')
const GBranch$json = const {
  '1': 'GBranch',
  '2': const [
    const {'1': 'branch', '3': 1, '4': 1, '5': 11, '6': '.com.company.project.GFieldsOfBranch', '9': 0, '10': 'branch'},
    const {'1': 'twig', '3': 3, '4': 1, '5': 11, '6': '.com.company.project.GTwig', '9': 0, '10': 'twig'},
  ],
  '8': const [
    const {'1': 'props'},
  ],
};

/// Descriptor for `GBranch`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List gBranchDescriptor = $convert.base64Decode('CgdHQnJhbmNoEj4KBmJyYW5jaBgBIAEoCzIkLmNvbS5jb21wYW55LnByb2plY3QuR0ZpZWxkc09mQnJhbmNoSABSBmJyYW5jaBIwCgR0d2lnGAMgASgLMhouY29tLmNvbXBhbnkucHJvamVjdC5HVHdpZ0gAUgR0d2lnQgcKBXByb3Bz');
@$core.Deprecated('Use gFieldsOfTwigDescriptor instead')
const GFieldsOfTwig$json = const {
  '1': 'GFieldsOfTwig',
  '2': const [
    const {'1': 'fieldsOfSuperClass', '3': 1, '4': 1, '5': 11, '6': '.com.company.project.GFieldsOfBranch', '10': 'fieldsOfSuperClass'},
    const {'1': 'prop1', '3': 2, '4': 1, '5': 5, '10': 'prop1'},
    const {'1': 'prop2', '3': 4, '4': 1, '5': 5, '10': 'prop2'},
  ],
};

/// Descriptor for `GFieldsOfTwig`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List gFieldsOfTwigDescriptor = $convert.base64Decode('Cg1HRmllbGRzT2ZUd2lnElQKEmZpZWxkc09mU3VwZXJDbGFzcxgBIAEoCzIkLmNvbS5jb21wYW55LnByb2plY3QuR0ZpZWxkc09mQnJhbmNoUhJmaWVsZHNPZlN1cGVyQ2xhc3MSFAoFcHJvcDEYAiABKAVSBXByb3AxEhQKBXByb3AyGAQgASgFUgVwcm9wMg==');
@$core.Deprecated('Use gTwigDescriptor instead')
const GTwig$json = const {
  '1': 'GTwig',
  '2': const [
    const {'1': 'twig', '3': 1, '4': 1, '5': 11, '6': '.com.company.project.GFieldsOfTwig', '9': 0, '10': 'twig'},
    const {'1': 'leaf', '3': 3, '4': 1, '5': 11, '6': '.com.company.project.GLeaf', '9': 0, '10': 'leaf'},
  ],
  '8': const [
    const {'1': 'props'},
  ],
};

/// Descriptor for `GTwig`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List gTwigDescriptor = $convert.base64Decode('CgVHVHdpZxI4CgR0d2lnGAEgASgLMiIuY29tLmNvbXBhbnkucHJvamVjdC5HRmllbGRzT2ZUd2lnSABSBHR3aWcSMAoEbGVhZhgDIAEoCzIaLmNvbS5jb21wYW55LnByb2plY3QuR0xlYWZIAFIEbGVhZkIHCgVwcm9wcw==');
@$core.Deprecated('Use gLeafDescriptor instead')
const GLeaf$json = const {
  '1': 'GLeaf',
  '2': const [
    const {'1': 'fieldsOfSuperClass', '3': 1, '4': 1, '5': 11, '6': '.com.company.project.GFieldsOfTwig', '10': 'fieldsOfSuperClass'},
  ],
};

/// Descriptor for `GLeaf`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List gLeafDescriptor = $convert.base64Decode('CgVHTGVhZhJSChJmaWVsZHNPZlN1cGVyQ2xhc3MYASABKAsyIi5jb20uY29tcGFueS5wcm9qZWN0LkdGaWVsZHNPZlR3aWdSEmZpZWxkc09mU3VwZXJDbGFzcw==');
@$core.Deprecated('Use gKeyDescriptor instead')
const GKey$json = const {
  '1': 'GKey',
  '2': const [
    const {'1': 'key', '3': 2, '4': 1, '5': 9, '10': 'key'},
  ],
};

/// Descriptor for `GKey`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List gKeyDescriptor = $convert.base64Decode('CgRHS2V5EhAKA2tleRgCIAEoCVIDa2V5');
@$core.Deprecated('Use gListsHostDescriptor instead')
const GListsHost$json = const {
  '1': 'GListsHost',
  '2': const [
    const {'1': 'vbools', '3': 2, '4': 3, '5': 8, '10': 'vbools'},
    const {'1': 'nvbools', '3': 3, '4': 3, '5': 8, '10': 'nvbools'},
    const {'1': 'vstrings', '3': 4, '4': 3, '5': 9, '10': 'vstrings'},
    const {'1': 'nvstrings', '3': 5, '4': 3, '5': 9, '10': 'nvstrings'},
    const {'1': 'vdurations', '3': 6, '4': 3, '5': 11, '6': '.google.protobuf.Duration', '10': 'vdurations'},
    const {'1': 'nvdurations', '3': 7, '4': 3, '5': 11, '6': '.google.protobuf.Duration', '10': 'nvdurations'},
    const {'1': 'vdatetimes', '3': 8, '4': 3, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'vdatetimes'},
    const {'1': 'nvdatetimes', '3': 9, '4': 3, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'nvdatetimes'},
    const {'1': 'vdecimals', '3': 10, '4': 3, '5': 12, '10': 'vdecimals'},
    const {'1': 'nvdecimals', '3': 11, '4': 3, '5': 12, '10': 'nvdecimals'},
    const {'1': 'vints', '3': 12, '4': 3, '5': 5, '10': 'vints'},
    const {'1': 'nvints', '3': 13, '4': 3, '5': 5, '10': 'nvints'},
    const {'1': 'vdoubles', '3': 14, '4': 3, '5': 1, '10': 'vdoubles'},
    const {'1': 'nvdoubles', '3': 15, '4': 3, '5': 1, '10': 'nvdoubles'},
    const {'1': 'vappliance_types', '3': 16, '4': 3, '5': 14, '6': '.com.company.project.GApplianceType', '10': 'vapplianceTypes'},
    const {'1': 'nvappliance_types', '3': 17, '4': 3, '5': 14, '6': '.com.company.project.GApplianceType', '10': 'nvapplianceTypes'},
  ],
};

/// Descriptor for `GListsHost`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List gListsHostDescriptor = $convert.base64Decode('CgpHTGlzdHNIb3N0EhYKBnZib29scxgCIAMoCFIGdmJvb2xzEhgKB252Ym9vbHMYAyADKAhSB252Ym9vbHMSGgoIdnN0cmluZ3MYBCADKAlSCHZzdHJpbmdzEhwKCW52c3RyaW5ncxgFIAMoCVIJbnZzdHJpbmdzEjkKCnZkdXJhdGlvbnMYBiADKAsyGS5nb29nbGUucHJvdG9idWYuRHVyYXRpb25SCnZkdXJhdGlvbnMSOwoLbnZkdXJhdGlvbnMYByADKAsyGS5nb29nbGUucHJvdG9idWYuRHVyYXRpb25SC252ZHVyYXRpb25zEjoKCnZkYXRldGltZXMYCCADKAsyGi5nb29nbGUucHJvdG9idWYuVGltZXN0YW1wUgp2ZGF0ZXRpbWVzEjwKC252ZGF0ZXRpbWVzGAkgAygLMhouZ29vZ2xlLnByb3RvYnVmLlRpbWVzdGFtcFILbnZkYXRldGltZXMSHAoJdmRlY2ltYWxzGAogAygMUgl2ZGVjaW1hbHMSHgoKbnZkZWNpbWFscxgLIAMoDFIKbnZkZWNpbWFscxIUCgV2aW50cxgMIAMoBVIFdmludHMSFgoGbnZpbnRzGA0gAygFUgZudmludHMSGgoIdmRvdWJsZXMYDiADKAFSCHZkb3VibGVzEhwKCW52ZG91YmxlcxgPIAMoAVIJbnZkb3VibGVzEk4KEHZhcHBsaWFuY2VfdHlwZXMYECADKA4yIy5jb20uY29tcGFueS5wcm9qZWN0LkdBcHBsaWFuY2VUeXBlUg92YXBwbGlhbmNlVHlwZXMSUAoRbnZhcHBsaWFuY2VfdHlwZXMYESADKA4yIy5jb20uY29tcGFueS5wcm9qZWN0LkdBcHBsaWFuY2VUeXBlUhBudmFwcGxpYW5jZVR5cGVz');
@$core.Deprecated('Use gPersonDescriptor instead')
const GPerson$json = const {
  '1': 'GPerson',
  '2': const [
    const {'1': 'bool_value', '3': 1, '4': 1, '5': 11, '6': '.google.protobuf.BoolValue', '10': 'boolValue'},
    const {'1': 'dec_val', '3': 2, '4': 1, '5': 12, '10': 'decVal'},
  ],
};

/// Descriptor for `GPerson`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List gPersonDescriptor = $convert.base64Decode('CgdHUGVyc29uEjkKCmJvb2xfdmFsdWUYASABKAsyGi5nb29nbGUucHJvdG9idWYuQm9vbFZhbHVlUglib29sVmFsdWUSFwoHZGVjX3ZhbBgCIAEoDFIGZGVjVmFs');
@$core.Deprecated('Use gRecipeDescriptor instead')
const GRecipe$json = const {
  '1': 'GRecipe',
  '2': const [
    const {'1': 'title', '3': 2, '4': 1, '5': 9, '10': 'title'},
    const {'1': 'description', '3': 3, '4': 1, '5': 11, '6': '.google.protobuf.StringValue', '10': 'description'},
    const {'1': 'category', '3': 4, '4': 1, '5': 11, '6': '.com.company.project.GCategory', '10': 'category'},
    const {'1': 'ingredients', '3': 5, '4': 3, '5': 11, '6': '.com.company.project.GIngredient', '10': 'ingredients'},
    const {'1': 'publish_date', '3': 6, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'publishDate'},
    const {'1': 'expiry_date', '3': 7, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'expiryDate'},
    const {'1': 'preparation_duration', '3': 8, '4': 1, '5': 11, '6': '.google.protobuf.Duration', '10': 'preparationDuration'},
    const {'1': 'total_duration', '3': 9, '4': 1, '5': 11, '6': '.google.protobuf.Duration', '10': 'totalDuration'},
    const {'1': 'is_published', '3': 10, '4': 1, '5': 8, '10': 'isPublished'},
    const {'1': 'requires_robot', '3': 11, '4': 1, '5': 11, '6': '.google.protobuf.BoolValue', '10': 'requiresRobot'},
    const {'1': 'gross_weight', '3': 12, '4': 1, '5': 11, '6': '.google.protobuf.DoubleValue', '10': 'grossWeight'},
    const {'1': 'net_weight', '3': 13, '4': 1, '5': 11, '6': '.google.protobuf.DoubleValue', '10': 'netWeight'},
    const {'1': 'main_appliance_type', '3': 14, '4': 1, '5': 14, '6': '.com.company.project.GApplianceType', '10': 'mainApplianceType'},
    const {'1': 'secondary_appliance_type', '3': 15, '4': 1, '5': 14, '6': '.com.company.project.GApplianceType', '10': 'secondaryApplianceType'},
    const {'1': 'tags', '3': 16, '4': 3, '5': 9, '10': 'tags'},
    const {'1': 'extra_tags', '3': 17, '4': 3, '5': 9, '10': 'extraTags'},
    const {'1': 'more_appliance_types', '3': 18, '4': 3, '5': 14, '6': '.com.company.project.GApplianceType', '10': 'moreApplianceTypes'},
  ],
};

/// Descriptor for `GRecipe`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List gRecipeDescriptor = $convert.base64Decode('CgdHUmVjaXBlEhQKBXRpdGxlGAIgASgJUgV0aXRsZRI+CgtkZXNjcmlwdGlvbhgDIAEoCzIcLmdvb2dsZS5wcm90b2J1Zi5TdHJpbmdWYWx1ZVILZGVzY3JpcHRpb24SOgoIY2F0ZWdvcnkYBCABKAsyHi5jb20uY29tcGFueS5wcm9qZWN0LkdDYXRlZ29yeVIIY2F0ZWdvcnkSQgoLaW5ncmVkaWVudHMYBSADKAsyIC5jb20uY29tcGFueS5wcm9qZWN0LkdJbmdyZWRpZW50UgtpbmdyZWRpZW50cxI9CgxwdWJsaXNoX2RhdGUYBiABKAsyGi5nb29nbGUucHJvdG9idWYuVGltZXN0YW1wUgtwdWJsaXNoRGF0ZRI7CgtleHBpcnlfZGF0ZRgHIAEoCzIaLmdvb2dsZS5wcm90b2J1Zi5UaW1lc3RhbXBSCmV4cGlyeURhdGUSTAoUcHJlcGFyYXRpb25fZHVyYXRpb24YCCABKAsyGS5nb29nbGUucHJvdG9idWYuRHVyYXRpb25SE3ByZXBhcmF0aW9uRHVyYXRpb24SQAoOdG90YWxfZHVyYXRpb24YCSABKAsyGS5nb29nbGUucHJvdG9idWYuRHVyYXRpb25SDXRvdGFsRHVyYXRpb24SIQoMaXNfcHVibGlzaGVkGAogASgIUgtpc1B1Ymxpc2hlZBJBCg5yZXF1aXJlc19yb2JvdBgLIAEoCzIaLmdvb2dsZS5wcm90b2J1Zi5Cb29sVmFsdWVSDXJlcXVpcmVzUm9ib3QSPwoMZ3Jvc3Nfd2VpZ2h0GAwgASgLMhwuZ29vZ2xlLnByb3RvYnVmLkRvdWJsZVZhbHVlUgtncm9zc1dlaWdodBI7CgpuZXRfd2VpZ2h0GA0gASgLMhwuZ29vZ2xlLnByb3RvYnVmLkRvdWJsZVZhbHVlUgluZXRXZWlnaHQSUwoTbWFpbl9hcHBsaWFuY2VfdHlwZRgOIAEoDjIjLmNvbS5jb21wYW55LnByb2plY3QuR0FwcGxpYW5jZVR5cGVSEW1haW5BcHBsaWFuY2VUeXBlEl0KGHNlY29uZGFyeV9hcHBsaWFuY2VfdHlwZRgPIAEoDjIjLmNvbS5jb21wYW55LnByb2plY3QuR0FwcGxpYW5jZVR5cGVSFnNlY29uZGFyeUFwcGxpYW5jZVR5cGUSEgoEdGFncxgQIAMoCVIEdGFncxIdCgpleHRyYV90YWdzGBEgAygJUglleHRyYVRhZ3MSVQoUbW9yZV9hcHBsaWFuY2VfdHlwZXMYEiADKA4yIy5jb20uY29tcGFueS5wcm9qZWN0LkdBcHBsaWFuY2VUeXBlUhJtb3JlQXBwbGlhbmNlVHlwZXM=');
@$core.Deprecated('Use gStarshipDescriptor instead')
const GStarship$json = const {
  '1': 'GStarship',
  '2': const [
    const {'1': 'range', '3': 2, '4': 1, '5': 12, '10': 'range'},
    const {'1': 'odometer', '3': 3, '4': 1, '5': 12, '10': 'odometer'},
    const {'1': 'engine_number', '3': 4, '4': 1, '5': 5, '10': 'engineNumber'},
  ],
};

/// Descriptor for `GStarship`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List gStarshipDescriptor = $convert.base64Decode('CglHU3RhcnNoaXASFAoFcmFuZ2UYAiABKAxSBXJhbmdlEhoKCG9kb21ldGVyGAMgASgMUghvZG9tZXRlchIjCg1lbmdpbmVfbnVtYmVyGAQgASgFUgxlbmdpbmVOdW1iZXI=');
@$core.Deprecated('Use gKnifeDescriptor instead')
const GKnife$json = const {
  '1': 'GKnife',
  '2': const [
    const {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'type', '3': 2, '4': 1, '5': 14, '6': '.com.company.project.GKnifeType', '10': 'type'},
  ],
};

/// Descriptor for `GKnife`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List gKnifeDescriptor = $convert.base64Decode('CgZHS25pZmUSEgoEbmFtZRgBIAEoCVIEbmFtZRIzCgR0eXBlGAIgASgOMh8uY29tLmNvbXBhbnkucHJvamVjdC5HS25pZmVUeXBlUgR0eXBl');
@$core.Deprecated('Use gGarlicPressDescriptor instead')
const GGarlicPress$json = const {
  '1': 'GGarlicPress',
  '2': const [
    const {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'machine_washable', '3': 3, '4': 1, '5': 8, '10': 'machineWashable'},
  ],
};

/// Descriptor for `GGarlicPress`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List gGarlicPressDescriptor = $convert.base64Decode('CgxHR2FybGljUHJlc3MSEgoEbmFtZRgCIAEoCVIEbmFtZRIpChBtYWNoaW5lX3dhc2hhYmxlGAMgASgIUg9tYWNoaW5lV2FzaGFibGU=');
@$core.Deprecated('Use gKitchenDescriptor instead')
const GKitchen$json = const {
  '1': 'GKitchen',
  '2': const [
    const {'1': 'recipe_list', '3': 2, '4': 3, '5': 11, '6': '.com.company.project.GRecipe', '10': 'recipeList'},
    const {'1': 'recipe_map', '3': 3, '4': 3, '5': 11, '6': '.com.company.project.GKitchen.RecipeMapEntry', '10': 'recipeMap'},
    const {'1': 'next_inspection_date', '3': 4, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'nextInspectionDate'},
  ],
  '3': const [GKitchen_RecipeMapEntry$json],
};

@$core.Deprecated('Use gKitchenDescriptor instead')
const GKitchen_RecipeMapEntry$json = const {
  '1': 'RecipeMapEntry',
  '2': const [
    const {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    const {'1': 'value', '3': 2, '4': 1, '5': 11, '6': '.com.company.project.GRecipe', '10': 'value'},
  ],
  '7': const {'7': true},
};

/// Descriptor for `GKitchen`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List gKitchenDescriptor = $convert.base64Decode('CghHS2l0Y2hlbhI9CgtyZWNpcGVfbGlzdBgCIAMoCzIcLmNvbS5jb21wYW55LnByb2plY3QuR1JlY2lwZVIKcmVjaXBlTGlzdBJLCgpyZWNpcGVfbWFwGAMgAygLMiwuY29tLmNvbXBhbnkucHJvamVjdC5HS2l0Y2hlbi5SZWNpcGVNYXBFbnRyeVIJcmVjaXBlTWFwEkwKFG5leHRfaW5zcGVjdGlvbl9kYXRlGAQgASgLMhouZ29vZ2xlLnByb3RvYnVmLlRpbWVzdGFtcFISbmV4dEluc3BlY3Rpb25EYXRlGloKDlJlY2lwZU1hcEVudHJ5EhAKA2tleRgBIAEoCVIDa2V5EjIKBXZhbHVlGAIgASgLMhwuY29tLmNvbXBhbnkucHJvamVjdC5HUmVjaXBlUgV2YWx1ZToCOAE=');
@$core.Deprecated('Use gChefDescriptor instead')
const GChef$json = const {
  '1': 'GChef',
  '2': const [
    const {'1': 'favorite_recipe', '3': 2, '4': 1, '5': 11, '6': '.com.company.project.GRecipe', '10': 'favoriteRecipe'},
    const {'1': 'favorite_knife', '3': 3, '4': 1, '5': 11, '6': '.com.company.project.GKnife', '10': 'favoriteKnife'},
    const {'1': 'favorite_appliance_type', '3': 4, '4': 1, '5': 14, '6': '.com.company.project.GApplianceType', '10': 'favoriteApplianceType'},
    const {'1': 'favorite_words', '3': 5, '4': 3, '5': 9, '10': 'favoriteWords'},
    const {'1': 'birthdate', '3': 6, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'birthdate'},
    const {'1': 'shelf_life', '3': 7, '4': 1, '5': 11, '6': '.google.protobuf.Duration', '10': 'shelfLife'},
  ],
};

/// Descriptor for `GChef`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List gChefDescriptor = $convert.base64Decode('CgVHQ2hlZhJFCg9mYXZvcml0ZV9yZWNpcGUYAiABKAsyHC5jb20uY29tcGFueS5wcm9qZWN0LkdSZWNpcGVSDmZhdm9yaXRlUmVjaXBlEkIKDmZhdm9yaXRlX2tuaWZlGAMgASgLMhsuY29tLmNvbXBhbnkucHJvamVjdC5HS25pZmVSDWZhdm9yaXRlS25pZmUSWwoXZmF2b3JpdGVfYXBwbGlhbmNlX3R5cGUYBCABKA4yIy5jb20uY29tcGFueS5wcm9qZWN0LkdBcHBsaWFuY2VUeXBlUhVmYXZvcml0ZUFwcGxpYW5jZVR5cGUSJQoOZmF2b3JpdGVfd29yZHMYBSADKAlSDWZhdm9yaXRlV29yZHMSOAoJYmlydGhkYXRlGAYgASgLMhouZ29vZ2xlLnByb3RvYnVmLlRpbWVzdGFtcFIJYmlydGhkYXRlEjgKCnNoZWxmX2xpZmUYByABKAsyGS5nb29nbGUucHJvdG9idWYuRHVyYXRpb25SCXNoZWxmTGlmZQ==');
@$core.Deprecated('Use gSousChefDescriptor instead')
const GSousChef$json = const {
  '1': 'GSousChef',
  '2': const [
    const {'1': 'fieldsOfSuperClass', '3': 1, '4': 1, '5': 11, '6': '.com.company.project.GChef', '10': 'fieldsOfSuperClass'},
  ],
};

/// Descriptor for `GSousChef`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List gSousChefDescriptor = $convert.base64Decode('CglHU291c0NoZWYSSgoSZmllbGRzT2ZTdXBlckNsYXNzGAEgASgLMhouY29tLmNvbXBhbnkucHJvamVjdC5HQ2hlZlISZmllbGRzT2ZTdXBlckNsYXNz');
@$core.Deprecated('Use gKnifeMasterDescriptor instead')
const GKnifeMaster$json = const {
  '1': 'GKnifeMaster',
  '2': const [
    const {'1': 'fieldsOfSuperClass', '3': 1, '4': 1, '5': 11, '6': '.com.company.project.GChef', '10': 'fieldsOfSuperClass'},
    const {'1': 'favorite_knife', '3': 2, '4': 1, '5': 11, '6': '.com.company.project.GKnife', '10': 'favoriteKnife'},
  ],
};

/// Descriptor for `GKnifeMaster`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List gKnifeMasterDescriptor = $convert.base64Decode('CgxHS25pZmVNYXN0ZXISSgoSZmllbGRzT2ZTdXBlckNsYXNzGAEgASgLMhouY29tLmNvbXBhbnkucHJvamVjdC5HQ2hlZlISZmllbGRzT2ZTdXBlckNsYXNzEkIKDmZhdm9yaXRlX2tuaWZlGAIgASgLMhsuY29tLmNvbXBhbnkucHJvamVjdC5HS25pZmVSDWZhdm9yaXRlS25pZmU=');
@$core.Deprecated('Use gInventoryDescriptor instead')
const GInventory$json = const {
  '1': 'GInventory',
  '2': const [
    const {'1': 'number_of_things', '3': 2, '4': 3, '5': 11, '6': '.com.company.project.GInventory.NumberOfThingsEntry', '10': 'numberOfThings'},
    const {'1': 'recipes_by_name', '3': 3, '4': 3, '5': 11, '6': '.com.company.project.GInventory.RecipesByNameEntry', '10': 'recipesByName'},
    const {'1': 'time_span', '3': 4, '4': 1, '5': 11, '6': '.google.protobuf.Duration', '10': 'timeSpan'},
  ],
  '3': const [GInventory_NumberOfThingsEntry$json, GInventory_RecipesByNameEntry$json],
};

@$core.Deprecated('Use gInventoryDescriptor instead')
const GInventory_NumberOfThingsEntry$json = const {
  '1': 'NumberOfThingsEntry',
  '2': const [
    const {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    const {'1': 'value', '3': 2, '4': 1, '5': 5, '10': 'value'},
  ],
  '7': const {'7': true},
};

@$core.Deprecated('Use gInventoryDescriptor instead')
const GInventory_RecipesByNameEntry$json = const {
  '1': 'RecipesByNameEntry',
  '2': const [
    const {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    const {'1': 'value', '3': 2, '4': 1, '5': 11, '6': '.com.company.project.GRecipe', '10': 'value'},
  ],
  '7': const {'7': true},
};

/// Descriptor for `GInventory`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List gInventoryDescriptor = $convert.base64Decode('CgpHSW52ZW50b3J5El0KEG51bWJlcl9vZl90aGluZ3MYAiADKAsyMy5jb20uY29tcGFueS5wcm9qZWN0LkdJbnZlbnRvcnkuTnVtYmVyT2ZUaGluZ3NFbnRyeVIObnVtYmVyT2ZUaGluZ3MSWgoPcmVjaXBlc19ieV9uYW1lGAMgAygLMjIuY29tLmNvbXBhbnkucHJvamVjdC5HSW52ZW50b3J5LlJlY2lwZXNCeU5hbWVFbnRyeVINcmVjaXBlc0J5TmFtZRI2Cgl0aW1lX3NwYW4YBCABKAsyGS5nb29nbGUucHJvdG9idWYuRHVyYXRpb25SCHRpbWVTcGFuGkEKE051bWJlck9mVGhpbmdzRW50cnkSEAoDa2V5GAEgASgJUgNrZXkSFAoFdmFsdWUYAiABKAVSBXZhbHVlOgI4ARpeChJSZWNpcGVzQnlOYW1lRW50cnkSEAoDa2V5GAEgASgJUgNrZXkSMgoFdmFsdWUYAiABKAsyHC5jb20uY29tcGFueS5wcm9qZWN0LkdSZWNpcGVSBXZhbHVlOgI4AQ==');
@$core.Deprecated('Use gPrecisionSubjectDescriptor instead')
const GPrecisionSubject$json = const {
  '1': 'GPrecisionSubject',
  '2': const [
    const {'1': 'date_property', '3': 2, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'dateProperty'},
    const {'1': 'duration_property', '3': 3, '4': 1, '5': 11, '6': '.google.protobuf.Duration', '10': 'durationProperty'},
  ],
};

/// Descriptor for `GPrecisionSubject`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List gPrecisionSubjectDescriptor = $convert.base64Decode('ChFHUHJlY2lzaW9uU3ViamVjdBI/Cg1kYXRlX3Byb3BlcnR5GAIgASgLMhouZ29vZ2xlLnByb3RvYnVmLlRpbWVzdGFtcFIMZGF0ZVByb3BlcnR5EkYKEWR1cmF0aW9uX3Byb3BlcnR5GAMgASgLMhkuZ29vZ2xlLnByb3RvYnVmLkR1cmF0aW9uUhBkdXJhdGlvblByb3BlcnR5');
