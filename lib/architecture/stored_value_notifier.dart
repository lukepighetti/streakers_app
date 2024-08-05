import 'package:dart_mappable/dart_mappable.dart';
import 'package:flutter/widgets.dart';
import 'package:streakers_app/models/app_model.dart';
import 'package:streakers_app/services/storage.dart';

class StoredValueNotifier<T> extends ValueNotifier<T> {
  StoredValueNotifier(super.value, this.box, this.mapper);

  final StorageBox box;

  final ClassMapperBase<AppModel> mapper;

  /// call this first
  Future<void> initialize() async {
    final json = box.initial;
    try {
      if (json == null) return;
      value = mapper.decodeJson(json);
    } catch (e) {
      debugPrint('issue deserializing $e, failing gracefully');
    }
  }

  @override
  set value(T value) {
    box.save(mapper.encodeJson(value));
    super.value = value;
  }
}
