## 4.2.2

 - **FIX**: downgraded analyzer dependency to ^6.0.0.

## 4.2.1

 - **FIX**: upgrade squarealfa_generators_common to non-dev version.

## 4.2.0

 - **FEAT**: upgraded dependencies.

## 4.1.1

 - **FIX**: wrappers with zero value are no longer decoded as null.

## 4.1.0

 - **FEAT**: Bumped protobuffer to 3.0.0.

## 4.0.1

 - **FIX**: Upgraded max Dart version to <4.0.0.

## 4.0.0

 - Graduate package to a stable release. See pre-releases prior to this version for changelog entries.

## 4.0.0-dev.17

  - **FIX**: Not analyzing part of dart files

## 4.0.0-dev.16

 - **FEAT**: Reintroduced option to encode decimals as strings.

## 4.0.0-dev.15

 - Update a dependency to the latest release.

## 4.0.0-dev.14

 - Update a dependency to the latest release.

## 4.0.0-dev.13

 - **FEAT**: Added configuration option.

## 4.0.0-dev.12

 - **FIX**: Changed repository URL.

## 4.0.0-dev.11

 - **FIX**: Fixed Dart analyzer warnings from proto_generator.

## 4.0.0-dev.10

> Note: This release has breaking changes.

 - **BREAKING** **FEAT**: useWellKnownTypes split into useWellKnownWrappers, useWellKnownDuration and useWellKnownTimestamp.

## 4.0.0-dev.9

 - **FIX**: Fixed unconventional name mapping for classes and enums.

## 4.0.0-dev.8

> Note: This release has breaking changes.

 - **FIX**: Proto field reference always camel case.
 - **BREAKING** **FEAT**: Enum nulls no longer represented by _message.

## 4.0.0-dev.7

 - **FIX**: Adding generated code warning to generated model.proto.

## 4.0.0-dev.6

 - **FIX**: Fixed example and README, replacing referencing to wrappers for optional.

## 4.0.0-dev.5

> Note: This release has breaking changes.

 - **BREAKING** **FEAT**: Removed generation of GListOf messages.
 - **BREAKING** **FEAT**: Replaced wrapper messages for proto optional feature.

## 4.0.0-dev.4

 - **FIX**: Fixed default wellKnown types in README.

## 4.0.0-dev.3

 - **FIX**: removed outdated version references in pubspec instructions in README.

## 4.0.0-dev.2

 - **FEAT**: removed dependecy from squarealfa_common_types.

## 4.0.0-dev.1

 - **FIX**: Updated dependencies.

## 4.0.0-dev.0

> Note: This release has breaking changes.

 - **BREAKING** **FEAT**: Huge upgrade to proto_generator.

## 3.8.1

 - **FIX**: BigInt nullable unmarshalling fixed.

## 3.8.0

 - **FEAT**: Support for BigInt.

## 3.7.3

 - **FIX**: Fixed proto generation of multiple classes in shared proto.

## 3.7.2

 - **FIX**: Fixed proto generation of multiple classes in shared proto.

## 3.7.1

 - **FIX**: Not converting DateTime when mapping from proto with well known types.

## 3.7.0

 - **FEAT**: Made useWellKnownTypes option more consistent.

## 3.6.0

 - **FEAT**: Added optional support for usage of Google ProtoBuf Well-Known types.

## 3.5.2

 - Update a dependency to the latest release.

## 3.5.1

 - Update a dependency to the latest release.

## 3.5.0

 - **FEAT**: improved support for late, final, pre-initialized Map, List and Set fields of @MapMapped annotated classes.
 - **FEAT**: added "isLate" and "hasInitializer" to FieldDescriptor.

## 3.4.2

 - Graduate package to a stable release. See pre-releases prior to this version for changelog entries.

## 3.4.2-dev.0

 - **FIX**: Fixed upgrade to Analysis 5.1.0.

## 3.4.1

 - Update a dependency to the latest release.

## 3.4.0

 - **FIX**: Fixed all pending warnings.
 - **FIX**: Avoid `<dynamic>` suffix for types in generated `.proto` file and `ProtoMapper` classes ([#5](https://gitlab.com/ruicraveiro/dart_framework/-/issues/5)).
 - **FIX**: Update analyzer dependency ([#4](https://gitlab.com/ruicraveiro/dart_framework/-/issues/4)).
 - **FIX**: Fixed code generation for abstract classes without implementation of declared interfaces.
 - **FIX**: Solved excessive imports from protos containing messages for abstract classes.
 - **FEAT**: Multi-level hierarchy polymorphism.
 - **FEAT**: Support for gRPC streams.

## 3.3.7

 - Update a dependency to the latest release.

## 3.3.6

 - **FIX**: Fixed all pending warnings.

## 3.3.5

- **CHORE**: Updated dependencies

## 3.3.4

 - **FIX**: Avoid `<dynamic>` suffix for types in generated `.proto` file and `ProtoMapper` classes ([#5](https://gitlab.com/ruicraveiro/dart_framework/-/issues/5)).
 - **FIX**: Update analyzer dependency ([#4](https://gitlab.com/ruicraveiro/dart_framework/-/issues/4)).

## 3.3.3

 - **FIX**: Fixed code generation for abstract classes without implementation of declared interfaces.

## 3.3.2

 - **FIX**: Fixed code generation for abstract classes without implementation of declared interfaces.

## 3.3.1

 - **FIX**: Solved excessive imports from protos containing messages for abstract classes.

## 3.3.0

 - **FEAT**: Multi-level hierarchy polymorphism.

## 3.2.0

 - **FEAT**: Support for gRPC streams.

## 3.1.3
 - Improved constructor support.

## 3.1.2
 - Fixed bug in polymorphic code generation

## 3.1.1
 - @MapProto no longer requires nullable final fields in a constructor.
 - @MapProto allows missing non-nullable final fields if configured as such.
 - In both cases, we can count on the compiler to cover any issues within the constructor.

## 3.1.0

### Changes
- Moved source code repository from GitHub to GitLab
- Adopted Melos and GitLab as CI solution
- Changed license to MPL

### Rationale for source code hosting change

The change from source code repository is in protest by this project's initial and main author with what he views as [GitHub's extremely week response](https://github.blog/2022-03-02-our-response-to-the-war-in-ukraine/) to the carnage going on in Ukraine by Russia. He would have expected at a minimum for any new business in Russia and Belarus to be suspended, which was incidentally [GitLab's course of action](https://about.gitlab.com/blog/2022/03/11/gitlab-actions-to-date-regarding-russian-invasion-of-ukraine/#suspending-new-business-in-russia-and-belarus).

## 3.0.5

- Support for polymorphism.

Now ```@Proto()``` and ```@MapProto``` have a new property called ```knownSubClasses```. This is a list of types of subclasses of the type to which the annotation
is applied. Each of these subclasses much also have the ```@Proto()``` and/or ```@MapProto()``` annotations respectively.

By identifying the known subclasses, ```toProto()``` and ```fromProto()``` methods become polymorphic.

## 3.0.4
- Updated dependencies

## 3.0.3
- Updated dependencies

## 3.0.2
- Use double instead of single quotes for import statements in `.proto`  files

## 3.0.1
- Updated dependencies

## 3.0.0

### New features

- Added "dateTimePrecision" option for increasing from default "milliseconds" to "microseconds" precision for datetimes.
- Added "durationPrecision" option for increasing from default "milliseconds" to "microseconds" precision for durations.


- Added "useProtoFieldNamingConventions" option for adhering to protobuf naming conventions in generated .proto files.

### Breaking changes

- Previously, fields inside protobuf messages were being generated without following the [proper naming conventions](https://developers.google.com/protocol-buffers/docs/style?csw=1). This version changes that, which means that, unless configured otherwise, generated .proto files from this version of the package will have different field names from previously generated .proto files. In order to restore the previous behaviour, set the ```useProtoFieldNamingConventions``` to false either in the global ```build.yaml``` configuration file or as the new property in the ```@Proto()``` annotation. Check out the example [build.yaml](https://gitlab.com/dartaculous/dartaculous/blob/main/proto_mapper/example/build.yaml) file.



## 2.0.4

- Updated depedencies

## 2.0.3

- Updated depedencies

## 2.0.2

- Added support for multiple @proto and @mapProto annotated classes within a single .dart file
- Added support for Map<?, ?>
- Improved support for constructors of mapped PODO's

## 2.0.1

- Fixed broken links to example

## 2.0.0

- Generating services (with breaking changes).

## 1.2.2-dev

- Update dependencies

## 1.2.1

- Added reference to integrating framework.

## 1.2.0

- Removed redundant base classes

## 1.1.3

- Removed deprecated nullableFieldsByDefault property from proto annotation

## 1.1.2

- Removed deprecated nullableFieldsByDefault property from protoBase annotation

## 1.1.1

- Updated dependencies

## 1.1.0

- Removed deprecated nullableFieldsByDefault property from annotations

## 1.0.1

- Removed incorrect header from README

## 1.0.0

- Initial version

