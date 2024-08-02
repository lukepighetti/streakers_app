import 'package:flutter/foundation.dart';
import 'package:streakers_app/architecture/stored_value_notifier.dart';
import 'package:streakers_app/di.dart';
import 'package:streakers_app/models/app_model.dart';
import 'package:streakers_app/models/pb_user_model.dart';

class AppViewModel extends StoredValueNotifier<AppModel> {
  AppViewModel()
      : super(
          AppModel.create(),
          di.storage.appViewModel,
          AppModelMapper.ensureInitialized(),
        );

  final _pb = di.pb;

  @override
  Future<void> initialize() async {
    await super.initialize();
    final x = await _pb.refreshLoginOrCreate();
    value = value.copyWith(user: x);
    if (kDebugMode) debugPrint('$value');
  }

  bool get needsOnboarding => !value.user.hasName || !value.user.hasAvatar;

  Future<void> updateUserProfile(
    PbUserModel Function(PbUserModelCopyWith) fn,
  ) async {
    value = value.copyWith(
      user: await di.pb.updateUser(fn(value.user!.copyWith)),
    );
  }
}
