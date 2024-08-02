import 'package:streakers_app/architecture/stored_value_notifier.dart';
import 'package:streakers_app/di.dart';
import 'package:streakers_app/models/app_model.dart';

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
    print(value);
  }

  // Future<void> initialize() async {
  //   final json = di.storage.appViewModel.initial;
  //   try {
  //     if (json == null) return;
  //     value = AppModelMapper.fromJson(json);
  //   } catch (e) {
  //     debugPrint('issue deserializing AppModel, failing gracefully');
  //   }
  // }

  // @override
  // set value(AppModel value) {
  //   di.storage.appViewModel.save(value.toJson());
  //   super.value = value;
  // }
}
