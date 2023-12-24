//
//  Generated code. Do not modify.
//  source: model.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use gApplianceTypeDescriptor instead')
const GApplianceType$json = {
  '1': 'GApplianceType',
  '2': [
    {'1': 'G_APPLIANCE_TYPE_HEAT', '2': 0},
    {'1': 'G_APPLIANCE_TYPE_COLD', '2': 1},
    {'1': 'G_APPLIANCE_TYPE_CUTLERY', '2': 2},
  ],
};

/// Descriptor for `GApplianceType`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List gApplianceTypeDescriptor = $convert.base64Decode(
    'Cg5HQXBwbGlhbmNlVHlwZRIZChVHX0FQUExJQU5DRV9UWVBFX0hFQVQQABIZChVHX0FQUExJQU'
    '5DRV9UWVBFX0NPTEQQARIcChhHX0FQUExJQU5DRV9UWVBFX0NVVExFUlkQAg==');

@$core.Deprecated('Use gRecipeTypesDescriptor instead')
const GRecipeTypes$json = {
  '1': 'GRecipeTypes',
  '2': [
    {'1': 'G_RECIPE_TYPES_COOK', '2': 0},
    {'1': 'G_RECIPE_TYPES_GRILL', '2': 1},
    {'1': 'G_RECIPE_TYPES_FRY', '2': 2},
    {'1': 'G_RECIPE_TYPES_STEW', '2': 3},
  ],
};

/// Descriptor for `GRecipeTypes`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List gRecipeTypesDescriptor = $convert.base64Decode(
    'CgxHUmVjaXBlVHlwZXMSFwoTR19SRUNJUEVfVFlQRVNfQ09PSxAAEhgKFEdfUkVDSVBFX1RZUE'
    'VTX0dSSUxMEAESFgoSR19SRUNJUEVfVFlQRVNfRlJZEAISFwoTR19SRUNJUEVfVFlQRVNfU1RF'
    'VxAD');

@$core.Deprecated('Use gKnifeTypeDescriptor instead')
const GKnifeType$json = {
  '1': 'GKnifeType',
  '2': [
    {'1': 'G_KNIFE_TYPE_CHEFS_KNIFE', '2': 0},
    {'1': 'G_KNIFE_TYPE_PARING_KNIFE', '2': 1},
    {'1': 'G_KNIFE_TYPE_BREAD_KNIFE', '2': 2},
  ],
};

/// Descriptor for `GKnifeType`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List gKnifeTypeDescriptor = $convert.base64Decode(
    'CgpHS25pZmVUeXBlEhwKGEdfS05JRkVfVFlQRV9DSEVGU19LTklGRRAAEh0KGUdfS05JRkVfVF'
    'lQRV9QQVJJTkdfS05JRkUQARIcChhHX0tOSUZFX1RZUEVfQlJFQURfS05JRkUQAg==');

@$core.Deprecated('Use gChefTypeDescriptor instead')
const GChefType$json = {
  '1': 'GChefType',
  '2': [
    {'1': 'G_CHEF_TYPE_SENIOR_CHEF', '2': 0},
    {'1': 'G_CHEF_TYPE_SOUS_CHEF', '2': 1},
    {'1': 'G_CHEF_TYPE_PASTRY_CHEF', '2': 2},
    {'1': 'G_CHEF_TYPE_FISH_CHEF', '2': 3},
  ],
};

/// Descriptor for `GChefType`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List gChefTypeDescriptor = $convert.base64Decode(
    'CglHQ2hlZlR5cGUSGwoXR19DSEVGX1RZUEVfU0VOSU9SX0NIRUYQABIZChVHX0NIRUZfVFlQRV'
    '9TT1VTX0NIRUYQARIbChdHX0NIRUZfVFlQRV9QQVNUUllfQ0hFRhACEhkKFUdfQ0hFRl9UWVBF'
    'X0ZJU0hfQ0hFRhAD');

@$core.Deprecated('Use gAbstractParentClass1Descriptor instead')
const GAbstractParentClass1$json = {
  '1': 'GAbstractParentClass1',
};

/// Descriptor for `GAbstractParentClass1`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List gAbstractParentClass1Descriptor = $convert.base64Decode(
    'ChVHQWJzdHJhY3RQYXJlbnRDbGFzczE=');

@$core.Deprecated('Use gFieldsOfAbstractParentClass2Descriptor instead')
const GFieldsOfAbstractParentClass2$json = {
  '1': 'GFieldsOfAbstractParentClass2',
};

/// Descriptor for `GFieldsOfAbstractParentClass2`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List gFieldsOfAbstractParentClass2Descriptor = $convert.base64Decode(
    'Ch1HRmllbGRzT2ZBYnN0cmFjdFBhcmVudENsYXNzMg==');

@$core.Deprecated('Use gAbstractParentClass2Descriptor instead')
const GAbstractParentClass2$json = {
  '1': 'GAbstractParentClass2',
  '2': [
    {'1': 'abstract_parent_class2', '3': 1, '4': 1, '5': 11, '6': '.com.company.project.GFieldsOfAbstractParentClass2', '9': 0, '10': 'abstractParentClass2'},
    {'1': 'sub_class1', '3': 3, '4': 1, '5': 11, '6': '.com.company.project.GSubClass1', '9': 0, '10': 'subClass1'},
  ],
  '8': [
    {'1': 'props'},
  ],
};

/// Descriptor for `GAbstractParentClass2`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List gAbstractParentClass2Descriptor = $convert.base64Decode(
    'ChVHQWJzdHJhY3RQYXJlbnRDbGFzczISagoWYWJzdHJhY3RfcGFyZW50X2NsYXNzMhgBIAEoCz'
    'IyLmNvbS5jb21wYW55LnByb2plY3QuR0ZpZWxkc09mQWJzdHJhY3RQYXJlbnRDbGFzczJIAFIU'
    'YWJzdHJhY3RQYXJlbnRDbGFzczISQAoKc3ViX2NsYXNzMRgDIAEoCzIfLmNvbS5jb21wYW55Ln'
    'Byb2plY3QuR1N1YkNsYXNzMUgAUglzdWJDbGFzczFCBwoFcHJvcHM=');

@$core.Deprecated('Use gSubClass1Descriptor instead')
const GSubClass1$json = {
  '1': 'GSubClass1',
  '2': [
    {'1': 'fieldsOfSuperClass', '3': 1, '4': 1, '5': 11, '6': '.com.company.project.GFieldsOfAbstractParentClass2', '10': 'fieldsOfSuperClass'},
  ],
};

/// Descriptor for `GSubClass1`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List gSubClass1Descriptor = $convert.base64Decode(
    'CgpHU3ViQ2xhc3MxEmIKEmZpZWxkc09mU3VwZXJDbGFzcxgBIAEoCzIyLmNvbS5jb21wYW55Ln'
    'Byb2plY3QuR0ZpZWxkc09mQWJzdHJhY3RQYXJlbnRDbGFzczJSEmZpZWxkc09mU3VwZXJDbGFz'
    'cw==');

@$core.Deprecated('Use gAltNamingDescriptor instead')
const GAltNaming$json = {
  '1': 'GAltNaming',
  '2': [
    {'1': 'UnconventionalName', '3': 19, '4': 1, '5': 9, '10': 'UnconventionalName'},
    {'1': 'NUnconventionalName', '3': 20, '4': 1, '5': 9, '9': 0, '10': 'NUnconventionalName', '17': true},
    {'1': 'UnconventionalEnumName', '3': 21, '4': 1, '5': 14, '6': '.com.company.project.GApplianceType', '10': 'UnconventionalEnumName'},
    {'1': 'NUnconventionalEnumName', '3': 22, '4': 1, '5': 14, '6': '.com.company.project.GApplianceType', '10': 'NUnconventionalEnumName'},
    {'1': 'UnconventionalCategory', '3': 23, '4': 1, '5': 11, '6': '.com.company.project.GEmpty', '10': 'UnconventionalCategory'},
    {'1': 'NUnconventionalCategory', '3': 24, '4': 1, '5': 11, '6': '.com.company.project.GEmpty', '10': 'NUnconventionalCategory'},
    {'1': 'UnconventionalList', '3': 25, '4': 3, '5': 11, '6': '.com.company.project.GIngredient', '10': 'UnconventionalList'},
    {'1': 'UnconventionalDateTime', '3': 26, '4': 1, '5': 3, '10': 'UnconventionalDateTime'},
    {'1': 'NUnconventionalDateTime', '3': 27, '4': 1, '5': 3, '9': 1, '10': 'NUnconventionalDateTime', '17': true},
    {'1': 'UnconventionalDuration', '3': 28, '4': 1, '5': 3, '10': 'UnconventionalDuration'},
    {'1': 'NUnconventionalDuration', '3': 29, '4': 1, '5': 3, '9': 2, '10': 'NUnconventionalDuration', '17': true},
  ],
  '8': [
    {'1': '_NUnconventionalName'},
    {'1': '_NUnconventionalDateTime'},
    {'1': '_NUnconventionalDuration'},
  ],
};

/// Descriptor for `GAltNaming`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List gAltNamingDescriptor = $convert.base64Decode(
    'CgpHQWx0TmFtaW5nEi4KElVuY29udmVudGlvbmFsTmFtZRgTIAEoCVISVW5jb252ZW50aW9uYW'
    'xOYW1lEjUKE05VbmNvbnZlbnRpb25hbE5hbWUYFCABKAlIAFITTlVuY29udmVudGlvbmFsTmFt'
    'ZYgBARJbChZVbmNvbnZlbnRpb25hbEVudW1OYW1lGBUgASgOMiMuY29tLmNvbXBhbnkucHJvam'
    'VjdC5HQXBwbGlhbmNlVHlwZVIWVW5jb252ZW50aW9uYWxFbnVtTmFtZRJdChdOVW5jb252ZW50'
    'aW9uYWxFbnVtTmFtZRgWIAEoDjIjLmNvbS5jb21wYW55LnByb2plY3QuR0FwcGxpYW5jZVR5cG'
    'VSF05VbmNvbnZlbnRpb25hbEVudW1OYW1lElMKFlVuY29udmVudGlvbmFsQ2F0ZWdvcnkYFyAB'
    'KAsyGy5jb20uY29tcGFueS5wcm9qZWN0LkdFbXB0eVIWVW5jb252ZW50aW9uYWxDYXRlZ29yeR'
    'JVChdOVW5jb252ZW50aW9uYWxDYXRlZ29yeRgYIAEoCzIbLmNvbS5jb21wYW55LnByb2plY3Qu'
    'R0VtcHR5UhdOVW5jb252ZW50aW9uYWxDYXRlZ29yeRJQChJVbmNvbnZlbnRpb25hbExpc3QYGS'
    'ADKAsyIC5jb20uY29tcGFueS5wcm9qZWN0LkdJbmdyZWRpZW50UhJVbmNvbnZlbnRpb25hbExp'
    'c3QSNgoWVW5jb252ZW50aW9uYWxEYXRlVGltZRgaIAEoA1IWVW5jb252ZW50aW9uYWxEYXRlVG'
    'ltZRI9ChdOVW5jb252ZW50aW9uYWxEYXRlVGltZRgbIAEoA0gBUhdOVW5jb252ZW50aW9uYWxE'
    'YXRlVGltZYgBARI2ChZVbmNvbnZlbnRpb25hbER1cmF0aW9uGBwgASgDUhZVbmNvbnZlbnRpb2'
    '5hbER1cmF0aW9uEj0KF05VbmNvbnZlbnRpb25hbER1cmF0aW9uGB0gASgDSAJSF05VbmNvbnZl'
    'bnRpb25hbER1cmF0aW9uiAEBQhYKFF9OVW5jb252ZW50aW9uYWxOYW1lQhoKGF9OVW5jb252ZW'
    '50aW9uYWxEYXRlVGltZUIaChhfTlVuY29udmVudGlvbmFsRHVyYXRpb24=');

@$core.Deprecated('Use gCalcParametersDescriptor instead')
const GCalcParameters$json = {
  '1': 'GCalcParameters',
  '2': [
    {'1': 'parameter1', '3': 2, '4': 1, '5': 5, '10': 'parameter1'},
    {'1': 'parameter2', '3': 1, '4': 1, '5': 5, '10': 'parameter2'},
    {'1': 'parameter3', '3': 3, '4': 1, '5': 5, '9': 0, '10': 'parameter3', '17': true},
    {'1': 'parameter4', '3': 4, '4': 1, '5': 5, '9': 1, '10': 'parameter4', '17': true},
    {'1': 'parameter5', '3': 9, '4': 1, '5': 5, '10': 'parameter5'},
  ],
  '8': [
    {'1': '_parameter3'},
    {'1': '_parameter4'},
  ],
};

/// Descriptor for `GCalcParameters`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List gCalcParametersDescriptor = $convert.base64Decode(
    'Cg9HQ2FsY1BhcmFtZXRlcnMSHgoKcGFyYW1ldGVyMRgCIAEoBVIKcGFyYW1ldGVyMRIeCgpwYX'
    'JhbWV0ZXIyGAEgASgFUgpwYXJhbWV0ZXIyEiMKCnBhcmFtZXRlcjMYAyABKAVIAFIKcGFyYW1l'
    'dGVyM4gBARIjCgpwYXJhbWV0ZXI0GAQgASgFSAFSCnBhcmFtZXRlcjSIAQESHgoKcGFyYW1ldG'
    'VyNRgJIAEoBVIKcGFyYW1ldGVyNUINCgtfcGFyYW1ldGVyM0INCgtfcGFyYW1ldGVyNA==');

@$core.Deprecated('Use gCalcResultDescriptor instead')
const GCalcResult$json = {
  '1': 'GCalcResult',
  '2': [
    {'1': 'result', '3': 2, '4': 1, '5': 5, '10': 'result'},
  ],
};

/// Descriptor for `GCalcResult`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List gCalcResultDescriptor = $convert.base64Decode(
    'CgtHQ2FsY1Jlc3VsdBIWCgZyZXN1bHQYAiABKAVSBnJlc3VsdA==');

@$core.Deprecated('Use gCategoryDescriptor instead')
const GCategory$json = {
  '1': 'GCategory',
  '2': [
    {'1': 'title', '3': 2, '4': 1, '5': 9, '10': 'title'},
    {'1': 'main_component', '3': 3, '4': 1, '5': 11, '6': '.com.company.project.GComponent', '10': 'mainComponent'},
    {'1': 'alternative_component', '3': 4, '4': 1, '5': 11, '6': '.com.company.project.GComponent', '10': 'alternativeComponent'},
    {'1': 'other_components', '3': 5, '4': 3, '5': 11, '6': '.com.company.project.GComponent', '10': 'otherComponents'},
    {'1': 'secondary_components', '3': 6, '4': 3, '5': 11, '6': '.com.company.project.GComponent', '10': 'secondaryComponents'},
  ],
};

/// Descriptor for `GCategory`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List gCategoryDescriptor = $convert.base64Decode(
    'CglHQ2F0ZWdvcnkSFAoFdGl0bGUYAiABKAlSBXRpdGxlEkYKDm1haW5fY29tcG9uZW50GAMgAS'
    'gLMh8uY29tLmNvbXBhbnkucHJvamVjdC5HQ29tcG9uZW50Ug1tYWluQ29tcG9uZW50ElQKFWFs'
    'dGVybmF0aXZlX2NvbXBvbmVudBgEIAEoCzIfLmNvbS5jb21wYW55LnByb2plY3QuR0NvbXBvbm'
    'VudFIUYWx0ZXJuYXRpdmVDb21wb25lbnQSSgoQb3RoZXJfY29tcG9uZW50cxgFIAMoCzIfLmNv'
    'bS5jb21wYW55LnByb2plY3QuR0NvbXBvbmVudFIPb3RoZXJDb21wb25lbnRzElIKFHNlY29uZG'
    'FyeV9jb21wb25lbnRzGAYgAygLMh8uY29tLmNvbXBhbnkucHJvamVjdC5HQ29tcG9uZW50UhNz'
    'ZWNvbmRhcnlDb21wb25lbnRz');

@$core.Deprecated('Use gComponentDescriptor instead')
const GComponent$json = {
  '1': 'GComponent',
  '2': [
    {'1': 'description', '3': 2, '4': 1, '5': 9, '10': 'description'},
  ],
};

/// Descriptor for `GComponent`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List gComponentDescriptor = $convert.base64Decode(
    'CgpHQ29tcG9uZW50EiAKC2Rlc2NyaXB0aW9uGAIgASgJUgtkZXNjcmlwdGlvbg==');

@$core.Deprecated('Use gConstructObject1Descriptor instead')
const GConstructObject1$json = {
  '1': 'GConstructObject1',
  '2': [
    {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    {'1': 'number', '3': 3, '4': 1, '5': 5, '10': 'number'},
  ],
};

/// Descriptor for `GConstructObject1`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List gConstructObject1Descriptor = $convert.base64Decode(
    'ChFHQ29uc3RydWN0T2JqZWN0MRISCgRuYW1lGAIgASgJUgRuYW1lEhYKBm51bWJlchgDIAEoBV'
    'IGbnVtYmVy');

@$core.Deprecated('Use gConstructObject2Descriptor instead')
const GConstructObject2$json = {
  '1': 'GConstructObject2',
  '2': [
    {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    {'1': 'number', '3': 3, '4': 1, '5': 5, '10': 'number'},
  ],
};

/// Descriptor for `GConstructObject2`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List gConstructObject2Descriptor = $convert.base64Decode(
    'ChFHQ29uc3RydWN0T2JqZWN0MhISCgRuYW1lGAIgASgJUgRuYW1lEhYKBm51bWJlchgDIAEoBV'
    'IGbnVtYmVy');

@$core.Deprecated('Use gConstructObject3Descriptor instead')
const GConstructObject3$json = {
  '1': 'GConstructObject3',
  '2': [
    {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    {'1': 'number', '3': 3, '4': 1, '5': 5, '10': 'number'},
  ],
};

/// Descriptor for `GConstructObject3`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List gConstructObject3Descriptor = $convert.base64Decode(
    'ChFHQ29uc3RydWN0T2JqZWN0MxISCgRuYW1lGAIgASgJUgRuYW1lEhYKBm51bWJlchgDIAEoBV'
    'IGbnVtYmVy');

@$core.Deprecated('Use gConstructObject4Descriptor instead')
const GConstructObject4$json = {
  '1': 'GConstructObject4',
  '2': [
    {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    {'1': 'number', '3': 3, '4': 1, '5': 5, '10': 'number'},
  ],
};

/// Descriptor for `GConstructObject4`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List gConstructObject4Descriptor = $convert.base64Decode(
    'ChFHQ29uc3RydWN0T2JqZWN0NBISCgRuYW1lGAIgASgJUgRuYW1lEhYKBm51bWJlchgDIAEoBV'
    'IGbnVtYmVy');

@$core.Deprecated('Use gConstructObject5Descriptor instead')
const GConstructObject5$json = {
  '1': 'GConstructObject5',
  '2': [
    {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    {'1': 'number', '3': 3, '4': 1, '5': 5, '10': 'number'},
  ],
};

/// Descriptor for `GConstructObject5`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List gConstructObject5Descriptor = $convert.base64Decode(
    'ChFHQ29uc3RydWN0T2JqZWN0NRISCgRuYW1lGAIgASgJUgRuYW1lEhYKBm51bWJlchgDIAEoBV'
    'IGbnVtYmVy');

@$core.Deprecated('Use gConstructObject6Descriptor instead')
const GConstructObject6$json = {
  '1': 'GConstructObject6',
  '2': [
    {'1': 'name', '3': 2, '4': 1, '5': 9, '9': 0, '10': 'name', '17': true},
    {'1': 'number', '3': 3, '4': 1, '5': 5, '9': 1, '10': 'number', '17': true},
  ],
  '8': [
    {'1': '_name'},
    {'1': '_number'},
  ],
};

/// Descriptor for `GConstructObject6`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List gConstructObject6Descriptor = $convert.base64Decode(
    'ChFHQ29uc3RydWN0T2JqZWN0NhIXCgRuYW1lGAIgASgJSABSBG5hbWWIAQESGwoGbnVtYmVyGA'
    'MgASgFSAFSBm51bWJlcogBAUIHCgVfbmFtZUIJCgdfbnVtYmVy');

@$core.Deprecated('Use gConstructObject7Descriptor instead')
const GConstructObject7$json = {
  '1': 'GConstructObject7',
  '2': [
    {'1': 'number', '3': 2, '4': 1, '5': 5, '9': 0, '10': 'number', '17': true},
    {'1': 'name', '3': 3, '4': 1, '5': 9, '10': 'name'},
  ],
  '8': [
    {'1': '_number'},
  ],
};

/// Descriptor for `GConstructObject7`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List gConstructObject7Descriptor = $convert.base64Decode(
    'ChFHQ29uc3RydWN0T2JqZWN0NxIbCgZudW1iZXIYAiABKAVIAFIGbnVtYmVyiAEBEhIKBG5hbW'
    'UYAyABKAlSBG5hbWVCCQoHX251bWJlcg==');

@$core.Deprecated('Use gConstructObject8Descriptor instead')
const GConstructObject8$json = {
  '1': 'GConstructObject8',
  '2': [
    {'1': 'number', '3': 2, '4': 1, '5': 5, '9': 0, '10': 'number', '17': true},
    {'1': 'name', '3': 3, '4': 1, '5': 9, '10': 'name'},
  ],
  '8': [
    {'1': '_number'},
  ],
};

/// Descriptor for `GConstructObject8`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List gConstructObject8Descriptor = $convert.base64Decode(
    'ChFHQ29uc3RydWN0T2JqZWN0OBIbCgZudW1iZXIYAiABKAVIAFIGbnVtYmVyiAEBEhIKBG5hbW'
    'UYAyABKAlSBG5hbWVCCQoHX251bWJlcg==');

@$core.Deprecated('Use gEmptyDescriptor instead')
const GEmpty$json = {
  '1': 'GEmpty',
};

/// Descriptor for `GEmpty`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List gEmptyDescriptor = $convert.base64Decode(
    'CgZHRW1wdHk=');

@$core.Deprecated('Use gEncapsulatedFieldsClassDescriptor instead')
const GEncapsulatedFieldsClass$json = {
  '1': 'GEncapsulatedFieldsClass',
  '2': [
    {'1': 'final_string', '3': 1, '4': 1, '5': 9, '10': 'finalString'},
    {'1': 'encapsulated_string', '3': 2, '4': 1, '5': 9, '10': 'encapsulatedString'},
  ],
};

/// Descriptor for `GEncapsulatedFieldsClass`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List gEncapsulatedFieldsClassDescriptor = $convert.base64Decode(
    'ChhHRW5jYXBzdWxhdGVkRmllbGRzQ2xhc3MSIQoMZmluYWxfc3RyaW5nGAEgASgJUgtmaW5hbF'
    'N0cmluZxIvChNlbmNhcHN1bGF0ZWRfc3RyaW5nGAIgASgJUhJlbmNhcHN1bGF0ZWRTdHJpbmc=');

@$core.Deprecated('Use gFieldsOfScheduleConstraintDescriptor instead')
const GFieldsOfScheduleConstraint$json = {
  '1': 'GFieldsOfScheduleConstraint',
};

/// Descriptor for `GFieldsOfScheduleConstraint`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List gFieldsOfScheduleConstraintDescriptor = $convert.base64Decode(
    'ChtHRmllbGRzT2ZTY2hlZHVsZUNvbnN0cmFpbnQ=');

@$core.Deprecated('Use gScheduleConstraintDescriptor instead')
const GScheduleConstraint$json = {
  '1': 'GScheduleConstraint',
  '2': [
    {'1': 'schedule_constraint', '3': 1, '4': 1, '5': 11, '6': '.com.company.project.GFieldsOfScheduleConstraint', '9': 0, '10': 'scheduleConstraint'},
    {'1': 'contest_constraint', '3': 3, '4': 1, '5': 11, '6': '.com.company.project.GContestConstraint', '9': 0, '10': 'contestConstraint'},
  ],
  '8': [
    {'1': 'props'},
  ],
};

/// Descriptor for `GScheduleConstraint`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List gScheduleConstraintDescriptor = $convert.base64Decode(
    'ChNHU2NoZWR1bGVDb25zdHJhaW50EmMKE3NjaGVkdWxlX2NvbnN0cmFpbnQYASABKAsyMC5jb2'
    '0uY29tcGFueS5wcm9qZWN0LkdGaWVsZHNPZlNjaGVkdWxlQ29uc3RyYWludEgAUhJzY2hlZHVs'
    'ZUNvbnN0cmFpbnQSWAoSY29udGVzdF9jb25zdHJhaW50GAMgASgLMicuY29tLmNvbXBhbnkucH'
    'JvamVjdC5HQ29udGVzdENvbnN0cmFpbnRIAFIRY29udGVzdENvbnN0cmFpbnRCBwoFcHJvcHM=');

@$core.Deprecated('Use gConstraintAddedDescriptor instead')
const GConstraintAdded$json = {
  '1': 'GConstraintAdded',
};

/// Descriptor for `GConstraintAdded`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List gConstraintAddedDescriptor = $convert.base64Decode(
    'ChBHQ29uc3RyYWludEFkZGVk');

@$core.Deprecated('Use gContestConstraintDescriptor instead')
const GContestConstraint$json = {
  '1': 'GContestConstraint',
  '2': [
    {'1': 'fieldsOfSuperClass', '3': 1, '4': 1, '5': 11, '6': '.com.company.project.GFieldsOfScheduleConstraint', '10': 'fieldsOfSuperClass'},
  ],
};

/// Descriptor for `GContestConstraint`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List gContestConstraintDescriptor = $convert.base64Decode(
    'ChJHQ29udGVzdENvbnN0cmFpbnQSYAoSZmllbGRzT2ZTdXBlckNsYXNzGAEgASgLMjAuY29tLm'
    'NvbXBhbnkucHJvamVjdC5HRmllbGRzT2ZTY2hlZHVsZUNvbnN0cmFpbnRSEmZpZWxkc09mU3Vw'
    'ZXJDbGFzcw==');

@$core.Deprecated('Use gIngredientDescriptor instead')
const GIngredient$json = {
  '1': 'GIngredient',
  '2': [
    {'1': 'description', '3': 2, '4': 1, '5': 9, '10': 'description'},
    {'1': 'quantity', '3': 3, '4': 1, '5': 9, '10': 'quantity'},
    {'1': 'precision', '3': 4, '4': 1, '5': 1, '10': 'precision'},
    {'1': 'cooking_duration', '3': 5, '4': 1, '5': 3, '10': 'cookingDuration'},
    {'1': 'main_component', '3': 6, '4': 1, '5': 11, '6': '.com.company.project.GComponent', '10': 'mainComponent'},
    {'1': 'other_components', '3': 7, '4': 3, '5': 11, '6': '.com.company.project.GComponent', '10': 'otherComponents'},
    {'1': 'alternative_component', '3': 8, '4': 1, '5': 11, '6': '.com.company.project.GComponent', '10': 'alternativeComponent'},
    {'1': 'secondary_components', '3': 9, '4': 3, '5': 11, '6': '.com.company.project.GComponent', '10': 'secondaryComponents'},
  ],
};

/// Descriptor for `GIngredient`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List gIngredientDescriptor = $convert.base64Decode(
    'CgtHSW5ncmVkaWVudBIgCgtkZXNjcmlwdGlvbhgCIAEoCVILZGVzY3JpcHRpb24SGgoIcXVhbn'
    'RpdHkYAyABKAlSCHF1YW50aXR5EhwKCXByZWNpc2lvbhgEIAEoAVIJcHJlY2lzaW9uEikKEGNv'
    'b2tpbmdfZHVyYXRpb24YBSABKANSD2Nvb2tpbmdEdXJhdGlvbhJGCg5tYWluX2NvbXBvbmVudB'
    'gGIAEoCzIfLmNvbS5jb21wYW55LnByb2plY3QuR0NvbXBvbmVudFINbWFpbkNvbXBvbmVudBJK'
    'ChBvdGhlcl9jb21wb25lbnRzGAcgAygLMh8uY29tLmNvbXBhbnkucHJvamVjdC5HQ29tcG9uZW'
    '50Ug9vdGhlckNvbXBvbmVudHMSVAoVYWx0ZXJuYXRpdmVfY29tcG9uZW50GAggASgLMh8uY29t'
    'LmNvbXBhbnkucHJvamVjdC5HQ29tcG9uZW50UhRhbHRlcm5hdGl2ZUNvbXBvbmVudBJSChRzZW'
    'NvbmRhcnlfY29tcG9uZW50cxgJIAMoCzIfLmNvbS5jb21wYW55LnByb2plY3QuR0NvbXBvbmVu'
    'dFITc2Vjb25kYXJ5Q29tcG9uZW50cw==');

@$core.Deprecated('Use gFieldsOfBranchDescriptor instead')
const GFieldsOfBranch$json = {
  '1': 'GFieldsOfBranch',
};

/// Descriptor for `GFieldsOfBranch`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List gFieldsOfBranchDescriptor = $convert.base64Decode(
    'Cg9HRmllbGRzT2ZCcmFuY2g=');

@$core.Deprecated('Use gBranchDescriptor instead')
const GBranch$json = {
  '1': 'GBranch',
  '2': [
    {'1': 'branch', '3': 1, '4': 1, '5': 11, '6': '.com.company.project.GFieldsOfBranch', '9': 0, '10': 'branch'},
    {'1': 'twig', '3': 3, '4': 1, '5': 11, '6': '.com.company.project.GTwig', '9': 0, '10': 'twig'},
  ],
  '8': [
    {'1': 'props'},
  ],
};

/// Descriptor for `GBranch`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List gBranchDescriptor = $convert.base64Decode(
    'CgdHQnJhbmNoEj4KBmJyYW5jaBgBIAEoCzIkLmNvbS5jb21wYW55LnByb2plY3QuR0ZpZWxkc0'
    '9mQnJhbmNoSABSBmJyYW5jaBIwCgR0d2lnGAMgASgLMhouY29tLmNvbXBhbnkucHJvamVjdC5H'
    'VHdpZ0gAUgR0d2lnQgcKBXByb3Bz');

@$core.Deprecated('Use gFieldsOfTwigDescriptor instead')
const GFieldsOfTwig$json = {
  '1': 'GFieldsOfTwig',
  '2': [
    {'1': 'fieldsOfSuperClass', '3': 1, '4': 1, '5': 11, '6': '.com.company.project.GFieldsOfBranch', '10': 'fieldsOfSuperClass'},
    {'1': 'prop1', '3': 2, '4': 1, '5': 5, '10': 'prop1'},
    {'1': 'prop2', '3': 4, '4': 1, '5': 5, '10': 'prop2'},
  ],
};

/// Descriptor for `GFieldsOfTwig`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List gFieldsOfTwigDescriptor = $convert.base64Decode(
    'Cg1HRmllbGRzT2ZUd2lnElQKEmZpZWxkc09mU3VwZXJDbGFzcxgBIAEoCzIkLmNvbS5jb21wYW'
    '55LnByb2plY3QuR0ZpZWxkc09mQnJhbmNoUhJmaWVsZHNPZlN1cGVyQ2xhc3MSFAoFcHJvcDEY'
    'AiABKAVSBXByb3AxEhQKBXByb3AyGAQgASgFUgVwcm9wMg==');

@$core.Deprecated('Use gTwigDescriptor instead')
const GTwig$json = {
  '1': 'GTwig',
  '2': [
    {'1': 'twig', '3': 1, '4': 1, '5': 11, '6': '.com.company.project.GFieldsOfTwig', '9': 0, '10': 'twig'},
    {'1': 'leaf', '3': 3, '4': 1, '5': 11, '6': '.com.company.project.GLeaf', '9': 0, '10': 'leaf'},
  ],
  '8': [
    {'1': 'props'},
  ],
};

/// Descriptor for `GTwig`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List gTwigDescriptor = $convert.base64Decode(
    'CgVHVHdpZxI4CgR0d2lnGAEgASgLMiIuY29tLmNvbXBhbnkucHJvamVjdC5HRmllbGRzT2ZUd2'
    'lnSABSBHR3aWcSMAoEbGVhZhgDIAEoCzIaLmNvbS5jb21wYW55LnByb2plY3QuR0xlYWZIAFIE'
    'bGVhZkIHCgVwcm9wcw==');

@$core.Deprecated('Use gLeafDescriptor instead')
const GLeaf$json = {
  '1': 'GLeaf',
  '2': [
    {'1': 'fieldsOfSuperClass', '3': 1, '4': 1, '5': 11, '6': '.com.company.project.GFieldsOfTwig', '10': 'fieldsOfSuperClass'},
  ],
};

/// Descriptor for `GLeaf`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List gLeafDescriptor = $convert.base64Decode(
    'CgVHTGVhZhJSChJmaWVsZHNPZlN1cGVyQ2xhc3MYASABKAsyIi5jb20uY29tcGFueS5wcm9qZW'
    'N0LkdGaWVsZHNPZlR3aWdSEmZpZWxkc09mU3VwZXJDbGFzcw==');

@$core.Deprecated('Use gKeyDescriptor instead')
const GKey$json = {
  '1': 'GKey',
  '2': [
    {'1': 'key', '3': 2, '4': 1, '5': 9, '10': 'key'},
  ],
};

/// Descriptor for `GKey`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List gKeyDescriptor = $convert.base64Decode(
    'CgRHS2V5EhAKA2tleRgCIAEoCVIDa2V5');

@$core.Deprecated('Use gListsHostDescriptor instead')
const GListsHost$json = {
  '1': 'GListsHost',
  '2': [
    {'1': 'vbools', '3': 2, '4': 3, '5': 8, '10': 'vbools'},
    {'1': 'nvbools', '3': 3, '4': 3, '5': 8, '10': 'nvbools'},
    {'1': 'vstrings', '3': 4, '4': 3, '5': 9, '10': 'vstrings'},
    {'1': 'nvstrings', '3': 5, '4': 3, '5': 9, '10': 'nvstrings'},
    {'1': 'vdurations', '3': 6, '4': 3, '5': 3, '10': 'vdurations'},
    {'1': 'nvdurations', '3': 7, '4': 3, '5': 3, '10': 'nvdurations'},
    {'1': 'vdatetimes', '3': 8, '4': 3, '5': 3, '10': 'vdatetimes'},
    {'1': 'nvdatetimes', '3': 9, '4': 3, '5': 3, '10': 'nvdatetimes'},
    {'1': 'vdecimals', '3': 10, '4': 3, '5': 9, '10': 'vdecimals'},
    {'1': 'nvdecimals', '3': 11, '4': 3, '5': 9, '10': 'nvdecimals'},
    {'1': 'vints', '3': 12, '4': 3, '5': 5, '10': 'vints'},
    {'1': 'nvints', '3': 13, '4': 3, '5': 5, '10': 'nvints'},
    {'1': 'vdoubles', '3': 14, '4': 3, '5': 1, '10': 'vdoubles'},
    {'1': 'nvdoubles', '3': 15, '4': 3, '5': 1, '10': 'nvdoubles'},
    {'1': 'vappliance_types', '3': 16, '4': 3, '5': 14, '6': '.com.company.project.GApplianceType', '10': 'vapplianceTypes'},
    {'1': 'nvappliance_types', '3': 17, '4': 3, '5': 14, '6': '.com.company.project.GApplianceType', '10': 'nvapplianceTypes'},
  ],
};

/// Descriptor for `GListsHost`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List gListsHostDescriptor = $convert.base64Decode(
    'CgpHTGlzdHNIb3N0EhYKBnZib29scxgCIAMoCFIGdmJvb2xzEhgKB252Ym9vbHMYAyADKAhSB2'
    '52Ym9vbHMSGgoIdnN0cmluZ3MYBCADKAlSCHZzdHJpbmdzEhwKCW52c3RyaW5ncxgFIAMoCVIJ'
    'bnZzdHJpbmdzEh4KCnZkdXJhdGlvbnMYBiADKANSCnZkdXJhdGlvbnMSIAoLbnZkdXJhdGlvbn'
    'MYByADKANSC252ZHVyYXRpb25zEh4KCnZkYXRldGltZXMYCCADKANSCnZkYXRldGltZXMSIAoL'
    'bnZkYXRldGltZXMYCSADKANSC252ZGF0ZXRpbWVzEhwKCXZkZWNpbWFscxgKIAMoCVIJdmRlY2'
    'ltYWxzEh4KCm52ZGVjaW1hbHMYCyADKAlSCm52ZGVjaW1hbHMSFAoFdmludHMYDCADKAVSBXZp'
    'bnRzEhYKBm52aW50cxgNIAMoBVIGbnZpbnRzEhoKCHZkb3VibGVzGA4gAygBUgh2ZG91Ymxlcx'
    'IcCgludmRvdWJsZXMYDyADKAFSCW52ZG91YmxlcxJOChB2YXBwbGlhbmNlX3R5cGVzGBAgAygO'
    'MiMuY29tLmNvbXBhbnkucHJvamVjdC5HQXBwbGlhbmNlVHlwZVIPdmFwcGxpYW5jZVR5cGVzEl'
    'AKEW52YXBwbGlhbmNlX3R5cGVzGBEgAygOMiMuY29tLmNvbXBhbnkucHJvamVjdC5HQXBwbGlh'
    'bmNlVHlwZVIQbnZhcHBsaWFuY2VUeXBlcw==');

@$core.Deprecated('Use gPersonDescriptor instead')
const GPerson$json = {
  '1': 'GPerson',
  '2': [
    {'1': 'bool_value', '3': 1, '4': 1, '5': 8, '9': 0, '10': 'boolValue', '17': true},
    {'1': 'dec_val', '3': 2, '4': 1, '5': 9, '10': 'decVal'},
  ],
  '8': [
    {'1': '_bool_value'},
  ],
};

/// Descriptor for `GPerson`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List gPersonDescriptor = $convert.base64Decode(
    'CgdHUGVyc29uEiIKCmJvb2xfdmFsdWUYASABKAhIAFIJYm9vbFZhbHVliAEBEhcKB2RlY192YW'
    'wYAiABKAlSBmRlY1ZhbEINCgtfYm9vbF92YWx1ZQ==');

@$core.Deprecated('Use gFieldsOfAbstractVehicleDescriptor instead')
const GFieldsOfAbstractVehicle$json = {
  '1': 'GFieldsOfAbstractVehicle',
  '2': [
    {'1': 'weight', '3': 2, '4': 1, '5': 5, '10': 'weight'},
  ],
};

/// Descriptor for `GFieldsOfAbstractVehicle`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List gFieldsOfAbstractVehicleDescriptor = $convert.base64Decode(
    'ChhHRmllbGRzT2ZBYnN0cmFjdFZlaGljbGUSFgoGd2VpZ2h0GAIgASgFUgZ3ZWlnaHQ=');

@$core.Deprecated('Use gAbstractVehicleDescriptor instead')
const GAbstractVehicle$json = {
  '1': 'GAbstractVehicle',
  '2': [
    {'1': 'abstract_vehicle', '3': 1, '4': 1, '5': 11, '6': '.com.company.project.GFieldsOfAbstractVehicle', '9': 0, '10': 'abstractVehicle'},
    {'1': 'bicycle', '3': 3, '4': 1, '5': 11, '6': '.com.company.project.GBicycle', '9': 0, '10': 'bicycle'},
    {'1': 'scooter', '3': 4, '4': 1, '5': 11, '6': '.com.company.project.GScooter', '9': 0, '10': 'scooter'},
  ],
  '8': [
    {'1': 'props'},
  ],
};

/// Descriptor for `GAbstractVehicle`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List gAbstractVehicleDescriptor = $convert.base64Decode(
    'ChBHQWJzdHJhY3RWZWhpY2xlEloKEGFic3RyYWN0X3ZlaGljbGUYASABKAsyLS5jb20uY29tcG'
    'FueS5wcm9qZWN0LkdGaWVsZHNPZkFic3RyYWN0VmVoaWNsZUgAUg9hYnN0cmFjdFZlaGljbGUS'
    'OQoHYmljeWNsZRgDIAEoCzIdLmNvbS5jb21wYW55LnByb2plY3QuR0JpY3ljbGVIAFIHYmljeW'
    'NsZRI5CgdzY29vdGVyGAQgASgLMh0uY29tLmNvbXBhbnkucHJvamVjdC5HU2Nvb3RlckgAUgdz'
    'Y29vdGVyQgcKBXByb3Bz');

@$core.Deprecated('Use gFieldsOfAircraftDescriptor instead')
const GFieldsOfAircraft$json = {
  '1': 'GFieldsOfAircraft',
  '2': [
    {'1': 'fieldsOfSuperClass', '3': 6, '4': 1, '5': 11, '6': '.com.company.project.GFieldsOfVehicle', '10': 'fieldsOfSuperClass'},
    {'1': 'service_ceiling', '3': 3, '4': 1, '5': 5, '10': 'serviceCeiling'},
    {'1': 'key', '3': 4, '4': 1, '5': 9, '10': 'key'},
  ],
};

/// Descriptor for `GFieldsOfAircraft`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List gFieldsOfAircraftDescriptor = $convert.base64Decode(
    'ChFHRmllbGRzT2ZBaXJjcmFmdBJVChJmaWVsZHNPZlN1cGVyQ2xhc3MYBiABKAsyJS5jb20uY2'
    '9tcGFueS5wcm9qZWN0LkdGaWVsZHNPZlZlaGljbGVSEmZpZWxkc09mU3VwZXJDbGFzcxInCg9z'
    'ZXJ2aWNlX2NlaWxpbmcYAyABKAVSDnNlcnZpY2VDZWlsaW5nEhAKA2tleRgEIAEoCVIDa2V5');

@$core.Deprecated('Use gAircraftDescriptor instead')
const GAircraft$json = {
  '1': 'GAircraft',
  '2': [
    {'1': 'aircraft', '3': 1, '4': 1, '5': 11, '6': '.com.company.project.GFieldsOfAircraft', '9': 0, '10': 'aircraft'},
    {'1': 'airplane', '3': 3, '4': 1, '5': 11, '6': '.com.company.project.GAirplane', '9': 0, '10': 'airplane'},
    {'1': 'rotorcraft', '3': 4, '4': 1, '5': 11, '6': '.com.company.project.GRotorcraft', '9': 0, '10': 'rotorcraft'},
    {'1': 'balloon', '3': 5, '4': 1, '5': 11, '6': '.com.company.project.GBalloon', '9': 0, '10': 'balloon'},
  ],
  '8': [
    {'1': 'props'},
  ],
};

/// Descriptor for `GAircraft`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List gAircraftDescriptor = $convert.base64Decode(
    'CglHQWlyY3JhZnQSRAoIYWlyY3JhZnQYASABKAsyJi5jb20uY29tcGFueS5wcm9qZWN0LkdGaW'
    'VsZHNPZkFpcmNyYWZ0SABSCGFpcmNyYWZ0EjwKCGFpcnBsYW5lGAMgASgLMh4uY29tLmNvbXBh'
    'bnkucHJvamVjdC5HQWlycGxhbmVIAFIIYWlycGxhbmUSQgoKcm90b3JjcmFmdBgEIAEoCzIgLm'
    'NvbS5jb21wYW55LnByb2plY3QuR1JvdG9yY3JhZnRIAFIKcm90b3JjcmFmdBI5CgdiYWxsb29u'
    'GAUgASgLMh0uY29tLmNvbXBhbnkucHJvamVjdC5HQmFsbG9vbkgAUgdiYWxsb29uQgcKBXByb3'
    'Bz');

@$core.Deprecated('Use gAirplaneDescriptor instead')
const GAirplane$json = {
  '1': 'GAirplane',
  '2': [
    {'1': 'fieldsOfSuperClass', '3': 1, '4': 1, '5': 11, '6': '.com.company.project.GFieldsOfAircraft', '10': 'fieldsOfSuperClass'},
    {'1': 'wingspan', '3': 2, '4': 1, '5': 5, '10': 'wingspan'},
  ],
};

/// Descriptor for `GAirplane`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List gAirplaneDescriptor = $convert.base64Decode(
    'CglHQWlycGxhbmUSVgoSZmllbGRzT2ZTdXBlckNsYXNzGAEgASgLMiYuY29tLmNvbXBhbnkucH'
    'JvamVjdC5HRmllbGRzT2ZBaXJjcmFmdFISZmllbGRzT2ZTdXBlckNsYXNzEhoKCHdpbmdzcGFu'
    'GAIgASgFUgh3aW5nc3Bhbg==');

@$core.Deprecated('Use gBalloonDescriptor instead')
const GBalloon$json = {
  '1': 'GBalloon',
  '2': [
    {'1': 'weight', '3': 2, '4': 1, '5': 5, '10': 'weight'},
    {'1': 'key', '3': 3, '4': 1, '5': 9, '10': 'key'},
    {'1': 'service_ceiling', '3': 4, '4': 1, '5': 5, '10': 'serviceCeiling'},
  ],
};

/// Descriptor for `GBalloon`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List gBalloonDescriptor = $convert.base64Decode(
    'CghHQmFsbG9vbhIWCgZ3ZWlnaHQYAiABKAVSBndlaWdodBIQCgNrZXkYAyABKAlSA2tleRInCg'
    '9zZXJ2aWNlX2NlaWxpbmcYBCABKAVSDnNlcnZpY2VDZWlsaW5n');

@$core.Deprecated('Use gBicycleDescriptor instead')
const GBicycle$json = {
  '1': 'GBicycle',
  '2': [
    {'1': 'fieldsOfSuperClass', '3': 1, '4': 1, '5': 11, '6': '.com.company.project.GFieldsOfAbstractVehicle', '10': 'fieldsOfSuperClass'},
    {'1': 'wheel_diamater', '3': 2, '4': 1, '5': 9, '10': 'wheelDiamater'},
    {'1': 'key', '3': 3, '4': 1, '5': 9, '10': 'key'},
  ],
};

/// Descriptor for `GBicycle`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List gBicycleDescriptor = $convert.base64Decode(
    'CghHQmljeWNsZRJdChJmaWVsZHNPZlN1cGVyQ2xhc3MYASABKAsyLS5jb20uY29tcGFueS5wcm'
    '9qZWN0LkdGaWVsZHNPZkFic3RyYWN0VmVoaWNsZVISZmllbGRzT2ZTdXBlckNsYXNzEiUKDndo'
    'ZWVsX2RpYW1hdGVyGAIgASgJUg13aGVlbERpYW1hdGVyEhAKA2tleRgDIAEoCVIDa2V5');

@$core.Deprecated('Use gCarDescriptor instead')
const GCar$json = {
  '1': 'GCar',
  '2': [
    {'1': 'fieldsOfSuperClass', '3': 1, '4': 1, '5': 11, '6': '.com.company.project.GFieldsOfVehicle', '10': 'fieldsOfSuperClass'},
    {'1': 'number_of_doors', '3': 2, '4': 1, '5': 5, '10': 'numberOfDoors'},
  ],
};

/// Descriptor for `GCar`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List gCarDescriptor = $convert.base64Decode(
    'CgRHQ2FyElUKEmZpZWxkc09mU3VwZXJDbGFzcxgBIAEoCzIlLmNvbS5jb21wYW55LnByb2plY3'
    'QuR0ZpZWxkc09mVmVoaWNsZVISZmllbGRzT2ZTdXBlckNsYXNzEiYKD251bWJlcl9vZl9kb29y'
    'cxgCIAEoBVINbnVtYmVyT2ZEb29ycw==');

@$core.Deprecated('Use gEntityDescriptor instead')
const GEntity$json = {
  '1': 'GEntity',
  '2': [
    {'1': 'key', '3': 2, '4': 1, '5': 9, '10': 'key'},
  ],
};

/// Descriptor for `GEntity`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List gEntityDescriptor = $convert.base64Decode(
    'CgdHRW50aXR5EhAKA2tleRgCIAEoCVIDa2V5');

@$core.Deprecated('Use gGyrocopterDescriptor instead')
const GGyrocopter$json = {
  '1': 'GGyrocopter',
  '2': [
    {'1': 'fieldsOfSuperClass', '3': 1, '4': 1, '5': 11, '6': '.com.company.project.GFieldsOfRotorcraft', '10': 'fieldsOfSuperClass'},
  ],
};

/// Descriptor for `GGyrocopter`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List gGyrocopterDescriptor = $convert.base64Decode(
    'CgtHR3lyb2NvcHRlchJYChJmaWVsZHNPZlN1cGVyQ2xhc3MYASABKAsyKC5jb20uY29tcGFueS'
    '5wcm9qZWN0LkdGaWVsZHNPZlJvdG9yY3JhZnRSEmZpZWxkc09mU3VwZXJDbGFzcw==');

@$core.Deprecated('Use gHelicopterDescriptor instead')
const GHelicopter$json = {
  '1': 'GHelicopter',
  '2': [
    {'1': 'fieldsOfSuperClass', '3': 1, '4': 1, '5': 11, '6': '.com.company.project.GFieldsOfRotorcraft', '10': 'fieldsOfSuperClass'},
  ],
};

/// Descriptor for `GHelicopter`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List gHelicopterDescriptor = $convert.base64Decode(
    'CgtHSGVsaWNvcHRlchJYChJmaWVsZHNPZlN1cGVyQ2xhc3MYASABKAsyKC5jb20uY29tcGFueS'
    '5wcm9qZWN0LkdGaWVsZHNPZlJvdG9yY3JhZnRSEmZpZWxkc09mU3VwZXJDbGFzcw==');

@$core.Deprecated('Use gFieldsOfRotorcraftDescriptor instead')
const GFieldsOfRotorcraft$json = {
  '1': 'GFieldsOfRotorcraft',
  '2': [
    {'1': 'fieldsOfSuperClass', '3': 1, '4': 1, '5': 11, '6': '.com.company.project.GFieldsOfAircraft', '10': 'fieldsOfSuperClass'},
  ],
};

/// Descriptor for `GFieldsOfRotorcraft`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List gFieldsOfRotorcraftDescriptor = $convert.base64Decode(
    'ChNHRmllbGRzT2ZSb3RvcmNyYWZ0ElYKEmZpZWxkc09mU3VwZXJDbGFzcxgBIAEoCzImLmNvbS'
    '5jb21wYW55LnByb2plY3QuR0ZpZWxkc09mQWlyY3JhZnRSEmZpZWxkc09mU3VwZXJDbGFzcw==');

@$core.Deprecated('Use gRotorcraftDescriptor instead')
const GRotorcraft$json = {
  '1': 'GRotorcraft',
  '2': [
    {'1': 'rotorcraft', '3': 1, '4': 1, '5': 11, '6': '.com.company.project.GFieldsOfRotorcraft', '9': 0, '10': 'rotorcraft'},
    {'1': 'helicopter', '3': 3, '4': 1, '5': 11, '6': '.com.company.project.GHelicopter', '9': 0, '10': 'helicopter'},
    {'1': 'gyrocopter', '3': 4, '4': 1, '5': 11, '6': '.com.company.project.GGyrocopter', '9': 0, '10': 'gyrocopter'},
  ],
  '8': [
    {'1': 'props'},
  ],
};

/// Descriptor for `GRotorcraft`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List gRotorcraftDescriptor = $convert.base64Decode(
    'CgtHUm90b3JjcmFmdBJKCgpyb3RvcmNyYWZ0GAEgASgLMiguY29tLmNvbXBhbnkucHJvamVjdC'
    '5HRmllbGRzT2ZSb3RvcmNyYWZ0SABSCnJvdG9yY3JhZnQSQgoKaGVsaWNvcHRlchgDIAEoCzIg'
    'LmNvbS5jb21wYW55LnByb2plY3QuR0hlbGljb3B0ZXJIAFIKaGVsaWNvcHRlchJCCgpneXJvY2'
    '9wdGVyGAQgASgLMiAuY29tLmNvbXBhbnkucHJvamVjdC5HR3lyb2NvcHRlckgAUgpneXJvY29w'
    'dGVyQgcKBXByb3Bz');

@$core.Deprecated('Use gScooterDescriptor instead')
const GScooter$json = {
  '1': 'GScooter',
  '2': [
    {'1': 'fieldsOfSuperClass', '3': 1, '4': 1, '5': 11, '6': '.com.company.project.GFieldsOfAbstractVehicle', '10': 'fieldsOfSuperClass'},
    {'1': 'key', '3': 2, '4': 1, '5': 9, '10': 'key'},
  ],
};

/// Descriptor for `GScooter`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List gScooterDescriptor = $convert.base64Decode(
    'CghHU2Nvb3RlchJdChJmaWVsZHNPZlN1cGVyQ2xhc3MYASABKAsyLS5jb20uY29tcGFueS5wcm'
    '9qZWN0LkdGaWVsZHNPZkFic3RyYWN0VmVoaWNsZVISZmllbGRzT2ZTdXBlckNsYXNzEhAKA2tl'
    'eRgCIAEoCVIDa2V5');

@$core.Deprecated('Use gFieldsOfVehicleDescriptor instead')
const GFieldsOfVehicle$json = {
  '1': 'GFieldsOfVehicle',
  '2': [
    {'1': 'weight', '3': 5, '4': 1, '5': 5, '10': 'weight'},
  ],
};

/// Descriptor for `GFieldsOfVehicle`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List gFieldsOfVehicleDescriptor = $convert.base64Decode(
    'ChBHRmllbGRzT2ZWZWhpY2xlEhYKBndlaWdodBgFIAEoBVIGd2VpZ2h0');

@$core.Deprecated('Use gVehicleDescriptor instead')
const GVehicle$json = {
  '1': 'GVehicle',
  '2': [
    {'1': 'vehicle', '3': 1, '4': 1, '5': 11, '6': '.com.company.project.GFieldsOfVehicle', '9': 0, '10': 'vehicle'},
    {'1': 'aircraft', '3': 3, '4': 1, '5': 11, '6': '.com.company.project.GAircraft', '9': 0, '10': 'aircraft'},
    {'1': 'car', '3': 4, '4': 1, '5': 11, '6': '.com.company.project.GCar', '9': 0, '10': 'car'},
  ],
  '8': [
    {'1': 'props'},
  ],
};

/// Descriptor for `GVehicle`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List gVehicleDescriptor = $convert.base64Decode(
    'CghHVmVoaWNsZRJBCgd2ZWhpY2xlGAEgASgLMiUuY29tLmNvbXBhbnkucHJvamVjdC5HRmllbG'
    'RzT2ZWZWhpY2xlSABSB3ZlaGljbGUSPAoIYWlyY3JhZnQYAyABKAsyHi5jb20uY29tcGFueS5w'
    'cm9qZWN0LkdBaXJjcmFmdEgAUghhaXJjcmFmdBItCgNjYXIYBCABKAsyGS5jb20uY29tcGFueS'
    '5wcm9qZWN0LkdDYXJIAFIDY2FyQgcKBXByb3Bz');

@$core.Deprecated('Use gRecipeDescriptor instead')
const GRecipe$json = {
  '1': 'GRecipe',
  '2': [
    {'1': 'title', '3': 2, '4': 1, '5': 9, '10': 'title'},
    {'1': 'description', '3': 3, '4': 1, '5': 9, '9': 0, '10': 'description', '17': true},
    {'1': 'category', '3': 4, '4': 1, '5': 11, '6': '.com.company.project.GCategory', '10': 'category'},
    {'1': 'ingredients', '3': 5, '4': 3, '5': 11, '6': '.com.company.project.GIngredient', '10': 'ingredients'},
    {'1': 'publish_date', '3': 6, '4': 1, '5': 3, '10': 'publishDate'},
    {'1': 'expiry_date', '3': 7, '4': 1, '5': 3, '9': 1, '10': 'expiryDate', '17': true},
    {'1': 'preparation_duration', '3': 8, '4': 1, '5': 3, '10': 'preparationDuration'},
    {'1': 'total_duration', '3': 9, '4': 1, '5': 3, '9': 2, '10': 'totalDuration', '17': true},
    {'1': 'is_published', '3': 10, '4': 1, '5': 8, '10': 'isPublished'},
    {'1': 'requires_robot', '3': 11, '4': 1, '5': 8, '9': 3, '10': 'requiresRobot', '17': true},
    {'1': 'gross_weight', '3': 12, '4': 1, '5': 1, '9': 4, '10': 'grossWeight', '17': true},
    {'1': 'net_weight', '3': 13, '4': 1, '5': 1, '9': 5, '10': 'netWeight', '17': true},
    {'1': 'main_appliance_type', '3': 14, '4': 1, '5': 14, '6': '.com.company.project.GApplianceType', '10': 'mainApplianceType'},
    {'1': 'secondary_appliance_type', '3': 15, '4': 1, '5': 14, '6': '.com.company.project.GApplianceType', '10': 'secondaryApplianceType'},
    {'1': 'tags', '3': 16, '4': 3, '5': 9, '10': 'tags'},
    {'1': 'extra_tags', '3': 17, '4': 3, '5': 9, '10': 'extraTags'},
    {'1': 'more_appliance_types', '3': 18, '4': 3, '5': 14, '6': '.com.company.project.GApplianceType', '10': 'moreApplianceTypes'},
  ],
  '8': [
    {'1': '_description'},
    {'1': '_expiry_date'},
    {'1': '_total_duration'},
    {'1': '_requires_robot'},
    {'1': '_gross_weight'},
    {'1': '_net_weight'},
  ],
};

/// Descriptor for `GRecipe`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List gRecipeDescriptor = $convert.base64Decode(
    'CgdHUmVjaXBlEhQKBXRpdGxlGAIgASgJUgV0aXRsZRIlCgtkZXNjcmlwdGlvbhgDIAEoCUgAUg'
    'tkZXNjcmlwdGlvbogBARI6CghjYXRlZ29yeRgEIAEoCzIeLmNvbS5jb21wYW55LnByb2plY3Qu'
    'R0NhdGVnb3J5UghjYXRlZ29yeRJCCgtpbmdyZWRpZW50cxgFIAMoCzIgLmNvbS5jb21wYW55Ln'
    'Byb2plY3QuR0luZ3JlZGllbnRSC2luZ3JlZGllbnRzEiEKDHB1Ymxpc2hfZGF0ZRgGIAEoA1IL'
    'cHVibGlzaERhdGUSJAoLZXhwaXJ5X2RhdGUYByABKANIAVIKZXhwaXJ5RGF0ZYgBARIxChRwcm'
    'VwYXJhdGlvbl9kdXJhdGlvbhgIIAEoA1ITcHJlcGFyYXRpb25EdXJhdGlvbhIqCg50b3RhbF9k'
    'dXJhdGlvbhgJIAEoA0gCUg10b3RhbER1cmF0aW9uiAEBEiEKDGlzX3B1Ymxpc2hlZBgKIAEoCF'
    'ILaXNQdWJsaXNoZWQSKgoOcmVxdWlyZXNfcm9ib3QYCyABKAhIA1INcmVxdWlyZXNSb2JvdIgB'
    'ARImCgxncm9zc193ZWlnaHQYDCABKAFIBFILZ3Jvc3NXZWlnaHSIAQESIgoKbmV0X3dlaWdodB'
    'gNIAEoAUgFUgluZXRXZWlnaHSIAQESUwoTbWFpbl9hcHBsaWFuY2VfdHlwZRgOIAEoDjIjLmNv'
    'bS5jb21wYW55LnByb2plY3QuR0FwcGxpYW5jZVR5cGVSEW1haW5BcHBsaWFuY2VUeXBlEl0KGH'
    'NlY29uZGFyeV9hcHBsaWFuY2VfdHlwZRgPIAEoDjIjLmNvbS5jb21wYW55LnByb2plY3QuR0Fw'
    'cGxpYW5jZVR5cGVSFnNlY29uZGFyeUFwcGxpYW5jZVR5cGUSEgoEdGFncxgQIAMoCVIEdGFncx'
    'IdCgpleHRyYV90YWdzGBEgAygJUglleHRyYVRhZ3MSVQoUbW9yZV9hcHBsaWFuY2VfdHlwZXMY'
    'EiADKA4yIy5jb20uY29tcGFueS5wcm9qZWN0LkdBcHBsaWFuY2VUeXBlUhJtb3JlQXBwbGlhbm'
    'NlVHlwZXNCDgoMX2Rlc2NyaXB0aW9uQg4KDF9leHBpcnlfZGF0ZUIRCg9fdG90YWxfZHVyYXRp'
    'b25CEQoPX3JlcXVpcmVzX3JvYm90Qg8KDV9ncm9zc193ZWlnaHRCDQoLX25ldF93ZWlnaHQ=');

@$core.Deprecated('Use gStarshipDescriptor instead')
const GStarship$json = {
  '1': 'GStarship',
  '2': [
    {'1': 'range', '3': 2, '4': 1, '5': 12, '10': 'range'},
    {'1': 'odometer', '3': 3, '4': 1, '5': 12, '10': 'odometer'},
    {'1': 'engine_number', '3': 4, '4': 1, '5': 5, '10': 'engineNumber'},
  ],
};

/// Descriptor for `GStarship`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List gStarshipDescriptor = $convert.base64Decode(
    'CglHU3RhcnNoaXASFAoFcmFuZ2UYAiABKAxSBXJhbmdlEhoKCG9kb21ldGVyGAMgASgMUghvZG'
    '9tZXRlchIjCg1lbmdpbmVfbnVtYmVyGAQgASgFUgxlbmdpbmVOdW1iZXI=');

@$core.Deprecated('Use gKnifeDescriptor instead')
const GKnife$json = {
  '1': 'GKnife',
  '2': [
    {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    {'1': 'type', '3': 2, '4': 1, '5': 14, '6': '.com.company.project.GKnifeType', '10': 'type'},
  ],
};

/// Descriptor for `GKnife`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List gKnifeDescriptor = $convert.base64Decode(
    'CgZHS25pZmUSEgoEbmFtZRgBIAEoCVIEbmFtZRIzCgR0eXBlGAIgASgOMh8uY29tLmNvbXBhbn'
    'kucHJvamVjdC5HS25pZmVUeXBlUgR0eXBl');

@$core.Deprecated('Use gGarlicPressDescriptor instead')
const GGarlicPress$json = {
  '1': 'GGarlicPress',
  '2': [
    {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    {'1': 'machine_washable', '3': 3, '4': 1, '5': 8, '10': 'machineWashable'},
  ],
};

/// Descriptor for `GGarlicPress`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List gGarlicPressDescriptor = $convert.base64Decode(
    'CgxHR2FybGljUHJlc3MSEgoEbmFtZRgCIAEoCVIEbmFtZRIpChBtYWNoaW5lX3dhc2hhYmxlGA'
    'MgASgIUg9tYWNoaW5lV2FzaGFibGU=');

@$core.Deprecated('Use gKitchenDescriptor instead')
const GKitchen$json = {
  '1': 'GKitchen',
  '2': [
    {'1': 'recipe_list', '3': 2, '4': 3, '5': 11, '6': '.com.company.project.GRecipe', '10': 'recipeList'},
    {'1': 'recipe_map', '3': 3, '4': 3, '5': 11, '6': '.com.company.project.GKitchen.RecipeMapEntry', '10': 'recipeMap'},
    {'1': 'next_inspection_date', '3': 4, '4': 1, '5': 3, '10': 'nextInspectionDate'},
  ],
  '3': [GKitchen_RecipeMapEntry$json],
};

@$core.Deprecated('Use gKitchenDescriptor instead')
const GKitchen_RecipeMapEntry$json = {
  '1': 'RecipeMapEntry',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    {'1': 'value', '3': 2, '4': 1, '5': 11, '6': '.com.company.project.GRecipe', '10': 'value'},
  ],
  '7': {'7': true},
};

/// Descriptor for `GKitchen`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List gKitchenDescriptor = $convert.base64Decode(
    'CghHS2l0Y2hlbhI9CgtyZWNpcGVfbGlzdBgCIAMoCzIcLmNvbS5jb21wYW55LnByb2plY3QuR1'
    'JlY2lwZVIKcmVjaXBlTGlzdBJLCgpyZWNpcGVfbWFwGAMgAygLMiwuY29tLmNvbXBhbnkucHJv'
    'amVjdC5HS2l0Y2hlbi5SZWNpcGVNYXBFbnRyeVIJcmVjaXBlTWFwEjAKFG5leHRfaW5zcGVjdG'
    'lvbl9kYXRlGAQgASgDUhJuZXh0SW5zcGVjdGlvbkRhdGUaWgoOUmVjaXBlTWFwRW50cnkSEAoD'
    'a2V5GAEgASgJUgNrZXkSMgoFdmFsdWUYAiABKAsyHC5jb20uY29tcGFueS5wcm9qZWN0LkdSZW'
    'NpcGVSBXZhbHVlOgI4AQ==');

@$core.Deprecated('Use gChefDescriptor instead')
const GChef$json = {
  '1': 'GChef',
  '2': [
    {'1': 'favorite_recipe', '3': 2, '4': 1, '5': 11, '6': '.com.company.project.GRecipe', '10': 'favoriteRecipe'},
    {'1': 'favorite_knife', '3': 3, '4': 1, '5': 11, '6': '.com.company.project.GKnife', '10': 'favoriteKnife'},
    {'1': 'favorite_appliance_type', '3': 4, '4': 1, '5': 14, '6': '.com.company.project.GApplianceType', '10': 'favoriteApplianceType'},
    {'1': 'favorite_words', '3': 5, '4': 3, '5': 9, '10': 'favoriteWords'},
    {'1': 'birthdate', '3': 6, '4': 1, '5': 3, '10': 'birthdate'},
    {'1': 'shelf_life', '3': 7, '4': 1, '5': 3, '9': 0, '10': 'shelfLife', '17': true},
  ],
  '8': [
    {'1': '_shelf_life'},
  ],
};

/// Descriptor for `GChef`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List gChefDescriptor = $convert.base64Decode(
    'CgVHQ2hlZhJFCg9mYXZvcml0ZV9yZWNpcGUYAiABKAsyHC5jb20uY29tcGFueS5wcm9qZWN0Lk'
    'dSZWNpcGVSDmZhdm9yaXRlUmVjaXBlEkIKDmZhdm9yaXRlX2tuaWZlGAMgASgLMhsuY29tLmNv'
    'bXBhbnkucHJvamVjdC5HS25pZmVSDWZhdm9yaXRlS25pZmUSWwoXZmF2b3JpdGVfYXBwbGlhbm'
    'NlX3R5cGUYBCABKA4yIy5jb20uY29tcGFueS5wcm9qZWN0LkdBcHBsaWFuY2VUeXBlUhVmYXZv'
    'cml0ZUFwcGxpYW5jZVR5cGUSJQoOZmF2b3JpdGVfd29yZHMYBSADKAlSDWZhdm9yaXRlV29yZH'
    'MSHAoJYmlydGhkYXRlGAYgASgDUgliaXJ0aGRhdGUSIgoKc2hlbGZfbGlmZRgHIAEoA0gAUglz'
    'aGVsZkxpZmWIAQFCDQoLX3NoZWxmX2xpZmU=');

@$core.Deprecated('Use gSousChefDescriptor instead')
const GSousChef$json = {
  '1': 'GSousChef',
  '2': [
    {'1': 'fieldsOfSuperClass', '3': 1, '4': 1, '5': 11, '6': '.com.company.project.GChef', '10': 'fieldsOfSuperClass'},
  ],
};

/// Descriptor for `GSousChef`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List gSousChefDescriptor = $convert.base64Decode(
    'CglHU291c0NoZWYSSgoSZmllbGRzT2ZTdXBlckNsYXNzGAEgASgLMhouY29tLmNvbXBhbnkucH'
    'JvamVjdC5HQ2hlZlISZmllbGRzT2ZTdXBlckNsYXNz');

@$core.Deprecated('Use gKnifeMasterDescriptor instead')
const GKnifeMaster$json = {
  '1': 'GKnifeMaster',
  '2': [
    {'1': 'fieldsOfSuperClass', '3': 1, '4': 1, '5': 11, '6': '.com.company.project.GChef', '10': 'fieldsOfSuperClass'},
    {'1': 'favorite_knife', '3': 2, '4': 1, '5': 11, '6': '.com.company.project.GKnife', '10': 'favoriteKnife'},
  ],
};

/// Descriptor for `GKnifeMaster`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List gKnifeMasterDescriptor = $convert.base64Decode(
    'CgxHS25pZmVNYXN0ZXISSgoSZmllbGRzT2ZTdXBlckNsYXNzGAEgASgLMhouY29tLmNvbXBhbn'
    'kucHJvamVjdC5HQ2hlZlISZmllbGRzT2ZTdXBlckNsYXNzEkIKDmZhdm9yaXRlX2tuaWZlGAIg'
    'ASgLMhsuY29tLmNvbXBhbnkucHJvamVjdC5HS25pZmVSDWZhdm9yaXRlS25pZmU=');

@$core.Deprecated('Use gInventoryDescriptor instead')
const GInventory$json = {
  '1': 'GInventory',
  '2': [
    {'1': 'number_of_things', '3': 2, '4': 3, '5': 11, '6': '.com.company.project.GInventory.NumberOfThingsEntry', '10': 'numberOfThings'},
    {'1': 'recipes_by_name', '3': 3, '4': 3, '5': 11, '6': '.com.company.project.GInventory.RecipesByNameEntry', '10': 'recipesByName'},
    {'1': 'time_span', '3': 4, '4': 1, '5': 3, '9': 0, '10': 'timeSpan', '17': true},
  ],
  '3': [GInventory_NumberOfThingsEntry$json, GInventory_RecipesByNameEntry$json],
  '8': [
    {'1': '_time_span'},
  ],
};

@$core.Deprecated('Use gInventoryDescriptor instead')
const GInventory_NumberOfThingsEntry$json = {
  '1': 'NumberOfThingsEntry',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    {'1': 'value', '3': 2, '4': 1, '5': 5, '10': 'value'},
  ],
  '7': {'7': true},
};

@$core.Deprecated('Use gInventoryDescriptor instead')
const GInventory_RecipesByNameEntry$json = {
  '1': 'RecipesByNameEntry',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    {'1': 'value', '3': 2, '4': 1, '5': 11, '6': '.com.company.project.GRecipe', '10': 'value'},
  ],
  '7': {'7': true},
};

/// Descriptor for `GInventory`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List gInventoryDescriptor = $convert.base64Decode(
    'CgpHSW52ZW50b3J5El0KEG51bWJlcl9vZl90aGluZ3MYAiADKAsyMy5jb20uY29tcGFueS5wcm'
    '9qZWN0LkdJbnZlbnRvcnkuTnVtYmVyT2ZUaGluZ3NFbnRyeVIObnVtYmVyT2ZUaGluZ3MSWgoP'
    'cmVjaXBlc19ieV9uYW1lGAMgAygLMjIuY29tLmNvbXBhbnkucHJvamVjdC5HSW52ZW50b3J5Ll'
    'JlY2lwZXNCeU5hbWVFbnRyeVINcmVjaXBlc0J5TmFtZRIgCgl0aW1lX3NwYW4YBCABKANIAFII'
    'dGltZVNwYW6IAQEaQQoTTnVtYmVyT2ZUaGluZ3NFbnRyeRIQCgNrZXkYASABKAlSA2tleRIUCg'
    'V2YWx1ZRgCIAEoBVIFdmFsdWU6AjgBGl4KElJlY2lwZXNCeU5hbWVFbnRyeRIQCgNrZXkYASAB'
    'KAlSA2tleRIyCgV2YWx1ZRgCIAEoCzIcLmNvbS5jb21wYW55LnByb2plY3QuR1JlY2lwZVIFdm'
    'FsdWU6AjgBQgwKCl90aW1lX3NwYW4=');

@$core.Deprecated('Use gPrecisionSubjectDescriptor instead')
const GPrecisionSubject$json = {
  '1': 'GPrecisionSubject',
  '2': [
    {'1': 'date_property', '3': 2, '4': 1, '5': 3, '10': 'dateProperty'},
    {'1': 'duration_property', '3': 3, '4': 1, '5': 3, '10': 'durationProperty'},
  ],
};

/// Descriptor for `GPrecisionSubject`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List gPrecisionSubjectDescriptor = $convert.base64Decode(
    'ChFHUHJlY2lzaW9uU3ViamVjdBIjCg1kYXRlX3Byb3BlcnR5GAIgASgDUgxkYXRlUHJvcGVydH'
    'kSKwoRZHVyYXRpb25fcHJvcGVydHkYAyABKANSEGR1cmF0aW9uUHJvcGVydHk=');

@$core.Deprecated('Use gEncodingTargetDescriptor instead')
const GEncodingTarget$json = {
  '1': 'GEncodingTarget',
  '2': [
    {'1': 'some_value', '3': 1, '4': 1, '5': 5, '9': 0, '10': 'someValue', '17': true},
  ],
  '8': [
    {'1': '_some_value'},
  ],
};

/// Descriptor for `GEncodingTarget`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List gEncodingTargetDescriptor = $convert.base64Decode(
    'Cg9HRW5jb2RpbmdUYXJnZXQSIgoKc29tZV92YWx1ZRgBIAEoBUgAUglzb21lVmFsdWWIAQFCDQ'
    'oLX3NvbWVfdmFsdWU=');

