
### Warning - Breaking Changes
This package has undergone a major revision with a lot of breaking changes. If you are using the package for the first time, feel free to skip to the [Introduction](#introduction) as this does not apply to you. The driving principle behind the changes was to put you in control of the generated proto field numbers and at the same time simplify a lot of the package's usage. Upgrading may require a significant effort. So, please consider this before doing so.
Here's the list of changes:

- Single proto file for the entire package instead of a proto file for each Dart file (this changes everything, it simplifies everything). This means that when running ```protoc``` you will get a single set of .pb.dart, .pb.enum.dart, .pbjson.dart set of files instead of one per origin dart file. Easier to integrate and easier to manage.
- Removed the feature to generate services.
- ```@Proto()``` annotation now doubles also as ```@MapProto()```, so now only a single annotation is required to both indicate the generator to generate proto messages and mapping code. So, ```@MapProto()``` was removed.
- Previous versions represented nullable fields by adding ```*hasValue``` fields. This has been removed. In place of those, nullable fields are now represented using proto buffer optional fields. Optionally, the package can be configured to generate code that uses Google Wellknown Types to represent nullable values.
- Every field that is mapped requires now a ```@ProtoField(n)``` containing the proto field number.
- Removed the ```@ProtoIgnore``` as it is redundant.
- ```Proto.knownSubClasses``` is superseded by ```Proto.knownSubClassMap```. The field is now a map between the type of each subclass and the proto field number used to represent that class.
- Duration and datetime either represented in microseconds (default) or in Google Well Known Types (configurable).
- Completely overhauled ```build.yaml```.

## Introduction

The purpose of this package, alongside its companion proto_annotations package, is to significantly reduce the workload of exposing Dart business model classes as protocol buffer messages to be used with gRPC.

## Getting started

Before getting started, ensure you have the Dart protoc plugin installed, by following these [instructions](https://pub.dev/packages/protoc_plugin).

Let's assume you've got the following class you want to map to gRPC, so you can serialize it to protocol buffers:

```dart
// ingredient.dart
class Ingredient {
  const Ingredient({
    required this.description,
    required this.quantity,
    this.batchSize,
    this.estimatedPreparationTime,
    this.expiryDate,
  });

  final String description;
  final double quantity;

  // notice this int is nullable
  final int? batchSize;

  final Duration? estimatedPreparationTime;
  final DateTime? expiryDate;
}

```

First, add the dependencies to pubspec.yaml:

```yaml
dependencies:
  proto_annotations: latest

dev_dependencies:
  better_proto_generator: latest
  build_runner: any
```

Add the import to ```proto_annotations``` package and add the ```part 'ingredient.g.dart';``` directive:

```dart
import 'package:better_proto_annotations/better_proto_annotations.dart';

part 'ingredient.g.dart';

class Ingredient { /*...*/ }
```

After doing this the first time, it is likely the compiler will complain that ```ingredient.g.dart``` still doesn't exist. We will generate it in a short while. Next, decorate the class with a ```@proto``` (shorthand for ```@Proto()```) annotation, and a ```@ProtoField()``` annotation for every field that you want to map:

```dart
import 'package:better_proto_annotations/better_proto_annotations.dart';

part 'ingredient.g.dart';

@proto
class Ingredient {
  const Ingredient({
    required this.description,
    required this.quantity,
    this.batchSize,
    required this.estimatedPreparationTime,
    required this.expiryDate,
  });

  @ProtoField(2)
  final String description;

  @ProtoField(3)
  final double quantity;

  @ProtoField(4)
  final int? batchSize;

  @ProtoField(5)
  final Duration estimatedPreparationTime;

  @ProtoField(6)
  final DateTime expiryDate;
}
```

Note that we are starting the first field with number 2, instead of 1. Unless you're absolutely sure this class will never extend from another class, it is recommended to start always with number 2 and leave 1 to represent the message containing the fields of the super class.

From the terminal, in the directory of your package:
```sh
# This will run proto_generator to generate lib/proto/model.proto
dart run build_runner build

# create the lib/src/grpc directory
mkdir -p lib/src/grpc  # or whatever equivalent for your OS

# this will run the protoc compiler to generate lib/src/grpc/model.pb.dart, lib/src/grpc/model.pbenum.dart and lib/src/grpc/model.pbjson.dart files
protoc --dart_out=grpc:lib/src/grpc -Ilib/proto  ./lib/proto/model.proto

# OPTIONAL - this reformats the proto file
clang-format -i lib/proto/model.proto
```
*Hint*: Whenever you change any of your model classes, you will need to run this set of commands, so it is a good idea to integrate them into a shell script, a Makefile or whatever tool of your choice.

By this point, you will get the following ```lib/proto/model.proto``` file:
```protobuf
syntax = "proto3";

message GIngredient {
  string description = 2;
  double quantity = 3;

  optional int32 batch_size = 4;

  int64 estimated_preparation_time = 5;
  int64 expiry_date = 6;
}

```
Notice that the number of the proto fields is exactly the number you indicated in the ```@ProtoField(n)``` annotation for each field.

The result of the ```protoc``` compilation will also be present in the ```lib/src/grpc/model.pb.dart```, where you will find a ```GIngredient``` class.

You will also get the following ```ingredient.g.dart``` file:
```dart
// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ingredient.dart';

// **************************************************************************
// ProtoMapperGenerator
// **************************************************************************

class $IngredientProtoMapper implements ProtoMapper<Ingredient, GIngredient> {

  ///// remainder removed for brevity
}
///// remainder removed for brevity
```

By this point, you will get an error in the generated file complaining it doesn't know about the ```GIngredient``` class. To fix this, simply add the import to the ```ingredient.dart``` file:

```dart
import 'package:better_proto_annotations/better_proto_annotations.dart';
// here's the reference
import 'package:proto_mapper_example/src/grpc/model.pb.dart';

part 'ingredient.g.dart';

@proto
class Ingredient {
  const Ingredient({
    required this.description,
    required this.quantity,
  });

  @ProtoField(2)
  final String description;

  @ProtoField(3)
  final double quantity;
}

```

## Polymorphism

This package supports polymorphism. Instead of going step by step, let's just look at a complete example:

```dart
/// the novelty here is that we are defining the value of knownSubClassMap
@Proto(knownSubClassMap: {
  Car: 2, // notice number 2 and 3 here
  Airplane: 3,
})
abstract class Vehicle {
  const Vehicle({
    required this.weight,
  });

  @ProtoField(2)
  final double weight;
}

// the fact that the following classes extend
// vehicle will add a message containing the fields of
// Vehicle as a message field. By default it will have
// field number one.
@proto
class Car extends Vehicle {
  Car({
    required super.weight,
    required this.numberOfDoors,
  });

  @ProtoField(2)
  final int numberOfDoors;
}

@proto
class Airplane extends Vehicle {
  Airplane({
    required super.weight,
    required this.registration,
    required this.serviceCeiling,
  });

  @ProtoField(2)
  final String registration;

  @ProtoField(3)
  final int serviceCeiling;
}
```

Here's the resulting contents of ```model.proto```:
```protobuf
syntax="proto3";

// note that because there is knownSubclassMap,
// the actual fields of Vehicle are no longer
// inside GVehicle, but inside GFieldsOfVehicle
message GFieldsOfVehicle { double weight = 2; }

// because a vehicle can be a car or
// an airplane, the message contains
// a oneof with each of the
// known subclasses
message GVehicle {
  oneof props {
    GFieldsOfVehicle vehicle = 1;

    // remember the following annotation above?
    //// @Proto(knownSubClassMap: {
    ////   Car: 2, // notice number 2 and 3 here
    ////   Airplane: 3,
    //// })
    //
    // number 2 and 3 are the result of the annotation
    GCar car = 2;
    GAirplane airplane = 3;
  }
}
message GListOfVehicle { repeated GVehicle items = 1; }

// Notice that GCar has as its first field
// a message containing the fields of its
// superclass.
// This is why we're starting regular field numbers with 2.
message GCar {
  GFieldsOfVehicle fieldsOfSuperClass = 1;

  int32 number_of_doors = 2;
}

message GListOfCar { repeated GCar items = 1; }

message GAirplane {
  GFieldsOfVehicle fieldsOfSuperClass = 1;

  string registration = 2;
  int32 service_ceiling = 3;
}

message GListOfAirplane { repeated GAirplane items = 1; }
```

## Configuration
If you need to use different configuration settings from the default, you may add a ```build.yaml``` file to the root of your package based on this template:

```yaml
targets:
  $default:
    builders:
      better_proto_generator:protoBuilder:
        options:
          useWellKnownWrappers: false
          useWellKnownDuration: false
          useWellKnownTimestamp: false
          useProtoFieldNamingConventions: true
          packageName: com.mycompany.myproject
          wellKnownDurationType: $Duration
          wellKnownTimestampType: $Timestamp
          defaultIntPrecision: int32
          outProtoPath: proto/model.proto
          decimalEncoding: binary,
          options:
            - go_package = "./stubs"
```

The available options are the following:

| Option                         | Description                                                                                                                     | Default value     |
|--------------------------------|---------------------------------------------------------------------------------------------------------------------------------|-------------------|
| useWellKnownWrappers           | if set to true, will use Google Well Known wrappers instead of using proto optional feature                                     | false             |
| useWellKnownDuration           | if set to true, will use Google Well Known duration to represent durations                                                      | false             |
| useWellKnownTimestamp          | if set to true, will use Google Well Known timestamp to represent date and time                                                 | false             |
| useProtoFieldNamingConventions | Generated proto messages and fields using naming conventions appropriate to Proto3                                              | true              |
| packageName                    | The name of the declared package in the generated proto file                                                                    | [none]            |
| wellKnownDurationType          | Defines an type name to be mapped to Google well known durations                                                                | $Duration         |
| wellKnownTimestampType         | Defines an type name to be mapped to Google well known timestamp                                                                | $Timestamp        |
| defaultIntPrecision            | Proto type to be generated for Dart int fields. May be ```int32``` or ```int64```                                               | int32             |
| decimalEncoding                | Encoding of Decimal fields. May be ```binary``` (better performance) or ```string``` (easier to integrate with other languages) | binary            |
| outProtoPath                   | Path, relative to the lib directory, to which the single .proto file is generated                                               | proto/model.proto |
| options                        | Any option statement you want to add to the proto file.                                                                         | [none]            |

## Well Known Types (optional)

You may, optionally, want to integrate the generated ```model.proto``` file with [Google Well Known Types](https://developers.google.com/protocol-buffers/docs/reference/google.protobuf). To do so, change the ```build.yaml``` file updating either of ```useWellKnownWrappers```, ```useWellKnownDuration``` or ```useWellKnownTimestamp``` settings to true.


Let's assume you set them all to true. After running ```dart run build_runner build```, you will get the following ```model.proto```:

```protobuf
syntax = "proto3";

import "google/protobuf/wrappers.proto";
import "google/protobuf/duration.proto";
import "google/protobuf/timestamp.proto";

message GIngredient {

  string description = 2;
  double quantity = 3;
  google.protobuf.Int32Value batch_size = 4;
  google.protobuf.Duration estimated_preparation_time = 5;
  google.protobuf.Timestamp expiry_date = 6;
}
```

Now, assuming we have well known types installed in ```/usr/include/google/protobuf/```, we need to run the ```protoc``` with a few extra parameters:
```sh
protoc --dart_out=grpc:lib/src/grpc -Ilib/proto -I/usr/include /usr/include/google/protobuf/*.proto  ./lib/proto/model.proto
```

Back to the ```ingredient.dart``` file we need to add some more imports:
```dart
import 'package:better_proto_annotations/better_proto_annotations.dart';
import 'package:proto_mapper_example/src/grpc/model.pb.dart';
import 'package:proto_mapper_example/src/grpc/google/protobuf/wrappers.pb.dart';
import 'package:proto_mapper_example/src/grpc/google/protobuf/duration.pb.dart'
    as $duration;
import 'package:proto_mapper_example/src/grpc/google/protobuf/timestamp.pb.dart'
    as $timestamp;

part 'ingredient.g.dart';

typedef $Duration = $duration.Duration;
typedef $Timestamp = $timestamp.Timestamp;

@proto
class Ingredient {
  const Ingredient({
    required this.description,
    required this.quantity,
    this.batchSize,
    required this.estimatedPreparationTime,
    required this.expiryDate,
  });

  @ProtoField(2)
  final String description;

  @ProtoField(3)
  final double quantity;

  @ProtoField(4)
  final int? batchSize;

  @ProtoField(5)
  final Duration estimatedPreparationTime;

  @ProtoField(6)
  final DateTime expiryDate;
}
```

## Example

Check out the complete example project at https://gitlab.com/dartaculous/dartaculous/-/tree/main/proto_mapper/example.


## Context

This package is part of a set of loosely integrated packages that constitute the [Dartaculous Framework](https://gitlab.com/dartaculous/dartaculous#squarealfa-dart-framework).
