import 'package:analyzer/dart/element/type.dart';
import 'package:better_proto_annotations/better_proto_annotations.dart';
import 'package:better_proto_generator/src/proto/proto_reflected.dart';
import 'package:source_gen/source_gen.dart';

final rangeChecker = TypeChecker.fromRuntime(Range);
final stringChecker = TypeChecker.fromRuntime(String);

extension ConstantReaderExtension on ConstantReader {
  ProtoReflected hydrateAnnotation() {
    final ownFieldsNumber = read('ownFieldsNumber').intValue;
    final superFieldsNumber = read('superFieldsNumber').intValue;
    final enumAllowAlias = read('enumAllowAlias').boolValue;

    final kscReader = read('knownSubClassMap');
    final kscs = kscReader.mapValue.map(
      (key, value) {
        final k = key!.toTypeValue()!;
        final v = value!.toIntValue()!;
        return MapEntry<DartType, int>(k, v);
      },
    );

    final reservedReader = read('reserved');
    final Set<Range> reservedRanges = {};
    final Set<String> reservedNames = {};
    for (final reserved in reservedReader.setValue) {
      final intValue = reserved.toIntValue();
      if (intValue != null) {
        reservedRanges.add(Range(intValue));
        continue;
      }
      final stringValue = reserved.toStringValue();
      if (stringValue != null) {
        reservedNames.add(stringValue);
        continue;
      }

      if (rangeChecker.isExactlyType(reserved.type!)) {
        final reservedReader = ConstantReader(reserved);
        final start = reservedReader.read('start').intValue;
        final endReader = reservedReader.read('end');
        final end = endReader.isNull ? null : endReader.intValue;
        reservedRanges.add(Range(start, end));
        continue;
      }

      throw Exception('Unknown reserved value: $reserved');
    }

    final proto = Proto(
      ownFieldsNumber: ownFieldsNumber,
      superFieldsNumber: superFieldsNumber,
      enumAllowAlias: enumAllowAlias,
      reserved: {...reservedRanges, ...reservedNames},
      knownSubClassMap: kscs.map(
        (key, value) => MapEntry(key.runtimeType, value),
      ),
    );

    final ret = ProtoReflected(proto, kscs);

    return ret;
  }
}
