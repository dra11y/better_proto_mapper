/// Support for doing something awesome.
///
/// More dartdocs go here.
library proto_generator;

import 'package:better_proto_annotations/config.dart';
import 'package:better_proto_generator/src/proto_builder.dart';
import 'package:better_proto_generator/src/proto_from_cache.dart';
import 'package:build/build.dart';
import 'package:source_gen/source_gen.dart';

import 'src/proto_mapper/proto_mapper_generator.dart';
import 'src/protoc_runner.dart';

export 'src/proto_mapper/proto_mapper_generator.dart';

Builder protoBuilder(BuilderOptions options) => ProtoBuilder(options);

Builder protoMapperBuilder(BuilderOptions options) => SharedPartBuilder(
    [ProtoMapperGenerator(Config.fromJson(options.config))], 'proto_mapper');

Builder protoFromCache(BuilderOptions options) => ProtoFromCache();

Builder protocRunner(BuilderOptions options) =>
    ProtocRunner(Config.fromJson(options.config));
