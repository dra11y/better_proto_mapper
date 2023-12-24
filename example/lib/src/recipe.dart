import 'package:better_proto_annotations/better_proto_annotations.dart';
import 'package:proto_mapper_example/src/grpc/model.pb.dart';

import 'ingredient.dart';

part 'recipe.g.dart';

@proto // generate .proto message based on this .dart file
// generate mapping code between the protoc generated code and this class.
class Recipe {
  Recipe({
    this.id = '',
    required this.title,
    required this.ingredients,
    this.runtimeTag,
  });

  @ProtoField(2)
  final String id;

  // generate the field on the .proto message with the name 'ptitle'
  // the mapping code is also adapted to the name 'ptitle'
  @ProtoField(3, name: 'ptitle')
  final String title;

  // Take care to decorate the [Ingredient] class with @proto
  @ProtoField(4)
  final List<Ingredient> ingredients;

  // without a @ProtoField(n) annotation, will be left out from proto
  final String? runtimeTag;
}
