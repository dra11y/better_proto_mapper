## 3.0.1

 - **FIX**: Upgraded max Dart version to <4.0.0.

## 3.0.0

 - Graduate package to a stable release. See pre-releases prior to this version for changelog entries.

## 3.0.0-dev.7

 - **FEAT**: Reintroduced option to encode decimals as strings.

## 3.0.0-dev.6

> Note: This release has breaking changes.

 - **BREAKING** **FIX**: Removed proto_services annotation.

## 3.0.0-dev.5

> Note: This release has breaking changes.

 - **BREAKING** **FIX**: Removed proto_services annotation.

## 3.0.0-dev.4

 - **FEAT**: Added configuration option.

## 3.0.0-dev.3

 - **FIX**: Changed repository URL.

## 3.0.0-dev.2

> Note: This release has breaking changes.

 - **BREAKING** **FEAT**: useWellKnownTypes split into useWellKnownWrappers, useWellKnownDuration and useWellKnownTimestamp.

## 3.0.0-dev.1

 - **FEAT**: removed dependecy from squarealfa_common_types.

## 3.0.0-dev.0

> Note: This release has breaking changes.

 - **BREAKING** **FEAT**: Huge upgrade to proto_generator.

## 2.3.0

 - **FEAT**: Support for BigInt.

## 2.2.0

 - **FEAT**: Added BigIntProtoExtension.

## 2.1.2

 - Update a dependency to the latest release.

## 2.1.1

 - Added "allowMissingFields" property for @MapProto annotation.

## 2.1.0

### Changes
- Moved source code repository from GitHub to GitLab
- Adopted Melos and GitLab as CI solution
- Changed license to MPL

### Rationale for source code hosting change

The change from source code repository is in protest by this project's initial and main author with what he views as [GitHub's extremely week response](https://github.blog/2022-03-02-our-response-to-the-war-in-ukraine/) to the carnage going on in Ukraine by Russia. He would have expected at a minimum for any new business in Russia and Belarus to be suspended, which was incidentally [GitLab's course of action](https://about.gitlab.com/blog/2022/03/11/gitlab-actions-to-date-regarding-russian-invasion-of-ukraine/#suspending-new-business-in-russia-and-belarus).


## 2.0.7

- Support for polymorphism.

Now ```@Proto()``` and ```@MapProto``` have a new property called ```knownSubClasses```. This is a list of types of subclasses of the type to which the annotation
is applied. Each of these subclasses much also have the ```@Proto()``` and/or ```@MapProto()``` annotations respectively.

By identifying the known subclasses, ```toProto()``` and ```fromProto()``` methods become polymorphic.

## 2.0.6

- Updated dependencies

## 2.0.5

- Updated dependencies

## 2.0.4

- Updated dependencies

## 2.0.3

- Added "useProtoFieldNamingConventions" option to @Proto annotation
- Added "dateTimePrecision" option to @MapProto annotation
- Added "durationPrecision" option to @MapProto annotation

## 2.0.2

- Updated dependencies

## 2.0.1

- Fixed broken links to example

## 2.0.0

- Added @ProtoServices and @MapProtoServices

## 1.1.6

- Added reference to integrating framework.

## 1.1.5

- Updated README.md with correct reference to proto_generator package

## 1.1.4

- Removed redundant base classes

## 1.1.3

- Removed deprecated nullableFieldsByDefault property from protoBase annotation

## 1.1.2

- Removed deprecated nullableFieldsByDefault property from protoBase annotation

## 1.1.1

- Updated dependencies

## 1.1.0

- Removed deprecated nullableFieldsByDefault property from annotations

## 1.0.0

- Initial version




