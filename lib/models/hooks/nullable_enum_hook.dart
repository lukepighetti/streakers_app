import 'package:dart_mappable/dart_mappable.dart';

class NullableEnumHook extends MappingHook {
  const NullableEnumHook();
  @override
  dynamic beforeDecode(dynamic value) {
    /// empty strings are `null`
    if (value is String && value.isEmpty) return null;

    /// convert `String` integers into type `int`
    if (int.tryParse(value) != null) return int.tryParse(value);

    return value;
  }
}
