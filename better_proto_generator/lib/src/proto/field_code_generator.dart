import 'package:decimal/decimal.dart';
import 'package:better_proto_annotations/config.dart';
import 'package:better_proto_generator/src/proto/field_code_generators/bigint_field_code_generator.dart';
import 'package:better_proto_generator/src/proto/field_code_generators/enum_field_code_generator.dart';
import 'package:better_proto_generator/src/common/proto_common.dart';
import 'field_code_generators/imports.dart';
import 'standalone_field_code_generators/bool_field_code_generator.dart';
import 'field_code_generators/decimal_field_code_generator.dart';
import 'field_code_generators/entity_field_code_generator.dart';
import 'standalone_field_code_generators/double_field_code_generator.dart';
import 'standalone_field_code_generators/duration_field_code_generator.dart';
import 'standalone_field_code_generators/int_field_code_generator.dart';
import 'standalone_field_code_generators/string_field_code_generator.dart';
import 'standalone_field_code_generators/timestamp_field_code_generator.dart';
import 'wkt_field_code_generators/gbool_field_code_generator.dart';
import 'wkt_field_code_generators/gdatetime_field_code_generator.dart';
import 'wkt_field_code_generators/gdouble_field_code_generator.dart';
import 'wkt_field_code_generators/gduration_field_code_generator.dart';
import 'wkt_field_code_generators/gint_field_code_generator.dart';
import 'wkt_field_code_generators/gstring_field_code_generator.dart';
import 'field_code_generators/map_field_code_generator.dart';
import 'field_descriptor.dart';

part 'composite_field_code_generator.dart';
part 'field_code_generator_mixin.dart';
part 'wkt_field_code_generator.dart';
part 'standalone_field_code_generator.dart';

abstract class FieldCodeGenerator {
  String render();

  static FieldCodeGenerator fromFieldDescriptor(
    FieldDescriptor fieldDescriptor, {
    required Config config,
  }) {
    final type = fieldDescriptor.itemType;
    final typeName =
        fieldDescriptor.itemType.getDisplayString(withNullability: false);

    if (config.useWellKnownWrappers) {
      if (type.isDartCoreString) {
        return GStringFieldCodeGenerator(fieldDescriptor);
      }
      if (type.isDartCoreBool) {
        return GBoolFieldCodeGenerator(fieldDescriptor);
      }
      if (type.isDartCoreInt) {
        return GIntFieldCodeGenerator(fieldDescriptor, config: config);
      }
      if (type.isDartCoreDouble) {
        return GDoubleFieldCodeGenerator(fieldDescriptor);
      }
    }
    if (config.useWellKnownTimestamp && typeName == (DateTime).toString()) {
      return GDateTimeFieldCodeGenerator(fieldDescriptor);
    }
    if (config.useWellKnownDuration && typeName == (Duration).toString()) {
      return GDurationFieldCodeGenerator(fieldDescriptor);
    }

    if (type.isDartCoreString) {
      StringFieldCodeGenerator(fieldDescriptor);
    }
    if (type.isDartCoreBool) {
      return BoolFieldCodeGenerator(fieldDescriptor);
    }
    if (type.isDartCoreInt) {
      return IntFieldCodeGenerator(fieldDescriptor, config: config);
    }
    if (type.isDartCoreDouble) {
      return DoubleFieldCodeGenerator(fieldDescriptor);
    }
    if (typeName == (BigInt).toString()) {
      return BigIntFieldCodeGenerator(fieldDescriptor);
    }
    if (typeName == (Decimal).toString()) {
      return DecimalFieldCodeGenerator(fieldDescriptor, config: config);
    }
    if (typeName == (DateTime).toString()) {
      return TimestampFieldCodeGenerator(fieldDescriptor);
    }
    if (typeName == (Duration).toString()) {
      return DurationFieldCodeGenerator(fieldDescriptor);
    }
    if (fieldDescriptor.typeIsEnum) {
      return EnumFieldCodeGenerator(fieldDescriptor);
    }
    if (type.hasProto) {
      return EntityFieldCodeGenerator(fieldDescriptor);
    }
    if (type.isDartCoreMap) {
      return MapFieldCodeGenerator(fieldDescriptor);
    }
    return StringFieldCodeGenerator(fieldDescriptor);
  }
}
