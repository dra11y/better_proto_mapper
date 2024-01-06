import 'package:analyzer/dart/element/element.dart';
import 'package:analyzer/dart/element/type.dart';
import 'package:build/build.dart';
import 'package:better_proto_annotations/config.dart';
import 'package:better_proto_annotations/better_proto_annotations.dart';
import 'package:better_proto_generator/src/common/constant_reader_extension.dart';
import 'package:better_proto_generator/src/proto/proto_reflected.dart';
import 'package:better_proto_generator/src/proto_mapper/interface_element_extension.dart';
import 'package:source_gen/source_gen.dart';
import 'package:squarealfa_generators_common/squarealfa_generators_common.dart';
import 'package:recase/recase.dart';

import 'mapper_field_code_generator.dart';
import 'field_descriptor.dart';

part 'proto_mapper_generator.helpers.dart';

class ProtoMapperGenerator extends GeneratorForAnnotation<Proto> {
  final Config config;

  ProtoMapperGenerator(this.config);

  @override
  String generateForAnnotatedElement(
    Element element,
    ConstantReader annotation,
    BuildStep buildStep,
  ) {
    final protoReflected = annotation.hydrateAnnotation();

    if (element is EnumElement) {
      return renderEnumMapper(element);
    }

    final classElement = element.asClassElement();
    RenderMapperBuffers renderParms =
        _createRenderBuffers(classElement, protoReflected);

    final mapper =
        _renderMapper(classElement, renderParms, protoReflected.proto);
    return mapper;
  }

  RenderMapperBuffers _createRenderBuffers(
    ClassElement classElement,
    ProtoReflected protoReflected,
  ) {
    final proto = protoReflected.proto;
    final fieldDescriptors = classElement
        .getInterfaceFieldDescriptors(
          annotation: protoReflected.proto,
          config: config,
          refName: 'instance',
          protoRefName: 'proto',
        )
        .toList();

    final superFieldDescriptors = <FieldDescriptor>[];
    final superRefs = <String>[];
    _fillSuperFieldDescriptors(classElement, superFieldDescriptors, superRefs);

    final fromFieldDescriptors = [
      ...fieldDescriptors,
      ...superFieldDescriptors
    ];

    final toProtoFieldBuffer = StringBuffer();
    final fromProtoFieldBuffer = StringBuffer();
    final constructorFieldBuffer = StringBuffer();

    // let's get all the constructors which cover all non-nullable final fields
    final constructor = _getConstructor(classElement, fieldDescriptors, proto);

    // generate the mapping for the constructor, consuming all
    // the fields that are set by the constructor
    _buildConstructorBuffer(
        constructor, fromFieldDescriptors, constructorFieldBuffer);

    // assign the remaining from proto field assignments
    // (that where not set by the constructor)
    for (var fieldDescriptor
        in fromFieldDescriptors.where((fd) => !fd.isFinal)) {
      final fieldCodeGenerator = MapperFieldCodeGenerator.fromFieldDescriptor(
        fieldDescriptor: fieldDescriptor,
        config: config,
      );
      var fromProtoMap = fieldCodeGenerator.fromProtoMap;
      fromProtoFieldBuffer
          .writeln('  ..${fieldDescriptor.displayName} = $fromProtoMap');
    }

    // assign the to proto field assignments
    for (var fieldDescriptor in fieldDescriptors) {
      final fieldCodeGenerator = MapperFieldCodeGenerator.fromFieldDescriptor(
        fieldDescriptor: fieldDescriptor,
        config: config,
      );
      toProtoFieldBuffer.writeln(fieldCodeGenerator.toProtoMap);
    }

    final constructorName =
        constructor.name.isNotEmpty ? ".${constructor.name}" : constructor.name;

    final toKnownSubClasses = _generateToKnownSubclassses(protoReflected);
    final fromKnownSubClasses = _generateFromKnownSubclasses(protoReflected);

    final renderParms = RenderMapperBuffers(
      superRefs: superRefs,
      constructorName: constructorName,
      toProtoFieldBuffer: toProtoFieldBuffer.toString(),
      fromProtoFieldBuffer: fromProtoFieldBuffer.toString(),
      constructorFieldBuffer: constructorFieldBuffer.toString(),
      toKnownSubclasses: toKnownSubClasses,
      fromKnownSubclasses: fromKnownSubClasses,
    );
    return renderParms;
  }

  void _fillSuperFieldDescriptors(
    ClassElement classElement,
    List<FieldDescriptor> fieldDescriptors,
    List<String> superRefs,
  ) {
    var superType = classElement.supertype;
    var ref = 'instance.fieldsOfSuperClass';
    var protoRef = 'proto.fieldsOfSuperClass';

    while (superType != null) {
      final ce = superType.element;
      final ceAnnot = _getProtoReflected(ce);
      if (ceAnnot == null) return;
      final fds = ce.getInterfaceFieldDescriptors(
        annotation: ceAnnot.proto,
        config: config,
        refName: ref,
        protoRefName: protoRef,
      );
      fieldDescriptors.addAll(fds);
      ref = '$ref.fieldsOfSuperClass';
      protoRef = '$protoRef.fieldsOfSuperClass';
      superType = ce.supertype;
    }
  }

  ConstructorElement _getConstructor(ClassElement classElement,
      Iterable<FieldDescriptor> fieldDescriptors, Proto mapProto) {
    final missingFields = <String>{};
    final constructors = classElement.getConstructorsMatchingFields(
      fieldDescriptors: fieldDescriptors,
      missingFields: missingFields,
    );
    // let's just pick the first of the valid constructors
    final constructor = constructors.isEmpty
        ? throw InvalidGenerationSourceError(
            'Cannot generate proto mapper for class ${classElement.name} because it is missing a constructor that covers all final properties.\n'
            '\tMissing fields: $missingFields')
        : constructors.first;
    return constructor;
  }

  void _buildConstructorBuffer(
      ConstructorElement constructor,
      List<FieldDescriptor> fromFieldDescriptors,
      StringBuffer constructorFieldBuffer) {
    for (var constructorParameter in constructor.parameters) {
      final fieldDescriptorList = fromFieldDescriptors
          .where((element) => element.name == constructorParameter.name);

      if (fieldDescriptorList.isEmpty) {
        // If not found, there's not much we can do...
        continue;
      }
      final fieldDescriptor = fieldDescriptorList.first;
      fromFieldDescriptors.remove(fieldDescriptor);

      final fieldCodeGenerator = MapperFieldCodeGenerator.fromFieldDescriptor(
        fieldDescriptor: fieldDescriptor,
        config: config,
      );
      // INLINE
      final constructorMap = _getConstructorMap(
        constructorParameter,
        fieldDescriptor,
        fieldCodeGenerator,
      );
      constructorFieldBuffer.writeln(constructorMap);
    }
  }

  String _getConstructorMap(
    ParameterElement constructorParameter,
    FieldDescriptor fieldDescriptor,
    MapperFieldCodeGenerator fieldCodeGenerator,
  ) {
    if (!constructorParameter.isNamed) {
      return '${fieldCodeGenerator.fromProtoMap},';
    }
    return '${fieldDescriptor.displayName}: ${fieldCodeGenerator.fromProtoMap}, ';
  }

  String? _generateToKnownSubclassses(ProtoReflected protoReflected) {
    final kscs = getDirectKnownSubclasses(
        protoReflected.knownSubClasses.keys.toList(), Proto);
    if (kscs.isEmpty) return null;

    final ret = kscs.map((ksc) {
      final className = ksc.getDisplayString(withNullability: false);
      final camelClassName = className.camelCase;
      final expression = '''
      if (instance is $className) {
        proto.$camelClassName = (const \$${className}ProtoMapper()).toProto(instance);
        return proto;
      }
    ''';
      return expression;
    }).join('\n');
    return ret;
  }

  String _renderMapper(
    ClassElement classElement,
    RenderMapperBuffers renderParms,
    Proto proto,
  ) {
    final className = classElement.name;
    final prefix = config.prefix;
    final toSuperFieldsOf = _createSuperFieldsOf(classElement, proto);
    final fromSuperRefs = _createFromSuperRefs(renderParms);
    final toReturn = '''
            ${renderParms.toKnownSubclasses == null ? renderParms.toProtoFieldBuffer : 'proto.${className.camelCase} = _\$${className}ToFieldsOfProto(instance);'}



        return proto;
    ''';

    final lProto = renderParms.constructorFieldBuffer.isEmpty &&
            renderParms.fromProtoFieldBuffer.isEmpty
        ? ''
        : 'final proto = sInstance.${className.camelCase};';
    final fromProto = renderParms.fromKnownSubclasses != null
        ? '''
           $className _\$${className}FromProto($prefix$className sInstance) {
             ${renderParms.fromKnownSubclasses}

          ${classElement.isAbstract ? '''
            throw UnimplementedError();
          ''' : '''

            $lProto
            final ret = $className${renderParms.constructorName}(${renderParms.constructorFieldBuffer})
          ${renderParms.fromProtoFieldBuffer};

            return ret;
          '''}

           }
          '''
        : classElement.isAbstract
            ? '''
          $className _\$${className}FromProto($prefix$className proto) {
            throw UnimplementedError();
          }
          '''
            : '''
          $className _\$${className}FromProto($prefix$className proto) {
            $fromSuperRefs
            return $className${renderParms.constructorName}(${renderParms.constructorFieldBuffer})
              ${renderParms.fromProtoFieldBuffer};
          }
     ''';

    final toFieldsOf = proto.knownSubClassMap.isEmpty
        ? ''
        : '''
        ${prefix}FieldsOf$className _\$${className}ToFieldsOfProto($className instance) {
          final proto = ${prefix}FieldsOf$className();
          $toSuperFieldsOf
          ${renderParms.toProtoFieldBuffer}
          return proto;
        }
    ''';

    final toFieldsOfProto = proto.knownSubClassMap.isEmpty
        ? '$prefix$className toFieldsOfProto($className entity) => _\$${className}ToProto(entity);'
        : '${prefix}FieldsOf$className toFieldsOfProto($className entity) => _\$${className}ToFieldsOfProto(entity);';

    final toEntity =
        config.toEntityMethodName.replaceFirst('{className}', className);

    return '''

      class \$${className}ProtoMapper implements ProtoMapper<$className, $prefix$className> {
        const \$${className}ProtoMapper();

        @override
        $className fromProto($prefix$className proto) => _\$${className}FromProto(proto);

        @override
        $prefix$className toProto($className entity) => _\$${className}ToProto(entity);

        $toFieldsOfProto

        $className fromProto3Json(Object? json,
            {TypeRegistry typeRegistry = const TypeRegistry.empty()}) =>
            ($prefix$className()..mergeFromProto3Json(json, typeRegistry: typeRegistry))
              .$toEntity();
      }

      $toFieldsOf

      $prefix$className _\$${className}ToProto($className instance)
      {
        var proto = $prefix$className();

        ${renderParms.toKnownSubclasses ?? ''}

        ${(renderParms.toKnownSubclasses ?? '').isEmpty ? toSuperFieldsOf : ''}

        $toReturn
      }

      $fromProto

      extension \$${className}Extension on $className {
        $prefix$className toProto() => _\$${className}ToProto(this);
        Object? toProto3Json(
          {TypeRegistry typeRegistry = const TypeRegistry.empty()}) =>
          toProto().toProto3Json(typeRegistry: typeRegistry);
      }

      extension \$$prefix${className}ProtoExtension on $prefix$className {
        $className $toEntity() => _\$${className}FromProto(this);
      }


  ''';
  }

  String renderEnumMapper(Element element) {
    final classElement = element.asInterfaceElement();
    final className = classElement.name;
    final prefix = config.prefix;
    final fieldBuffer = StringBuffer();
    final annotation = _getProtoReflected(classElement)!;
    var fieldDescriptors = classElement.getInterfaceFieldDescriptors(
      annotation: annotation.proto,
      config: config,
      refName: 'instance',
      protoRefName: 'proto',
    );

    for (final fieldDescriptor in fieldDescriptors) {
      fieldBuffer.writeln(
          '  $className.${fieldDescriptor.protoFieldName} => ${fieldDescriptor.protoField.number},');
    }

    return '''
      class \$${className}ProtoMapper implements ProtoMapper<$className, $prefix$className> {
        const \$${className}ProtoMapper();

        @override
        $className fromProto($prefix$className proto) =>
            $className.values.where((v) => v.value == proto.value).firstOrNull ??
            $className.unspecified;

        @override
        $prefix$className toProto($className entity) =>
          $prefix$className.valueOf(entity.value) ?? $prefix$className.unspecified;
      }

      extension \$${className}ValueExtension on $className {
        int get value => switch(this) {
          $fieldBuffer
        };
      }

  ''';
  }

  String _createFromSuperRefs(RenderMapperBuffers renderParms) {
    final buffer = StringBuffer();
    var previous = '';
    for (final superRef in renderParms.superRefs) {
      if (buffer.isEmpty) {
        buffer.writeln('final $superRef = instance.fieldsOfSuperClass;');
      } else {
        buffer.writeln('final $superRef = $previous.fieldsOfSuperClass;');
      }
      previous = superRef;
    }
    return buffer.toString();
  }

  String? _generateFromKnownSubclasses(ProtoReflected protoReflected) {
    final kscs = getDirectKnownSubclasses(
        protoReflected.knownSubClasses.keys.toList(), Proto);
    if (kscs.isEmpty) return null;

    final ret = kscs.map((ksc) {
      final className = ksc.getDisplayString(withNullability: false);
      final camelClassName = className.camelCase;
      final toEntity =
          config.toEntityMethodName.replaceFirst('{className}', className);
      final expression = '''
      if (sInstance.has$className()) {
        return sInstance.$camelClassName!.$toEntity();
      }
      ''';
      return expression;
    }).join('\n');
    return ret;
  }
}

class RenderMapperBuffers {
  final List<String> superRefs;
  final String constructorName;
  final String toProtoFieldBuffer;
  final String fromProtoFieldBuffer;
  final String constructorFieldBuffer;
  final String? toKnownSubclasses;
  final String? fromKnownSubclasses;

  RenderMapperBuffers({
    required this.superRefs,
    required this.constructorName,
    required this.toProtoFieldBuffer,
    required this.fromProtoFieldBuffer,
    required this.constructorFieldBuffer,
    this.toKnownSubclasses,
    this.fromKnownSubclasses,
  });
}

String _createSuperFieldsOf(InterfaceElement classElement, Proto proto) {
  if (classElement is! ClassElement) return '';
  final superType = classElement.supertype;
  if (superType == null) return '';

  final tc = TypeChecker.fromRuntime(Proto);
  final annotation = tc.firstAnnotationOf(superType.element);
  if (annotation == null) return '';

  final superClassElement = superType.element.asClassElement();
  final className = superClassElement.name;

  final superFieldsOf =
      '   proto.fieldsOfSuperClass = const \$${className}ProtoMapper().toFieldsOfProto(instance);\n';
  return superFieldsOf;
}

final _protoTC = TypeChecker.fromRuntime(Proto);

ProtoReflected? _getProtoReflected(InterfaceElement c) {
  final annotation = _protoTC.firstAnnotationOf(c);

  if (annotation == null) {
    return null;
  }
  final protoReflected = ConstantReader(annotation).hydrateAnnotation();
  return protoReflected;
}
