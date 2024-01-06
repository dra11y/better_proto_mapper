import 'package:decimal/decimal.dart';
import 'package:better_proto_annotations/config.dart';
import 'package:better_proto_generator/src/proto_mapper/composite_field_code_generator.dart';

import 'field_code_generators/bigint_field_code_generator.dart';
import 'field_code_generators/decimal_field_code_generator.dart';
import 'field_descriptor.dart';
import 'standalone/generic_field_code_generator.dart';
import 'well_known_types/gbool_field_code_generator.dart';
import 'well_known_types/gdatetime_field_code_generator.dart';
import 'well_known_types/gdouble_field_code_generator.dart';
import 'well_known_types/gduration_field_code_generator.dart';
import 'well_known_types/gint_field_code_generator.dart';
import 'well_known_types/gstring_field_code_generator.dart';

abstract class MapperFieldCodeGenerator {
  String get toProtoMap;
  String get fromProtoMap;

  static const defaultRefName = 'instance';
  static const defaultProtoRefName = 'proto';

  factory MapperFieldCodeGenerator.fromFieldDescriptor({
    required FieldDescriptor fieldDescriptor,
    required Config config,
  }) {
    MapperFieldCodeGenerator? fcd = _getCustomEncodedFieldCodeGenerator(
      fieldDescriptor: fieldDescriptor,
      refName: fieldDescriptor.refName,
      protoRefName: fieldDescriptor.protoRefName,
      config: config,
    );
    if (fcd != null) return fcd;

    if (config.useWellKnownWrappers) {
      if (fieldDescriptor.fieldElementType.isDartCoreString) {
        return GStringFieldCodeGenerator(
          fieldDescriptor: fieldDescriptor,
          refName: fieldDescriptor.refName,
          protoRefName: fieldDescriptor.protoRefName,
        );
      }
      if (fieldDescriptor.fieldElementType.isDartCoreBool) {
        return GBoolFieldCodeGenerator(
          fieldDescriptor: fieldDescriptor,
          refName: fieldDescriptor.refName,
          protoRefName: fieldDescriptor.protoRefName,
        );
      }
      if (fieldDescriptor.fieldElementType.isDartCoreDouble) {
        return GDoubleFieldCodeGenerator(
          fieldDescriptor: fieldDescriptor,
          refName: fieldDescriptor.refName,
          protoRefName: fieldDescriptor.protoRefName,
        );
      }
      if (fieldDescriptor.fieldElementType.isDartCoreInt) {
        return GIntFieldCodeGenerator(
          fieldDescriptor: fieldDescriptor,
          refName: fieldDescriptor.refName,
          protoRefName: fieldDescriptor.protoRefName,
        );
      }
    }
    if (fieldDescriptor.fieldElementTypeName == (DateTime).toString()) {
      return GDateTimeFieldCodeGenerator(
        fieldDescriptor: fieldDescriptor,
        refName: fieldDescriptor.refName,
        protoRefName: fieldDescriptor.protoRefName,
        config: config,
      );
    }
    if (fieldDescriptor.fieldElementTypeName == (Duration).toString()) {
      return GDurationFieldCodeGenerator(
        fieldDescriptor: fieldDescriptor,
        refName: fieldDescriptor.refName,
        protoRefName: fieldDescriptor.protoRefName,
        config: config,
      );
    }

    if (fieldDescriptor.fieldElementType.isDartCoreBool ||
        fieldDescriptor.fieldElementType.isDartCoreInt ||
        fieldDescriptor.fieldElementType.isDartCoreString ||
        fieldDescriptor.fieldElementType.isDartCoreDouble) {
      return GenericFieldCodeGenerator(
        fieldDescriptor: fieldDescriptor,
        refName: fieldDescriptor.refName,
        protoRefName: fieldDescriptor.protoRefName,
      );
    }

    return CompositeFieldCodeGenerator.fromFieldDescriptor(
      fieldDescriptor: fieldDescriptor,
      refName: fieldDescriptor.refName,
      protoRefName: fieldDescriptor.protoRefName,
      config: config,
    );
  }
}

MapperFieldCodeGenerator? _getCustomEncodedFieldCodeGenerator({
  required FieldDescriptor fieldDescriptor,
  required String refName,
  required String protoRefName,
  required Config config,
}) {
  if (fieldDescriptor.fieldElementTypeName == (BigInt).toString()) {
    return BigIntFieldCodeGenerator(
      fieldDescriptor: fieldDescriptor,
      refName: refName,
      protoRefName: protoRefName,
    );
  }
  if (fieldDescriptor.fieldElementTypeName == (Decimal).toString()) {
    return DecimalFieldCodeGenerator(
      fieldDescriptor: fieldDescriptor,
      refName: refName,
      protoRefName: protoRefName,
      config: config,
    );
  }
  return null;
}
