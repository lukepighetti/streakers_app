part of 'pb_api.dart';

extension _Auth on PbApi {
  Future<PbUserModel?> authRefresh() async {
    try {
      if (_pb.authStore.isValid) {
        final rec = await usersCollection.authRefresh().then((x) => x.record);
        final x = PbUserModelMapper.fromMap(rec!.toJson());
        log('[authRefresh]: success');

        return x;
      }
    } catch (e) {
      // fallthrough returns null
      log('[authRefresh]: $e');
    }

    return null;
  }
}

extension _AnonymousAuth on PbApi {
  String get anonUsername =>
      di.storage.anonUsername.saveIfNull(Generate.anonUsername());

  String get anonPassword =>
      di.storage.anonPassword.saveIfNull(Generate.anonPassword());

  Future<PbUserModel> createAnonymousUser() async {
    await di.storage.anonUsername.clear();
    await di.storage.anonPassword.clear();
    final rec = await _pb.collection("users").create(body: {
      "username": anonUsername,
      "password": anonPassword,
      "passwordConfirm": anonPassword,
    });
    final x1 = PbUserModelMapper.fromMap(rec.toJson());
    log('[createAnonymousUser] success');
    final x2 = await loginAnonymousUser();
    assert(x2 != null, "login should always succeed after creating an account");
    return x2 ?? x1; // x1 should never be hit
  }

  Future<PbUserModel?> loginAnonymousUser() async {
    try {
      final rec = await usersCollection
          .authWithPassword(anonUsername, anonPassword)
          .then((x) => x.record);
      final x = PbUserModelMapper.fromMap(rec!.toJson());
      log('[loginAnonymousUser] success');
      return x;
    } catch (e) {
      // fallthrough returns null
      log('[loginAnonymousUser]: $e');
    }

    return null;
  }
}
