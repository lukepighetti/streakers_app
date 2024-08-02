import 'dart:async';

import 'package:streakers_app/di.dart';

class StorageService {
  late final authKey = StorageBox('auth-key');
  late final anonUsername = StorageBox('auth-anon-username');
  late final anonPassword = StorageBox('auth-anon-password');
  late final appViewModel = StorageBox('app-view-model');
}

class StorageBox {
  StorageBox(this.key);

  final String key;

  late final _prefs = di.prefs;

  String? get initial => _prefs.getString(key);
  Future<void> save(String x) => _prefs.setString(key, x);
  Future<void> clear() => _prefs.remove(key);
  bool exists() => _prefs.getString(key) != null;
  String saveIfNull(String x) {
    if (exists()) {
      return initial!;
    } else {
      unawaited(save(x));
      return x;
    }
  }
}
