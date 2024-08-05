import 'package:dart_mappable/dart_mappable.dart';

class NullableEnumHook extends MappingHook {
  const NullableEnumHook();

  @override
  dynamic beforeDecode(dynamic value) {
    if (value is String && value.isEmpty) {
      return null;
    }

    if (value is String && int.tryParse(value) != null) {
      return int.tryParse(value);
    }

    return value;
  }
}
