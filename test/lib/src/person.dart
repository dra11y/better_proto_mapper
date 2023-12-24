// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:decimal/decimal.dart';
import 'package:better_proto_annotations/better_proto_annotations.dart';
import 'package:better_proto_generator_test/grpc/model.pb.dart';
// ignore: unused_import
import 'package:better_proto_generator_test/gtypes.dart';

part 'person.g.dart';

@Proto()
class Person {
  @ProtoField(1)
  final bool? boolValue;

  @ProtoField(2)
  final Decimal? decVal;

  Person({
    this.boolValue,
    this.decVal,
  });
}

void main() {
  // final dec = Decimal.parse('-10.3');
  // final r = dec.toRational();
  // print('${r.numerator} / ${r.denominator} / ${r.signum}');
  // gp.recipe = GRecipe();
  // final json = gp.writeToJson();
  // final buffer = gp.writeToBuffer();
  // print('${gp.hasRecipe()} - $json - $buffer');
}
