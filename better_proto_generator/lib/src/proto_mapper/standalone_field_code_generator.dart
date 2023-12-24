import 'package:better_proto_annotations/better_proto_annotations.dart';
import 'package:better_proto_generator/src/proto_mapper/field_code_generators/field_code_generator_identifiers.dart';
import 'package:recase/recase.dart';

import 'standalone/generic_field_code_generator.dart';
import 'standalone/datetime_field_code_generator.dart';
import 'field_code_generator.dart';
import 'field_descriptor.dart';
import 'standalone/duration_field_code_generator.dart';

abstract class StandaloneFieldCodeGenerator
    with FieldCodeGeneratorIdentifiers
    implements FieldCodeGenerator {
  StandaloneFieldCodeGenerator({
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

  Proto get proto => fieldDescriptor.proto;

  @override
  String get toProtoMap => fieldDescriptor.isNullable
      ? '''
        if ($ref$fieldName != null) {
          $protoRef$protoFieldName = $ref$fieldName!;
        }
      '''
      : '$protoRef$protoFieldName = $ref$fieldName;';

  String get hasValueToProtoMap =>
      '$protoRef${protoFieldName}HasValue = $ref$fieldName != null';

  String get instanceReference =>
      '$ref$fieldName${fieldDescriptor.isNullable && ref.isNotEmpty ? '!' : ''}';
  String get toProtoExpression => instanceReference;
  String get toProtoNullableExpression => toProtoExpression;

  @override
  String get fromProtoMap {
    if (fieldDescriptor.isNullable) {
      return '''(${protoRef}has${protoFieldName.pascalCase}() ? $protoRef$protoFieldName : null)''';
    }
    return '$protoRef$protoFieldName';
  }

  String get fromProtoNullableExpression =>
      '''($ref${protoFieldName}HasValue ? ($fromProtoNonNullableExpression) : null)''';

  String get fromProtoNonNullableExpression => '$ref$protoFieldName';

  static FieldCodeGenerator? fromFieldDescriptor({
    required FieldDescriptor fieldDescriptor,
    required String refName,
    required String protoRefName,
  }) {
    // if (fieldDescriptor.fieldElementType.isDartCoreString) {
    //   return GStringFieldCodeGenerator(
    //     fieldDescriptor: fieldDescriptor,
    //     refName: refName,
    //     protoRefName: protoRefName,
    //   );
    // }
    if (fieldDescriptor.fieldElementType.isDartCoreBool ||
        fieldDescriptor.fieldElementType.isDartCoreInt ||
        fieldDescriptor.fieldElementType.isDartCoreString ||
        fieldDescriptor.fieldElementType.isDartCoreDouble) {
      return GenericFieldCodeGenerator(
        fieldDescriptor: fieldDescriptor,
        refName: refName,
        protoRefName: protoRefName,
      );
    }
    if (fieldDescriptor.fieldElementTypeName == (DateTime).toString()) {
      return SDateTimeFieldCodeGenerator(
        fieldDescriptor: fieldDescriptor,
        refName: refName,
        protoRefName: protoRefName,
      );
    }
    if (fieldDescriptor.fieldElementTypeName == (Duration).toString()) {
      return SDurationFieldCodeGenerator(
        fieldDescriptor: fieldDescriptor,
        refName: refName,
        protoRefName: protoRefName,
      );
    }
    return null;
  }
}
