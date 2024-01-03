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

extension InterfaceElementExtensions on InterfaceElement {
  Iterable<FieldDescriptor> getFieldDescriptors({
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
    for (final fieldElement in fieldSet) {
      final protoField = _getProtoFieldAnnotation(fieldElement);
      if (protoField == null) {
        print(
            'WARNING: Field missing @ProtoField() annotation: $fieldElement, skipping.');
        continue;
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
    return fieldDescriptors;
  }
}

// extension EnumElementExtensions on EnumElement {
//   Iterable<FieldDescriptor> getFieldDescriptors({
//     required Proto annotation,
//     required Config config,
//   }) {
//     final fieldSet = getSortedFieldSet(includeInherited: false);
//     final fieldDescriptors = <FieldDescriptor>[];
//     int index = 0;
//     for (final fieldElement in fieldSet) {
//       final protoField = _getProtoFieldAnnotation(fieldElement);
//       final relevantFieldType = _getRelevantFieldType(fieldElement);
//       final protoReflected = _getProtoReflected(relevantFieldType);
//       final fd = FieldDescriptor.fromFieldElement(
//         fieldElement: fieldElement,
//         config: config,
//         proto: protoReflected?.proto ?? annotation,
//         protoField: protoField ?? ProtoField(index++),
//         // forEnum: true,
//       );
//       fieldDescriptors.add(fd);
//     }
//     return fieldDescriptors;
//   }
// }

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
