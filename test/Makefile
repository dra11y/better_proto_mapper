build: .PHONY
	dart run build_runner build --verbose  --delete-conflicting-outputs
	protoc --dart_out=grpc:lib/grpc/ ./lib/proto/*.proto -Ilib/proto -I/usr/include /usr/include/google/protobuf/*.proto

test: test_standalone test_wellknown test_string_decimal


test_standalone: .PHONY
	cp build_settings/build_settings.standalone.yaml build.yaml
	echo "" > lib/gtypes.dart
	rm -f test/encoding_test.dart

	dart run build_runner build --verbose  --delete-conflicting-outputs
	# used by CI still doesn't have the latest version of protoc
	protoc --dart_out=grpc:lib/grpc/ --experimental_allow_proto3_optional ./lib/proto/model.proto -Ilib/proto -I/usr/include /usr/include/google/protobuf/*.proto
	dart test -r expanded

test_wellknown: .PHONY
	cp build_settings/build_settings.wellknown.yaml build.yaml
	cp build_settings/gtypes.dart lib/gtypes.dart
	cp build_settings/encoding_test.dart.txt test/encoding_test.dart

	dart run build_runner build --verbose  --delete-conflicting-outputs
	protoc --dart_out=grpc:lib/grpc/ --experimental_allow_proto3_optional ./lib/proto/model.proto -Ilib/proto -I/usr/include /usr/include/google/protobuf/*.proto
	dart test -r expanded

test_string_decimal: .PHONY
	cp build_settings/build_settings.string_decimal.yaml build.yaml
	echo "" > lib/gtypes.dart
	rm -f test/encoding_test.dart

	dart run build_runner build --verbose  --delete-conflicting-outputs
	# used by CI still doesn't have the latest version of protoc
	protoc --dart_out=grpc:lib/grpc/ --experimental_allow_proto3_optional ./lib/proto/model.proto -Ilib/proto -I/usr/include /usr/include/google/protobuf/*.proto
	dart test -r expanded


fmt:
	dart format --fix lib/grpc/

clean: .PHONY
	rm -rf .dart_tool

debug: .PHONY
	dart --observe --pause-isolates-on-start .dart_tool/build/entrypoint/build.dart build

.PHONY:
