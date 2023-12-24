import 'package:better_proto_annotations/better_proto_annotations.dart';
import 'package:better_proto_generator_test/grpc/model.pb.dart';

part 'abstract_missing_subclass.g.dart';

/// When working on a project but you haven't yet defined all subclasses,
/// make sure that the generated code throws the Unimplemented exception,
/// instead of creating a compilation error...
@Proto()
abstract class AbstractParentClass1 {}

const knownSubClasses = {SubClass1: 3};

@Proto(knownSubClassMap: knownSubClasses)
abstract class AbstractParentClass2 {}

@Proto()
class SubClass1 extends AbstractParentClass2 {}
