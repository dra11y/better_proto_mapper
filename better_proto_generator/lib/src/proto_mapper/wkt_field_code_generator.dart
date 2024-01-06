import 'field_code_generators/field_code_generator_identifiers.dart';
import 'mapper_field_code_generator.dart';
import 'field_descriptor.dart';

abstract class WKTFieldCodeGenerator
    with FieldCodeGeneratorIdentifiers
    implements MapperFieldCodeGenerator {
  WKTFieldCodeGenerator({
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
}
