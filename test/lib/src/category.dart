import 'package:better_proto_annotations/better_proto_annotations.dart';
import 'package:better_proto_generator_test/grpc/model.pb.dart';

import 'component.dart';

part 'category.g.dart';

@Proto()
class Category {
  @ProtoField(2)
  final String title;

  @ProtoField(3)
  final Component mainComponent;

  @ProtoField(4)
  final Component? alternativeComponent;

  @ProtoField(5)
  final List<Component> otherComponents;

  @ProtoField(6)
  final List<Component>? secondaryComponents;

  Category({
    required this.title,
    required this.mainComponent,
    required this.otherComponents,
    this.alternativeComponent,
    this.secondaryComponents,
  });
}
