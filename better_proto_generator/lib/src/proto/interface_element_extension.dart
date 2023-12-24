import 'package:analyzer/dart/element/element.dart';
import 'package:analyzer/dart/element/type.dart';
import 'package:better_proto_annotations/config.dart';
import 'package:better_proto_generator/better_proto_generator.dart';
import 'package:better_proto_generator/src/common/constant_reader_extension.dart';
import 'package:better_proto_annotations/better_proto_annotations.dart';
import 'package:better_proto_generator/src/proto/proto_reflected.dart';
import 'package:collection/collection.dart';
import 'package:source_gen/source_gen.dart';
import 'package:squarealfa_generators_common/squarealfa_generators_common.dart';

import 'field_descriptor.dart';

extension ClassElementExtensions on ClassElement {
  Iterable<FieldDescriptor> getFieldDescriptors({
    required Proto annotation,
    required Config config,
  }) {
    final fieldSet = getSortedFieldSet(includeInherited: false);
    final fieldDescriptors = <FieldDescriptor>[];
    for (final fieldElement in fieldSet) {
      final protoField = _getProtoFieldAnnotation(fieldElement);
      if (protoField == null) {
        continue;
      }
      final relevantFieldType = _getRelevantFieldType(fieldElement);
      final protoReflected = _getProtoReflected(relevantFieldType);
      final fd = FieldDescriptor.fromFieldElement(
        fieldElement: fieldElement,
        config: config,
        protoAnnotation: protoReflected?.proto ?? annotation,
        protoFieldAnnotation: protoField,
        forEnum: false,
      );
      fieldDescriptors.add(fd);
    }
    return fieldDescriptors;
  }
}

extension EnumElementExtensions on EnumElement {
  Iterable<FieldDescriptor> getFieldDescriptors({
    required Proto annotation,
    required Config config,
  }) {
    final fieldSet = getSortedFieldSet(includeInherited: false);
    final fieldDescriptors = <FieldDescriptor>[];
    final Set<int> indices = {};
    for (final fieldElement in fieldSet) {
      final protoField = _getProtoFieldAnnotation(fieldElement);
      if (protoField == null) {
        throw Exception(
            'Enum value ${fieldElement.name} on $name is missing annotation: @ProtoField(index)!');
      }
      if (protoField.number == 0 && fieldElement.name != 'unspecified') {
        throw Exception(
            'Enum value with field #0 on $name should be `unspecified` but is `${fieldElement.name}`,'
            ' see https://protobuf.dev/programming-guides/style/#enums');
      }
      if (fieldElement.name == 'unspecified' && protoField.number != 0) {
        throw Exception('Enum value `unspecified` should only be at field #0,'
            ' see https://protobuf.dev/programming-guides/style/#enums');
      }
      if (!annotation.enumAllowAlias && !indices.add(protoField.number)) {
        throw Exception(
            'Duplicate field number: ${protoField.number} found in enum: $name at field: ${fieldElement.name}.'
            ' To allow this, annotate the enum with: @Proto(enumAllowAlias: true)');
      }

      final relevantFieldType = _getRelevantFieldType(fieldElement);
      final protoReflected = _getProtoReflected(relevantFieldType);
      final fd = FieldDescriptor.fromFieldElement(
        fieldElement: fieldElement,
        config: config,
        protoAnnotation: protoReflected?.proto ?? annotation,
        protoFieldAnnotation: protoField,
        forEnum: true,
      );
      fieldDescriptors.add(fd);
    }
    return fieldDescriptors;
  }
}

DartType _getRelevantFieldType(FieldElement fieldElement) {
  var relevantFieldType = fieldElement.type;
  if (relevantFieldType.isIterable || relevantFieldType.isList) {
    relevantFieldType =
        (relevantFieldType as InterfaceType).typeArguments.first;
  }
  return relevantFieldType;
}

ProtoReflected? _getProtoReflected(DartType relevantFieldType) {
  var annotations = getAnnotationsByName(relevantFieldType, 'Proto');
  if (annotations.isEmpty) return null;

  final readAnnotation =
      ConstantReader(annotations.first.computeConstantValue());
  var hydratedAnnotation = readAnnotation.hydrateAnnotation();
  return hydratedAnnotation;
}

const _protoFieldChecker = TypeChecker.fromRuntime(ProtoField);

ProtoField? _getProtoFieldAnnotation(FieldElement fieldElement) {
  final annotation = _protoFieldChecker.getFieldAnnotation(fieldElement);
  if (annotation == null) {
    return null;
  }
  final name = annotation.getField('name')!.toStringValue();
  final numberObj = annotation.getField('number')!;
  final number = numberObj.toIntValue()!;

  final intPrecision =
      annotation.getField('intPrecision')?.getField('index')?.toIntValue();

  switch (intPrecision) {
    case null:
      return ProtoField(
        number,
        name: name,
      );
    case 0:
      return ProtoField.int32(
        number,
        name: name,
      );
    case 1:
      return ProtoField.int64(
        number,
        name: name,
      );

    default:
      throw UnimplementedError();
  }
}
