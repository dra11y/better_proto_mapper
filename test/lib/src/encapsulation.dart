import 'package:better_proto_annotations/better_proto_annotations.dart';
import 'package:better_proto_generator_test/grpc/model.pb.dart';

part 'encapsulation.g.dart';

/// When "encapsulating" certain fields, they should still be included
/// in the generated `.proto` file and `Mapper` classes,
/// if the field name matches a parameter within the available constructor(s).
/// Even for entities there is nothing wrong with using encapsulation
/// to restrict direct access to certain fields. That should not mean those
/// fields are to be ignored when it comes to "serialization".
@Proto()
class EncapsulatedFieldsClass {
  @ProtoField(1)
  final String finalString;

  @ProtoField(2)
  String get encapsulatedString => _encapsulatedString;
  String _encapsulatedString;

  changeEncapsulatedString(String encapsulatedString) {
    _encapsulatedString = encapsulatedString;
  }

  final Set<String> _encapsulatedCollection = {};
  Set<String> get encapsulatedCollection =>
      Set.unmodifiable(_encapsulatedCollection);

  EncapsulatedFieldsClass({
    required this.finalString,
    required String encapsulatedString,
    Set<String>? encapsulatedCollection,
  }) : _encapsulatedString = encapsulatedString {
    _encapsulatedCollection.addAll(encapsulatedCollection ?? {});
  }

  void setEncapsulatedValue(String value) {
    _encapsulatedString = value;
  }

  void addToCollection(String value) {
    _encapsulatedCollection.add(value);
  }

  void removeFromCollection(String value) {
    _encapsulatedCollection.remove(value);
  }
}
