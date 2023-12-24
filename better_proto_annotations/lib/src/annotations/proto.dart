typedef KnownSubClasses = Map<Type, int>;

const KnownSubClasses noSubClass = {};
const defaultSuperFieldsNumber = 1;
const defaultOwnFieldsNumber = 1;
const defaultEnumAllowAlias = false;

class Proto {
  const Proto({
    this.ownFieldsNumber = defaultOwnFieldsNumber,
    this.superFieldsNumber = defaultSuperFieldsNumber,
    this.enumAllowAlias = defaultEnumAllowAlias,
    this.knownSubClassMap = noSubClass,
  });

  final int superFieldsNumber;
  final int ownFieldsNumber;
  // If this is an enum, add `option allow_alias = true;` to the proto definition.
  final bool enumAllowAlias;
  final KnownSubClasses knownSubClassMap;

  @override
  String toString() => '''Proto(
    ownFieldsNumber: $ownFieldsNumber,
    superFieldsNumber: $superFieldsNumber,
    enumAllowAlias: $enumAllowAlias,
    knownSubClassMap: $knownSubClassMap,
  )''';
}

const proto = Proto();
