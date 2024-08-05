import 'package:dart_mappable/dart_mappable.dart';
import 'package:flutter/foundation.dart';

class LoggingHook extends MappingHook {
  const LoggingHook();

  @override
  Object? beforeDecode(Object? value) {
    if (kDebugMode) debugPrint('[beforeDecode]: ${value.runtimeType}: $value');
    return super.beforeDecode(value);
  }

  @override
  Object? afterDecode(Object? value) {
    if (kDebugMode) debugPrint('[afterDecode]: ${value.runtimeType}: $value');
    return super.afterDecode(value);
  }

  @override
  Object? beforeEncode(Object? value) {
    if (kDebugMode) debugPrint('[beforeEncode]: ${value.runtimeType}: $value');
    return super.beforeEncode(value);
  }

  @override
  Object? afterEncode(Object? value) {
    if (kDebugMode) debugPrint('[afterEncode]: ${value.runtimeType}: $value');
    return super.afterEncode(value);
  }
}
