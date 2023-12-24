final _fullBigByte = BigInt.from(0xFF);
final _bigZero = BigInt.from(0);
final _bigOne = BigInt.from(1);

extension $BigIntProtoExtension on BigInt {
  List<int> $toProtoBytes() {
    var value = this;
    value = (value.abs() << 1) + (value.isNegative ? _bigOne : _bigZero);
    final nBytes = (value.bitLength - 1) ~/ 8 + 1;
    final lst = List<int>.filled(nBytes, 0, growable: false);

    for (var i = 0; i < nBytes; i++) {
      final byte = value & _fullBigByte;
      value = value >> 8;
      lst[nBytes - i - 1] = byte.toInt();
    }
    return lst;
  }

  static BigInt $fromProtoBytes(List<int> bytes) {
    if (bytes.isEmpty) {
      return _bigZero;
    }
    var result = _bigZero;
    for (final byte in bytes) {
      result = (result << 8) + BigInt.from(byte);
    }
    result = result >> 1;
    if ((bytes.last & 1) == 1) {
      result = -result;
    }
    return result;
  }
}

extension $NullableBigIntProtoExtension on BigInt? {
  List<int> $toProtoBytes() {
    if (this == null) return [];
    return this!.$toProtoBytes();
  }

  static BigInt? $fromProtoBytes(List<int> bytes) {
    if (bytes.isEmpty) {
      return null;
    }

    return $BigIntProtoExtension.$fromProtoBytes(bytes);
  }
}
