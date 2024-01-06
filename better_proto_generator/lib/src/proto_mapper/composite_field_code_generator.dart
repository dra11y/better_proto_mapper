import 'package:better_proto_annotations/config.dart';
import 'package:better_proto_annotations/better_proto_annotations.dart';
import 'package:recase/recase.dart';

import 'composites/entity_field_code_generator.dart';
// import 'composites/generic_field_code_generator.dart';
import 'composites/iterable_field_code_generator.dart';
import 'mapper_field_code_generator.dart';
import 'composites/enum_field_code_generator.dart';
import 'composites/list_field_code_generator.dart';
import 'composites/map_field_code_generator.dart';
import 'composites/set_field_code_generator.dart';
import 'field_descriptor.dart';

abstract class CompositeFieldCodeGenerator implements MapperFieldCodeGenerator {
  static const defaultRefName = 'instance';
  static const defaultProtoRefName = 'proto';

  final FieldDescriptor fieldDescriptor;
  final String refName;
  final String protoRefName;
  final Config config;

  String get ref => refName.isEmpty ? '' : '$refName.';
  String get protoRef => protoRefName.isEmpty ? '' : '$protoRefName.';

  CompositeFieldCodeGenerator({
    required this.fieldDescriptor,
    required this.refName,
    required this.protoRefName,
    required this.config,
  });

  Proto get proto => fieldDescriptor.proto;

  @override
  String get toProtoMap => fieldDescriptor.renderNullable
      ? '''
        if ($ref$fieldName != null) {
          $protoRef$protoFieldName = $toProtoNullableExpression;
        }
      '''
      : '$protoRef$protoFieldName = $toProtoExpression;';

  String get instanceReference =>
      '$ref$fieldName${fieldDescriptor.isNullable && ref.isNotEmpty ? '!' : ''}';
  String get toProtoExpression => instanceReference;
  String get toProtoNullableExpression => toProtoExpression;

  @override
  String get fromProtoMap {
    if (fieldDescriptor.renderNullable) {
      return fromProtoNullableExpression;
    }
    return fromProtoExpression;
  }

  String get fromProtoExpression;
  String get fromProtoNullableExpression;

  String get fieldName => fieldDescriptor.displayName;
  String get protoFieldName => fieldDescriptor.protoFieldName.camelCase;

  static bool isComposite(FieldDescriptor fieldDescriptor) {
    return fieldDescriptor.fieldElementType.isDartCoreSet ||
        fieldDescriptor.typeIsEnum ||
        fieldDescriptor.typeHasProtoAnnotation ||
        (fieldDescriptor.fieldElementType.isDartCoreIterable &&
            fieldDescriptor.iterableParameterType != null);
  }

  factory CompositeFieldCodeGenerator.fromFieldDescriptor({
    required FieldDescriptor fieldDescriptor,
    required String refName,
    required String protoRefName,
    required Config config,
  }) {
    if (fieldDescriptor.fieldElementType.isDartCoreList) {
      return ListFieldCodeGenerator(
        fieldDescriptor: fieldDescriptor,
        refName: refName,
        protoRefName: protoRefName,
        config: config,
      );
    }

    if (fieldDescriptor.fieldElementType.isDartCoreMap) {
      return MapFieldCodeGenerator(
        fieldDescriptor: fieldDescriptor,
        refName: refName,
        protoRefName: protoRefName,
        config: config,
      );
    }

    if (fieldDescriptor.fieldElementType.isDartCoreSet) {
      return SetFieldCodeGenerator(
        fieldDescriptor: fieldDescriptor,
        refName: refName,
        protoRefName: protoRefName,
        config: config,
      );
    }
    if (fieldDescriptor.typeIsEnum) {
      return EnumFieldCodeGenerator(
        fieldDescriptor: fieldDescriptor,
        refName: refName,
        protoRefName: protoRefName,
        config: config,
      );
    }
    if (fieldDescriptor.typeHasProtoAnnotation) {
      return EntityFieldCodeGenerator(
        fieldDescriptor: fieldDescriptor,
        refName: refName,
        protoRefName: protoRefName,
        config: config,
      );
    }
    if (fieldDescriptor.fieldElementType.isDartCoreIterable &&
        fieldDescriptor.iterableParameterType != null) {
      return IterableFieldCodeGenerator(
        fieldDescriptor: fieldDescriptor,
        refName: refName,
        protoRefName: protoRefName,
        config: config,
      );
    }

    throw UnimplementedError(
        'Unsupported type ${fieldDescriptor.fieldElementType}');
    // return GenericFieldCodeGenerator(
    //   fieldDescriptor: fieldDescriptor,
    //   refName: refName,
    //   protoRefName: protoRefName,
    // );
  }
}
