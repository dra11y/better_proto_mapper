import 'package:analyzer/dart/element/element.dart';
import 'package:better_proto_annotations/config.dart';
import 'package:better_proto_annotations/better_proto_annotations.dart';
import 'package:better_proto_generator/src/common/proto_common.dart';
import 'package:squarealfa_generators_common/squarealfa_generators_common.dart';

class FieldDescriptor extends FieldDescriptorBase {
  final Config config;
  final Proto proto;
  final ProtoField protoField;
  final String refName;
  final String protoRefName;

  FieldDescriptor({
    required this.proto,
    required this.config,
    required this.protoField,
    required this.refName,
    required this.protoRefName,
    required super.displayName,
    required super.name,
    required super.isFinal,
    required super.isLate,
    required super.hasInitializer,
    required super.fieldElementType,
  });

  FieldDescriptor.fromFieldElement({
    required FieldElement fieldElement,
    required this.proto,
    required this.protoField,
    required this.config,
    required this.refName,
    required this.protoRefName,
  }) : super.fromFieldElement(fieldElement);

  String get prefix => config.prefix;

  @override
  bool get isRepeated => listParameterType != null;
  bool get renderNullable => isNullable && !isRepeated;

  String get protoFieldName => protoField.name ?? displayName;

  bool get typeHasProtoAnnotation => fieldElementType.hasProto;

  @override
  bool get parameterTypeIsEnum =>
      parameterType.element!.kind == ElementKind.ENUM;

  @override
  String toString() => '''FieldDescriptor(
    proto: $proto,
    config: $config,
    protoField: $protoField,
    refName: $refName,
    protoRefName: $protoRefName,
    displayName: ${super.displayName},
    name: ${super.name},
    isFinal: ${super.isFinal},
    isLate: ${super.isLate},
    hasInitializer: ${super.hasInitializer},
    fieldElementType: ${super.fieldElementType},
  )''';
}
