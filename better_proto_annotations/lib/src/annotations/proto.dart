typedef KnownSubClasses = Map<Type, int>;

const KnownSubClasses noSubClass = {};
const defaultSuperFieldsNumber = 1;
const defaultOwnFieldsNumber = 1;
const defaultEnumAllowAlias = false;

class Range<T extends num> {
  const Range(this.start, [this.end]) : assert(end == null || end > start);

  final T start;
  final T? end;

  bool includes(int number) =>
      end != null ? (start <= number && number <= end!) : number == start;

  @override
  String toString() => end != null ? '$start to $end' : '$start';
}

class Proto {
  const Proto({
    this.ownFieldsNumber = defaultOwnFieldsNumber,
    this.superFieldsNumber = defaultSuperFieldsNumber,
    this.enumAllowAlias = defaultEnumAllowAlias,
    this.reserved = const {},
    this.knownSubClassMap = noSubClass,
  });

  final int superFieldsNumber;
  final int ownFieldsNumber;
  // If this is an enum, add `option allow_alias = true;` to the proto definition.
  final bool enumAllowAlias;
  final Set reserved;
  final KnownSubClasses knownSubClassMap;

  @override
  String toString() => '''$runtimeType(
    ownFieldsNumber: $ownFieldsNumber,
    superFieldsNumber: $superFieldsNumber,
    enumAllowAlias: $enumAllowAlias,
    reserved: $reserved,
    knownSubClassMap: $knownSubClassMap,
  )''';
}

const proto = Proto();
