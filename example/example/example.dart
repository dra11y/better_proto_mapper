import 'package:proto_mapper_example/src/car.dart';
import 'package:proto_mapper_example/src/ingredient.dart';
import 'package:proto_mapper_example/src/recipe.dart';
import 'package:proto_mapper_example/src/vehicle.dart';

void main(List<String> args) {
  // demonstration of a simple mapping
  simpleMappingExample();

  // demonstrates the usage of mapping with polymorphism
  polymorphicExample();
}

void simpleMappingExample() {
  final expiry = DateTime.now().add(Duration(days: 30));
  final recipe = Recipe(
    title: 'Scrambled eggs',
    ingredients: [
      Ingredient(
        description: 'eggs',
        quantity: 3,
        expiryDate: expiry,
        estimatedPreparationTime: Duration(minutes: 10),
      ),
      Ingredient(
        description: 'bacon',
        quantity: 1,
        expiryDate: expiry,
        estimatedPreparationTime: Duration(minutes: 15),
      ),
      Ingredient(
        description: 'milk',
        quantity: 0.2,
        expiryDate: expiry,
        estimatedPreparationTime: Duration(minutes: 20),
      ),
    ],
  );

  /// protoRecipe is a proto class, which
  /// could be returned as a gRPC service
  /// return type. To map from the
  /// Recipe class to its corresponding proto
  /// class, the toProto is used.
  final protoRecipe = recipe.toProto();

  /// When a gRPC receives a protoRecipe as
  /// a parameter, it can be mapped back to
  /// an instance of a Recipe class using the
  /// toRecipe() method.
  final receivedRecipe = protoRecipe.toRecipe();

  print(' ${receivedRecipe.title} is expected to be Scrambled eggs');
}

void polymorphicExample() {
  final Vehicle vehicle = Car(
    weight: 1000.0,
    numberOfDoors: 4,
  );

  final proto = vehicle.toProto();
  final receivedVehicle = proto.toVehicle();
  checkReceivedVehicle(receivedVehicle);
}

void checkReceivedVehicle(Vehicle vehicle) {
  print(
      'Vehicle is a ${vehicle.runtimeType} and it has a weight of ${vehicle.weight}');
  if (vehicle is Car) {
    print('It also has ${vehicle.numberOfDoors} doors');
  }
}
