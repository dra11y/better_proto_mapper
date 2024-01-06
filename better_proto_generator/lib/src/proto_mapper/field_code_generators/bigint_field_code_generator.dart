import '../mapper_field_code_generator.dart';
import '../field_descriptor.dart';
import 'field_code_generator_identifiers.dart';

class BigIntFieldCodeGenerator
    with FieldCodeGeneratorIdentifiers
    implements MapperFieldCodeGenerator {
  BigIntFieldCodeGenerator({
    required this.fieldDescriptor,
    required this.refName,
    required this.protoRefName,
  });

  @override
  final FieldDescriptor fieldDescriptor;
  @override
  final String refName;
  @override
  final String protoRefName;

  @override
  String get toProtoMap =>
      '$protoRef$protoFieldName = $ref$fieldName.\$toProtoBytes();';

  @override
  String get fromProtoMap =>
      '${fieldDescriptor.isNullable ? '\$NullableBigIntProtoExtension' : '\$BigIntProtoExtension'}.\$fromProtoBytes($protoRef$protoFieldName!)';
}
