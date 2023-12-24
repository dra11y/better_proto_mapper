import 'package:better_proto_annotations/better_proto_annotations.dart';
import 'package:better_proto_generator_test/grpc/model.pbenum.dart';

part 'recipe_type.g.dart';

@Proto()
enum RecipeTypes {
  cook,
  grill,
  fry,
  stew,
}
