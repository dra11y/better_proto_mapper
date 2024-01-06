import 'package:analyzer/dart/element/element.dart';
import 'package:analyzer/dart/element/type.dart';
import 'package:better_proto_annotations/config.dart';
import 'package:better_proto_generator/better_proto_generator.dart';
import 'package:better_proto_generator/src/common/constant_reader_extension.dart';
import 'package:better_proto_annotations/better_proto_annotations.dart';
import 'package:better_proto_generator/src/proto/proto_reflected.dart';
import 'package:source_gen/source_gen.dart';
import 'package:squarealfa_generators_common/squarealfa_generators_common.dart';

import 'field_descriptor.dart';

extension InterfaceElementExtension on InterfaceElement {
  Iterable<FieldDescriptor> getInterfaceFieldDescriptors({
    required Proto annotation,
    required Config config,
    required String refName,
    required String protoRefName,
    // TG: changed includeInherited default to true
    // TODO: Add inherited parameter to Proto?
    bool includeInherited = true,
  }) {
    final fieldSet = getSortedFieldSet(includeInherited: includeInherited);
    final fieldDescriptors = <FieldDescriptor>[];
    final Set<int> indices = {};
    for (final fieldElement in fieldSet) {
      final protoField = _getProtoFieldAnnotation(fieldElement);
      if (protoField == null) {
        throw Exception(
            'Field on $name missing @ProtoField() annotation: $fieldElement!');
      }
      if (protoField.ignored) {
        continue;
      }
      if (this is! EnumElement && protoField.number == 0) {
        throw Exception(
            'getInterfaceFieldDescriptors: Field numbering on $name should start with 1, found 0 on field ${fieldElement.name},'
            ' see https://protobuf.dev/programming-guides/proto3/#assigning');
      }
      if (!indices.add(protoField.number)) {
        throw Exception(
            'getInterfaceFieldDescriptors: Duplicate field number on $name: ${fieldElement.name}, ${protoField.number},'
            ' see https://protobuf.dev/programming-guides/proto3/#assigning');
      }
      final relevantFieldType = _getRelevantFieldType(fieldElement);
      final protoReflected = _getProtoReflected(relevantFieldType);
      final fd = FieldDescriptor.fromFieldElement(
        fieldElement: fieldElement,
        config: config,
        proto: protoReflected?.proto ?? annotation,
        protoField: protoField,
        refName: refName,
        protoRefName: protoRefName,
      );
      fieldDescriptors.add(fd);
    }
    return fieldDescriptors
      ..sort((a, b) => a.protoField.number.compareTo(b.protoField.number));
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

  var ret = ProtoField(
    number,
    name: name,
  );
  return ret;
}
