import 'package:better_proto_annotations/config.dart';
import 'package:better_proto_generator/src/common/proto_common.dart';

import '../field_code_generator.dart';
import '../field_descriptor.dart';
import 'field_code_generator_identifiers.dart';

class DecimalFieldCodeGenerator
    with FieldCodeGeneratorIdentifiers
    implements FieldCodeGenerator {
  DecimalFieldCodeGenerator({
    required this.fieldDescriptor,
    required this.refName,
    required this.protoRefName,
    required this.config,
  });

  final Config config;

  @override
  final FieldDescriptor fieldDescriptor;
  @override
  final String refName;
  @override
  final String protoRefName;

  @override
  String get toProtoMap =>
      '$protoRef$protoFieldName = $ref$fieldName.$_toMethodName();';

  @override
  String get fromProtoMap =>
      '${fieldDescriptor.isNullable ? '\$NullableDecimalProtoExtension' : '\$DecimalProtoExtension'}.$_fromMethodName($protoRef$protoFieldName!)';

  String get _toMethodName => decimalToMethodName(config);

  String get _fromMethodName => decimalFromMethodName(config);
}
