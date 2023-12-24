import 'package:better_proto_annotations/config.dart';

import '../field_code_generator.dart';

class DecimalFieldCodeGenerator extends CompositeFieldCodeGenerator {
  DecimalFieldCodeGenerator(
    super.fieldDescriptor, {
    required this.config,
  });

  final Config config;

  @override
  String get fieldType => _getFieldType();

  String _getFieldType() {
    switch (config.decimalEncoding) {
      case DecimalEncoding.binary:
        return 'bytes';
      case DecimalEncoding.string:
        return 'string';
      default:
        throw UnimplementedError();
    }
  }
}
