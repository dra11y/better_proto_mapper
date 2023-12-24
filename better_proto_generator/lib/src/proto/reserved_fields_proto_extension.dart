import 'package:better_proto_annotations/better_proto_annotations.dart';

extension ReservedFieldsProtoExtension on Proto {
  bool isReserved(Object field) {
    for (final res in reserved) {
      if (res is int && field is int && field == res) {
        return true;
      } else if (res is Range && field is int && res.includes(field)) {
        return true;
      } else if (res is String && field is String && field == res) {
        return true;
      }
    }
    return false;
  }

  String generateReservedFields() {
    final fieldBuffer = StringBuffer();

    final reservedRanges = reserved.whereType<Range>();
    final reservedNames = reserved.whereType<String>();

    if (reservedRanges.isNotEmpty) {
      fieldBuffer.writeln('  reserved ${reservedRanges.join(', ')};');
    }
    if (reservedNames.isNotEmpty) {
      fieldBuffer.writeln('  reserved "${reservedNames.join('", "')}";');
    }

    return fieldBuffer.toString();
  }
}
