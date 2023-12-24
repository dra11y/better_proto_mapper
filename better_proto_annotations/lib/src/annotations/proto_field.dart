enum IntPrecision {
  int32,
  int64,
}

class ProtoField {
  final String? name;
  final int number;
  final IntPrecision? intPrecision;

  const ProtoField(
    this.number, {
    this.name,
  }) : intPrecision = null;

  const ProtoField.int64(this.number, {this.name})
      : intPrecision = IntPrecision.int64;

  const ProtoField.int32(this.number, {this.name})
      : intPrecision = IntPrecision.int32;

  @override
  String toString() => '''ProtoField(
    number: $number,
    name: $name,
    intPrecision: $intPrecision,
  )''';
}
