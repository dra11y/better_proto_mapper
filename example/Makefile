
proto: gen protoc

gen: .PHONY
	dart run build_runner build

protoc: gen
	protoc --dart_out=grpc:lib/src/grpc -Ilib/proto -I/usr/include /usr/include/google/protobuf/*.proto  ./lib/proto/model.proto
	clang-format -i lib/proto/model.proto



.PHONY:
