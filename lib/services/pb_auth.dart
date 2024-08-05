part of 'pb_api.dart';

extension _Auth on PbApi {
  Future<PbUserModel?> authRefresh() async {
    try {
      if (_pb.authStore.isValid) {
        final x = await usersCollection.authRefresh().then((x) => x.record);
        if (x == null) return null;
        return PbUserModelMapper.fromMap(x.toJson());
      }
    } catch (e) {
      // fallthrough returns null
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
    final x = await _pb.collection("users").create(body: {
      "username": anonUsername,
      "password": anonPassword,
      "passwordConfirm": anonPassword,
    });
    return PbUserModelMapper.fromMap(x.toJson());
  }

  Future<PbUserModel?> loginAnonymousUser() async {
    try {
      final x = await usersCollection
          .authWithPassword(anonUsername, anonPassword)
          .then((x) => x.record);
      if (x == null) return null;
      return PbUserModelMapper.fromMap(x.toJson());
    } catch (e) {
      return null;
    }
  }
}
