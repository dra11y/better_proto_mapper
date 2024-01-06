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

  const ProtoField.ignore()
      : number = -1,
        name = null,
        intPrecision = null;

  bool get ignored => number == -1;

  @override
  String toString() => '''$runtimeType(
    number: $number,
    ignored: $ignored,
    name: $name,
    intPrecision: $intPrecision,
  )''';
}
