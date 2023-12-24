import 'package:better_proto_generator/src/common/proto_common.dart';

import '../field_code_generator.dart';

class EnumFieldCodeGenerator extends CompositeFieldCodeGenerator {
  EnumFieldCodeGenerator(super.fieldDescriptor);

  @override
  String get fieldType {
    final fieldElementType = fieldDescriptor.itemType;

    final packagePrefix = fieldElementType.packageName.isEmpty
        ? ''
        : '${fieldElementType.packageName}.';

    final displayName =
        fieldElementType.getDisplayString(withNullability: false);

    return '$packagePrefix${fieldDescriptor.prefix}$displayName';
  }
}
