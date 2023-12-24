import 'package:decimal/decimal.dart';
import 'package:rational/rational.dart';
import 'bigint_proto_extension.dart';

extension $DecimalProtoExtension on Decimal {
  List<int> $toProtoBytes() {
    final rational = toRational();

    final numerator = rational.numerator;
    final denominator = rational.denominator;

    final nBytes = numerator.$toProtoBytes();
    final dBytes = denominator.$toProtoBytes();

    final lBytes = _encodeLength(nBytes.length);
    final bytes = <int>[...lBytes, ...nBytes, ...dBytes];
    return bytes;
  }

  static Decimal $fromProtoBytes(List<int> bytes) {
    bytes = [...bytes];
    final nLength = _decodeLength(bytes);
    final nBytes = bytes.take(nLength).toList();
    final dBytes = bytes.skip(nLength).toList();

    final numerator = $BigIntProtoExtension.$fromProtoBytes(nBytes);
    final denominator = $BigIntProtoExtension.$fromProtoBytes(dBytes);

    final rational = Rational(numerator, denominator);
    return rational.toDecimal();
  }

  String $toProtoString() {
    return toString();
  }

  static Decimal $fromProtoString(String string) {
    return Decimal.parse(string);
  }
}

extension $NullableDecimalProtoExtension on Decimal? {
  List<int> $toProtoBytes() {
    if (this == null) return [];
    return this!.$toProtoBytes();
  }

  static Decimal? $fromProtoBytes(List<int> bytes) {
    if (bytes.isEmpty) {
      return null;
    }

    return $DecimalProtoExtension.$fromProtoBytes(bytes);
  }

  String $toProtoString() {
    if (this == null) return '';
    return toString();
  }

  static Decimal? $fromProtoString(String string) {
    if (string.isEmpty) {
      return null;
    }

    return $DecimalProtoExtension.$fromProtoString(string);
  }
}

const _byte7 = 0xFF >> 1;
const _flag = 1 << 7;

List<int> _encodeLength(int length) {
  final bytes = <int>[];
  while (length > 0) {
    final flag = bytes.isEmpty ? 0 : _flag;
    final byte = (length & _byte7) + flag;
    bytes.insert(0, byte);
    length = length >> 7;
  }
  return bytes.isEmpty ? [0] : bytes;
}

int _decodeLength(List<int> bytes) {
  int length = 0;

  if (bytes.isEmpty) return 0;
  int byte;
  do {
    byte = bytes.first;
    bytes.removeAt(0);

    length = length << 7;
    length = length + (byte & _byte7);
  } while ((byte & _flag) == _flag && bytes.isNotEmpty);
  return length;
}
