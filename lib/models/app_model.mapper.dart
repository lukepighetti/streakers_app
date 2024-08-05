// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'app_model.dart';

class AppModelMapper extends ClassMapperBase<AppModel> {
  AppModelMapper._();

  static AppModelMapper? _instance;
  static AppModelMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = AppModelMapper._());
      PbUserModelMapper.ensureInitialized();
      PbStreakMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'AppModel';

  static PbUserModel? _$user(AppModel v) => v.user;
  static const Field<AppModel, PbUserModel> _f$user = Field('user', _$user);
  static Map<String, PbStreak> _$streaks(AppModel v) => v.streaks;
  static const Field<AppModel, Map<String, PbStreak>> _f$streaks =
      Field('streaks', _$streaks);

  @override
  final MappableFields<AppModel> fields = const {
    #user: _f$user,
    #streaks: _f$streaks,
  };

  static AppModel _instantiate(DecodingData data) {
    return AppModel(user: data.dec(_f$user), streaks: data.dec(_f$streaks));
  }

  @override
  final Function instantiate = _instantiate;

  static AppModel fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<AppModel>(map);
  }

  static AppModel fromJson(String json) {
    return ensureInitialized().decodeJson<AppModel>(json);
  }
}

mixin AppModelMappable {
  String toJson() {
    return AppModelMapper.ensureInitialized()
        .encodeJson<AppModel>(this as AppModel);
  }

  Map<String, dynamic> toMap() {
    return AppModelMapper.ensureInitialized()
        .encodeMap<AppModel>(this as AppModel);
  }

  AppModelCopyWith<AppModel, AppModel, AppModel> get copyWith =>
      _AppModelCopyWithImpl(this as AppModel, $identity, $identity);
  @override
  String toString() {
    return AppModelMapper.ensureInitialized().stringifyValue(this as AppModel);
  }

  @override
  bool operator ==(Object other) {
    return AppModelMapper.ensureInitialized()
        .equalsValue(this as AppModel, other);
  }

  @override
  int get hashCode {
    return AppModelMapper.ensureInitialized().hashValue(this as AppModel);
  }
}

extension AppModelValueCopy<$R, $Out> on ObjectCopyWith<$R, AppModel, $Out> {
  AppModelCopyWith<$R, AppModel, $Out> get $asAppModel =>
      $base.as((v, t, t2) => _AppModelCopyWithImpl(v, t, t2));
}

abstract class AppModelCopyWith<$R, $In extends AppModel, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  PbUserModelCopyWith<$R, PbUserModel, PbUserModel>? get user;
  MapCopyWith<$R, String, PbStreak, PbStreakCopyWith<$R, PbStreak, PbStreak>>
      get streaks;
  $R call({PbUserModel? user, Map<String, PbStreak>? streaks});
  AppModelCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _AppModelCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, AppModel, $Out>
    implements AppModelCopyWith<$R, AppModel, $Out> {
  _AppModelCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<AppModel> $mapper =
      AppModelMapper.ensureInitialized();
  @override
  PbUserModelCopyWith<$R, PbUserModel, PbUserModel>? get user =>
      $value.user?.copyWith.$chain((v) => call(user: v));
  @override
  MapCopyWith<$R, String, PbStreak, PbStreakCopyWith<$R, PbStreak, PbStreak>>
      get streaks => MapCopyWith($value.streaks, (v, t) => v.copyWith.$chain(t),
          (v) => call(streaks: v));
  @override
  $R call({Object? user = $none, Map<String, PbStreak>? streaks}) =>
      $apply(FieldCopyWithData({
        if (user != $none) #user: user,
        if (streaks != null) #streaks: streaks
      }));
  @override
  AppModel $make(CopyWithData data) => AppModel(
      user: data.get(#user, or: $value.user),
      streaks: data.get(#streaks, or: $value.streaks));

  @override
  AppModelCopyWith<$R2, AppModel, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _AppModelCopyWithImpl($value, $cast, t);
}
