import 'package:analyzer/dart/element/type.dart';
import 'package:decimal/decimal.dart';
import 'package:better_proto_annotations/config.dart';
import 'package:better_proto_annotations/better_proto_annotations.dart';
import 'package:better_proto_generator/src/proto/field_descriptor.dart'
    as protofield;
import 'package:better_proto_generator/src/proto_mapper/field_descriptor.dart'
    as mapperfield;
import 'package:source_gen/source_gen.dart';

import '../proto/field_code_generator.dart';
import '../proto/field_code_generators/imports.dart';

String createFieldDeclarations({
  required Iterable<protofield.FieldDescriptor> fieldDescriptors,
  required Set<String> imports,
  required Config config,
}) {
  final fieldBuffer = StringBuffer();

  for (final fieldDescriptor in fieldDescriptors) {
    final fieldCodeGenerator = FieldCodeGenerator.fromFieldDescriptor(
      fieldDescriptor,
      config: config,
    );

    final renderField = fieldCodeGenerator.render();
    fieldBuffer.writeln(renderField);

    if (fieldCodeGenerator is Imports) {
      final fieldExternalProtoNames = (fieldCodeGenerator as Imports).imports;
      mergeProtoNames(fieldExternalProtoNames, imports);
    }
  }

  return fieldBuffer.toString();
}

void mergeProtoNames(
  Iterable<String> fieldExternalProtoNames,
  Set<String> imports,
) {
  for (String externalProtoName in fieldExternalProtoNames) {
    imports.add(externalProtoName);
  }
}

extension ProtoDartTypeExtension on DartType {
  bool get hasProto {
    if (element == null) return false;
    final ret =
        TypeChecker.fromRuntime(Proto).firstAnnotationOf(element!) != null;
    return ret;
  }

  String get packageName {
    final el = element;
    if (el == null) return '';
    var annotation = TypeChecker.fromRuntime(Proto).firstAnnotationOf(el);

    var packageName =
        annotation?.getField('packageName')?.toStringValue() ?? '';
    return packageName;
  }
}

String collectionProtoToValue(
  mapperfield.FieldDescriptor fieldDescriptor,
  DartType parameterType,
  String parameterName, {
  required Config config,
}) {
  final fieldTypeName = parameterType.getDisplayString(withNullability: false);
  if (fieldTypeName == (Decimal).toString()) {
    return '\$DecimalProtoExtension.${decimalFromMethodName(config)}($parameterName)';
  }
  if (fieldTypeName == (BigInt).toString()) {
    return '\$BigIntProtoExtension.\$fromProtoBytes($parameterName)';
  }
  if (fieldTypeName == (DateTime).toString()) {
    if (config.useWellKnownTimestamp) {
      return '''$parameterName.toDateTime()''';
    }
    return 'DateTime.fromMicrosecondsSinceEpoch($parameterName.toInt())';
  }
  if (fieldTypeName == (Duration).toString()) {
    if (config.useWellKnownDuration) {
      return '''Duration(
      seconds: $parameterName.seconds.toInt(),
      microseconds: ($parameterName.nanos ~/ 1000).toInt())''';
    }
    return 'Duration(microseconds: $parameterName.toInt())';
  }
  return ''' const \$${fieldTypeName}ProtoMapper().fromProto($parameterName)''';
}

String collectionValueToProto(
  mapperfield.FieldDescriptor fieldDescriptor,
  DartType parameterType,
  String parameterName, {
  required Config config,
}) {
  final fieldTypeName = parameterType.getDisplayString(withNullability: false);
  if (fieldTypeName == (Decimal).toString()) {
    return '$parameterName.${decimalToMethodName(config)}()';
  }
  if (fieldTypeName == (BigInt).toString()) {
    return '$parameterName.\$toProtoBytes()';
  }
  if (fieldTypeName == (DateTime).toString()) {
    if (config.useWellKnownTimestamp) {
      return '''${config.wellKnownTimestampType}.fromDateTime($parameterName)''';
    }
    return 'Int64($parameterName.microsecondsSinceEpoch)';
  }
  if (fieldTypeName == (Duration).toString()) {
    if (config.useWellKnownDuration) {
      return '''${config.wellKnownDurationType}()
        .. seconds = Int64($parameterName.inSeconds)
        .. nanos = ($parameterName.inMicroseconds - $parameterName.inSeconds * 1000000) * 1000''';
    }
    return 'Int64($parameterName.inMicroseconds)';
  }
  return ''' const \$${fieldTypeName}ProtoMapper().toProto($parameterName)''';
}

String decimalToMethodName(Config config) {
  switch (config.decimalEncoding) {
    case DecimalEncoding.binary:
      return r'$toProtoBytes';
    case DecimalEncoding.string:
      return r'$toProtoString';
    default:
      throw UnimplementedError();
  }
}

String decimalFromMethodName(Config config) {
  switch (config.decimalEncoding) {
    case DecimalEncoding.binary:
      return r'$fromProtoBytes';
    case DecimalEncoding.string:
      return r'$fromProtoString';
    default:
      throw UnimplementedError();
  }
}
