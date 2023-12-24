import 'package:decimal/decimal.dart';
import 'package:better_proto_generator_test/src/polymorphism/abstract_vehicle.dart';
import 'package:better_proto_generator_test/src/polymorphism/aircraft.dart';
import 'package:better_proto_generator_test/src/polymorphism/airplane.dart';
import 'package:better_proto_generator_test/src/polymorphism/balloon.dart';
import 'package:better_proto_generator_test/src/polymorphism/bicycle.dart';
import 'package:better_proto_generator_test/src/polymorphism/car.dart';
import 'package:better_proto_generator_test/src/polymorphism/gyrocopter.dart';
import 'package:better_proto_generator_test/src/polymorphism/helicopter.dart';
import 'package:better_proto_generator_test/src/polymorphism/rotorcraft.dart';
import 'package:better_proto_generator_test/src/polymorphism/scooter.dart';
import 'package:better_proto_generator_test/src/polymorphism/vehicle.dart';
import 'package:test/test.dart';

void main() {
  group('polymorphism test', () {
    test('car test', () {
      final car = Car(numberOfDoors: 4, weight: 1500);
      final mcar = car.toProto();
      final car2 = mcar.toCar();

      expect(car2, car);
    });

    test('airplane test', () {
      final airplane =
          Airplane(key: 'a', wingspan: 10, weight: 1500, serviceCeiling: 10000);
      final mairplane = airplane.toProto();
      final airplane2 = mairplane.toAirplane();

      expect(airplane2, airplane);
    });

    test('vehicle test', () {
      final vehicle = Vehicle(weight: 1500);
      final mvehicle = vehicle.toProto();
      final vehicle2 = mvehicle.toVehicle();

      expect(vehicle2, vehicle);
      expect(vehicle2 is Airplane, false);
      expect(vehicle2 is Car, false);
    });

    test('bicycle test', () {
      final bicycle =
          Bicycle(key: 'bt', wheelDiamater: Decimal.fromInt(20), weight: 1500);
      final mbicycle = bicycle.toProto();
      final bicycle2 = mbicycle.toBicycle();

      expect(bicycle2, bicycle);
    });

    test('scooter test', () {
      final scooter = Scooter(key: 'xpto', weight: 1500);
      final mscooter = scooter.toProto();
      final scooter2 = mscooter.toScooter();

      expect(scooter2, scooter);
    });

    test('poly-car test', () {
      final Vehicle vehicle = Car(numberOfDoors: 4, weight: 1500);
      final mvehicle = vehicle.toProto();
      final vehicle2 = mvehicle.toVehicle();

      expect(vehicle2, vehicle);
      expect(vehicle2, TypeMatcher<Car>());
    });
    test('poly-airplane test', () {
      final Vehicle vehicle =
          Airplane(key: 'b', wingspan: 13, weight: 1500, serviceCeiling: 11000);
      final mvehicle = vehicle.toProto();
      final vehicle2 = mvehicle.toVehicle();

      expect(vehicle2, vehicle);
      expect(vehicle2, TypeMatcher<Airplane>());
    });

    test('poly-helicopter test', () {
      final Vehicle vehicle =
          Helicopter(key: 'pht', weight: 1500, serviceCeiling: 11000);
      final mvehicle = vehicle.toProto();
      final vehicle2 = mvehicle.toVehicle();

      expect(vehicle2, vehicle);
      expect(vehicle2, TypeMatcher<Helicopter>());
    });

    test('poly-gyrocopter test', () {
      final Vehicle vehicle =
          Gyrocopter(key: 'g', weight: 1500, serviceCeiling: 11000);
      final mvehicle = vehicle.toProto();
      final vehicle2 = mvehicle.toVehicle();

      expect(vehicle2, vehicle);
      expect(vehicle2, TypeMatcher<Gyrocopter>());
    });

    test('poly-aircraft-airplane test', () {
      final Aircraft vehicle = Airplane(
          key: 'pa', wingspan: 13, weight: 1500, serviceCeiling: 11000);
      final mvehicle = vehicle.toProto();
      final vehicle2 = mvehicle.toAircraft();

      expect(vehicle2, vehicle);
      expect(vehicle2, TypeMatcher<Airplane>());
    });

    test('poly-aircraft-helicopter test', () {
      final Aircraft vehicle =
          Helicopter(key: 'a', weight: 1500, serviceCeiling: 11000);
      final mvehicle = vehicle.toProto();
      final vehicle2 = mvehicle.toAircraft();

      expect(vehicle2, vehicle);
      expect(vehicle2, TypeMatcher<Helicopter>());
    });

    test('poly-aircraft-gyrocopter test', () {
      final Aircraft vehicle =
          Gyrocopter(key: 'b', weight: 1500, serviceCeiling: 11000);
      final mvehicle = vehicle.toProto();
      final vehicle2 = mvehicle.toAircraft();

      expect(vehicle2, vehicle);
      expect(vehicle2, TypeMatcher<Gyrocopter>());
    });

    test('poly-rotorcraft-helicopter test', () {
      final Rotorcraft vehicle =
          Helicopter(key: 'y', weight: 1500, serviceCeiling: 11000);
      final mvehicle = vehicle.toProto();
      final vehicle2 = mvehicle.toRotorcraft();

      expect(vehicle2, vehicle);
      expect(vehicle2, TypeMatcher<Helicopter>());
    });

    test('poly-rotorcraft-gyrocopter test', () {
      final Rotorcraft vehicle =
          Gyrocopter(key: 'gc', weight: 1500, serviceCeiling: 11000);
      final mvehicle = vehicle.toProto();
      final vehicle2 = mvehicle.toRotorcraft();

      expect(vehicle2, vehicle);
      expect(vehicle2, TypeMatcher<Gyrocopter>());
    });

    test('poly-balloon test', () {
      final Vehicle aircraft =
          Balloon(key: 'ball1', serviceCeiling: 11000, weight: 1500);
      final mvehicle = aircraft.toProto();
      final vehicle2 = mvehicle.toVehicle();

      expect(vehicle2, aircraft);
      expect(vehicle2, TypeMatcher<Balloon>());
    });

    test('poly-aircraft-balloon test', () {
      final Aircraft aircraft =
          Balloon(key: 'y', serviceCeiling: 11000, weight: 1500);
      final mvehicle = aircraft.toProto();
      final vehicle2 = mvehicle.toAircraft();

      expect(vehicle2, aircraft);
      expect(vehicle2, TypeMatcher<Balloon>());
    });

    test('multi poly test', () {
      final car = Car(numberOfDoors: 4, weight: 1500);
      final airplane = Airplane(
          key: '7655', wingspan: 13, weight: 1500, serviceCeiling: 12000);
      final vehicle = Vehicle(weight: 1500);

      final vehicles = <Vehicle>[car, vehicle, airplane];
      final protos = vehicles.map((v) => v.toProto());
      final vehicles2 = protos.map((m) => m.toVehicle()).toList();

      final car2 = vehicles2[0] as Car;
      final vehicle2 = vehicles[1];
      final airplane2 = vehicles2[2] as Airplane;

      expect(car2, car);

      expect(airplane2, airplane);

      expect(vehicle2, vehicle);
      expect(vehicle2 is Airplane, false);
      expect(vehicle2 is Car, false);
    });

    test('poly-bicycle test', () {
      final AbstractVehicle vehicle =
          Bicycle(key: 'bc', wheelDiamater: Decimal.fromInt(20), weight: 1500);
      final mvehicle = vehicle.toProto();
      final vehicle2 = mvehicle.toAbstractVehicle();

      expect(vehicle2, vehicle);
      expect(vehicle2, TypeMatcher<Bicycle>());
    });

    test('poly-scooter test', () {
      final AbstractVehicle vehicle = Scooter(key: 'ps', weight: 1500);
      final mvehicle = vehicle.toProto();
      final vehicle2 = mvehicle.toAbstractVehicle();

      expect(vehicle2, vehicle);
      expect(vehicle2, TypeMatcher<Scooter>());
    });

    test('multi abstract poly test', () {
      final bicycle =
          Bicycle(key: 'a', wheelDiamater: Decimal.fromInt(20), weight: 1500);
      final scooter = Scooter(key: 'b', weight: 1500);

      final abstractVehicles = <AbstractVehicle>[bicycle, scooter];
      final maps = abstractVehicles.map((v) => v.toProto());
      final abstractVehicles2 = maps.map((m) => m.toAbstractVehicle()).toList();

      final bicycle2 = abstractVehicles2[0];
      final scooter2 = abstractVehicles2[1];

      expect(bicycle2, bicycle);
      expect(bicycle2, TypeMatcher<Bicycle>());

      expect(scooter2, scooter);
      expect(scooter2, TypeMatcher<Scooter>());
    });
  });
}
