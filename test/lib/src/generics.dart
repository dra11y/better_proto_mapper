import 'package:better_proto_annotations/better_proto_annotations.dart';
import 'package:better_proto_generator_test/grpc/model.pb.dart';

part 'generics.g.dart';

const knownSubClasses = {ContestConstraint: 3};

@Proto(knownSubClassMap: knownSubClasses)
abstract class ScheduleConstraint<T> {
  /// Check whether or not the relevant instance violates the constraint
  /// Returns a list of validation messages when invalid.
  Set<String> validate(T instance);
}

@Proto()
class ConstraintAdded {
  late String contestScheduleId;
  late ScheduleConstraint constraint;
}

@Proto()
class ContestConstraint extends ScheduleConstraint<Contest> {
  @override
  Set<String> validate(Contest instance) {
    return {};
  }
}

class Contest {}
