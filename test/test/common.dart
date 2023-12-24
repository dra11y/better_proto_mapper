import 'dart:io';

import 'package:yaml/yaml.dart';

bool? _usesWellKnownTypes;

Future<bool> get usesWellKnownTypes async {
  if (_usesWellKnownTypes != null) return _usesWellKnownTypes!;

  final r = _usesWellKnownTypes = await _getFromBuildYaml();
  return r;
}

Future<bool> _getFromBuildYaml() async {
  final buildFile = File('build.yaml');
  final build = await buildFile.readAsString();
  var yml = loadYaml(build);
  final ret = (yml[r'targets']?[r'$default']?['builders']
              ?['better_proto_generator:proto_mapper_generator']?['options']
          ?['useWellKnownTypes'] as bool? ??
      false);
  return ret;
}
