#!/bin/bash

set -e

dart run build_runner build -d

BETTER_PLUGIN_PATH=$HOME/better_protoc_plugin
BETTER_PLUGIN_BIN=$BETTER_PLUGIN_PATH/bin/protoc-gen-dart
PROTO_PATH=$BETTER_PLUGIN_PATH/protos

mkdir -p lib/src/generated/grpc

set -x

protoc \
    --plugin=$BETTER_PLUGIN_BIN \
    --proto_path=$PROTO_PATH \
    --dart_out=better_protos,grpc:lib/src/generated/grpc \
    -Ilib/proto \
    ./lib/proto/* \
    google/protobuf/timestamp.proto \
    google/protobuf/duration.proto


buf format -w
