import 'package:analyzer/dart/element/type.dart';
import 'package:better_proto_generator/src/common/proto_common.dart';

import '../field_code_generator.dart';

class MapFieldCodeGenerator extends CompositeFieldCodeGenerator {
  MapFieldCodeGenerator(super.fieldDescriptor) {
    final fieldElementType = fieldDescriptor.itemType;

    final packageName = fieldElementType.packageName;

    assert(fieldElementType is InterfaceType);
    final keyTypeName = _fieldTypeName(
        (fieldElementType as InterfaceType).typeArguments[0],
        fieldDescriptor.prefix);
    final valueTypeName = _fieldTypeName(
        (fieldElementType).typeArguments[1], fieldDescriptor.prefix);

    final fieldElementTypeName = '''map<$keyTypeName, $valueTypeName>''';

    _fieldType = packageName != ''
        ? '$packageName.$fieldElementTypeName'
        : fieldElementTypeName;
  }

  late String _fieldType;
  @override
  String get fieldType => _fieldType;

  String _fieldTypeName(DartType keyType, String prefix) {
    if (keyType.isDartCoreString) {
      return 'string';
    } else if (keyType.isDartCoreInt) {
      return 'int32';
    } else if (keyType.isDartCoreDouble) {
      return 'double';
    } else if (keyType.isDartCoreBool) {
      return 'bool';
    }
    return '$prefix${keyType.getDisplayString(withNullability: true)}';
  }
}
