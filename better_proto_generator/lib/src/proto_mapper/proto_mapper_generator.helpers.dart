part of 'proto_mapper_generator.dart';

// Iterable<FieldDescriptor> _getFieldDescriptors(
//   InterfaceElement classElement,
//   ProtoReflected protoReflected,
// ) {
//   final fieldSet = classElement.getSortedFieldSet();
//   final fieldDescriptors = fieldSet.map((fieldElement) {
//     var relevantFieldType = fieldElement.type;
//     if (relevantFieldType.isIterable || relevantFieldType.isList) {
//       relevantFieldType =
//           (relevantFieldType as InterfaceType).typeArguments.first;
//     }
//     var annotations = getAnnotationsByName(relevantFieldType, 'MapProto');
//     if (annotations.isNotEmpty) {
//       final readAnnotation =
//           ConstantReader(annotations.first.computeConstantValue());
//       var hydratedAnnotation = _hydrateAnnotation(
//         readAnnotation,
//         prefix: defaultPrefix,
//         dateTimePrecision:
//             annotation.dateTimePrecision ?? TimePrecision.microseconds,
//         durationPrecision:
//             annotation.durationPrecision ?? TimePrecision.microseconds,
//         allowMissingFields: annotation.allowMissingFields,
//       );
//       return FieldDescriptor.fromFieldElement(
//           fieldElement, hydratedAnnotation.mapProto);
//     }
//     return FieldDescriptor.fromFieldElement(fieldElement, annotation);
//   });
//   return fieldDescriptors;
// }

// ProtoReflected _hydrateAnnotation(
//   ConstantReader reader, {
//   String? prefix,
//   required TimePrecision dateTimePrecision,
//   required TimePrecision durationPrecision,
//   required bool allowMissingFields,
// }) {
//   final annotatedDateTimePrecision =
//       reader.getTimePrecision('dateTimePrecision') ?? dateTimePrecision;

//   final annotatedDurationPrecision =
//       reader.getTimePrecision('durationPrecision') ?? durationPrecision;

//   final annotatedAllowMissingFields =
//       reader.read('allowMissingFields').boolValue || allowMissingFields;

//   var proto = Proto(
//     prefix: reader.read('prefix').literalValue as String? ?? prefix,
//     dateTimePrecision: annotatedDateTimePrecision,
//     durationPrecision: annotatedDurationPrecision,
//     allowMissingFields: annotatedAllowMissingFields,
//   );

//   final kscReader = reader.read('knownSubClasses');
//   final kscs = kscReader.isNull
//       ? null
//       : kscReader.listValue.map((ksc) {
//           return ksc.toTypeValue()!;
//         }).toList();

//   final ret = ProtoReflected(proto, kscs);

//   return ret;
// }

Iterable<ElementAnnotation> getAnnotationsByName(
    DartType dartType, String annotationName) {
  return dartType.element!.metadata.where((m) {
    DartType annotationType;
    if (m.element! is PropertyAccessorElement) {
      annotationType = (m.element! as PropertyAccessorElement).returnType;
    } else if (m.element! is ConstructorElement) {
      annotationType = (m.element! as ConstructorElement).returnType;
    } else {
      return false;
    }
    if (annotationType is InterfaceType) {
      final types = <InterfaceType>[
        annotationType,
        ...annotationType.allSupertypes
      ];
      return types.where((element) {
        return element.getDisplayString(withNullability: true) ==
            annotationName;
      }).isNotEmpty;
    }
    return false;
  });
}

List<DartType> getDirectKnownSubclasses(
    List<DartType>? subClasses, Type annotationType) {
  final lst = <DartType>[];
  if (subClasses == null) {
    return lst;
  }
  for (final subClass in subClasses) {
    final element = subClass.element as ClassElement;
    final reader =
        TypeChecker.fromRuntime(annotationType).firstAnnotationOf(element);
    if (reader == null) {
      continue;
    }
    lst.add(subClass);
  }
  return lst;
}
