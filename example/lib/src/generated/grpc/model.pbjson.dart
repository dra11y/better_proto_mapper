//
//  Generated code. Do not modify.
//  source: model.proto
//

// ignore_for_file: library_prefixes, unnecessary_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use gAuthorDescriptor instead')
const GAuthor$json = {
  '1': 'GAuthor',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    {'1': 'first_name', '3': 2, '4': 1, '5': 9, '10': 'firstName'},
    {'1': 'last_name', '3': 3, '4': 1, '5': 9, '10': 'lastName'},
    {'1': 'books', '3': 4, '4': 3, '5': 11, '6': '.GBook', '10': 'books'},
    {'1': 'created', '3': 5, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'created'},
    {'1': 'updated', '3': 6, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'updated'},
  ],
};

/// Descriptor for `GAuthor`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List gAuthorDescriptor = $convert.base64Decode(
    'CgdHQXV0aG9yEg4KAmlkGAEgASgJUgJpZBIdCgpmaXJzdF9uYW1lGAIgASgJUglmaXJzdE5hbW'
    'USGwoJbGFzdF9uYW1lGAMgASgJUghsYXN0TmFtZRIcCgVib29rcxgEIAMoCzIGLkdCb29rUgVi'
    'b29rcxI0CgdjcmVhdGVkGAUgASgLMhouZ29vZ2xlLnByb3RvYnVmLlRpbWVzdGFtcFIHY3JlYX'
    'RlZBI0Cgd1cGRhdGVkGAYgASgLMhouZ29vZ2xlLnByb3RvYnVmLlRpbWVzdGFtcFIHdXBkYXRl'
    'ZA==');

@$core.Deprecated('Use gBookDescriptor instead')
const GBook$json = {
  '1': 'GBook',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    {'1': 'title', '3': 2, '4': 1, '5': 9, '10': 'title'},
    {'1': 'authors', '3': 3, '4': 3, '5': 11, '6': '.GAuthor', '10': 'authors'},
    {'1': 'created', '3': 4, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'created'},
    {'1': 'updated', '3': 5, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'updated'},
  ],
};

/// Descriptor for `GBook`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List gBookDescriptor = $convert.base64Decode(
    'CgVHQm9vaxIOCgJpZBgBIAEoCVICaWQSFAoFdGl0bGUYAiABKAlSBXRpdGxlEiIKB2F1dGhvcn'
    'MYAyADKAsyCC5HQXV0aG9yUgdhdXRob3JzEjQKB2NyZWF0ZWQYBCABKAsyGi5nb29nbGUucHJv'
    'dG9idWYuVGltZXN0YW1wUgdjcmVhdGVkEjQKB3VwZGF0ZWQYBSABKAsyGi5nb29nbGUucHJvdG'
    '9idWYuVGltZXN0YW1wUgd1cGRhdGVk');

