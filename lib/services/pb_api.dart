import 'package:pocketbase/pocketbase.dart';
import 'package:streakers_app/di.dart';
import 'package:streakers_app/models/pb_user_model.dart';
import 'package:streakers_app/services/gen.dart';

class PbApi {
  final _pb = PocketBase(
    'https://api.streakers.app',
    authStore: AsyncAuthStore(
      initial: di.storage.authKey.initial,
      save: di.storage.authKey.save,
      clear: di.storage.authKey.clear,
    ),
  );

  RecordService get usersCollection => _pb.collection('users');

  Future<PbUserModel> refreshLoginOrCreate() async {
    return await authRefresh() ??
        await loginAnonymousUser() ??
        await createAnonymousUser();
  }

  Future<PbUserModel> updateUser(PbUserModel user) async {
    final x = await usersCollection.update(user.id, body: user.toMap());
    return PbUserModelMapper.fromMap(x.toJson());
  }
}

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
