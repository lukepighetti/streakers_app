import 'package:pocketbase/pocketbase.dart';
import 'package:streakers_app/architecture/log.dart';
import 'package:streakers_app/di.dart';
import 'package:streakers_app/models/pb_user_model.dart';
import 'package:streakers_app/services/gen.dart';

part 'pb_auth.dart';

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

  /// Usually called at startup to ensure we're logged in anonymously with a fresh token
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
