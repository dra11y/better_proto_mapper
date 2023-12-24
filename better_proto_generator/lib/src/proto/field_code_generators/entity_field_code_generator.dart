import 'package:analyzer/dart/element/type.dart';
import 'package:better_proto_generator/src/common/proto_common.dart';

import '../field_code_generator.dart';

class EntityFieldCodeGenerator extends CompositeFieldCodeGenerator {
  EntityFieldCodeGenerator(super.fieldDescriptor);

  @override
  String get fieldType {
    final fieldElementType = fieldDescriptor.itemType;

    final packagePrefix = fieldElementType.packageName.isEmpty
        ? ''
        : '${fieldElementType.packageName}.';

    var displayName = fieldElementType.getDisplayString(withNullability: false);
    // In case of dynamic typed field, avoid "TypeName<dynamic>"...
    if (fieldElementType is ParameterizedType &&
        fieldElementType.typeArguments.whereType<DynamicType>().isNotEmpty) {
      if (fieldElementType.element?.name != null) {
        displayName = fieldElementType.element!.name!;
      }
    }
    return '$packagePrefix${fieldDescriptor.prefix}$displayName';
  }
}
