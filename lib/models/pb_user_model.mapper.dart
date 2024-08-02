// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'pb_user_model.dart';

class PbUserModelMapper extends ClassMapperBase<PbUserModel> {
  PbUserModelMapper._();

  static PbUserModelMapper? _instance;
  static PbUserModelMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = PbUserModelMapper._());
      PbUserModelAvatarMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'PbUserModel';

  static String _$id(PbUserModel v) => v.id;
  static const Field<PbUserModel, String> _f$id = Field('id', _$id);
  static String? _$username(PbUserModel v) => v.username;
  static const Field<PbUserModel, String> _f$username =
      Field('username', _$username);
  static String? _$email(PbUserModel v) => v.email;
  static const Field<PbUserModel, String> _f$email = Field('email', _$email);
  static String? _$name(PbUserModel v) => v.name;
  static const Field<PbUserModel, String> _f$name = Field('name', _$name);
  static PbUserModelAvatar? _$avatar(PbUserModel v) => v.avatar;
  static const Field<PbUserModel, PbUserModelAvatar> _f$avatar =
      Field('avatar', _$avatar, hook: NullableEnumHook());
  static DateTime? _$created(PbUserModel v) => v.created;
  static const Field<PbUserModel, DateTime> _f$created =
      Field('created', _$created);
  static DateTime? _$updated(PbUserModel v) => v.updated;
  static const Field<PbUserModel, DateTime> _f$updated =
      Field('updated', _$updated);

  @override
  final MappableFields<PbUserModel> fields = const {
    #id: _f$id,
    #username: _f$username,
    #email: _f$email,
    #name: _f$name,
    #avatar: _f$avatar,
    #created: _f$created,
    #updated: _f$updated,
  };

  static PbUserModel _instantiate(DecodingData data) {
    return PbUserModel(
        id: data.dec(_f$id),
        username: data.dec(_f$username),
        email: data.dec(_f$email),
        name: data.dec(_f$name),
        avatar: data.dec(_f$avatar),
        created: data.dec(_f$created),
        updated: data.dec(_f$updated));
  }

  @override
  final Function instantiate = _instantiate;

  static PbUserModel fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<PbUserModel>(map);
  }

  static PbUserModel fromJson(String json) {
    return ensureInitialized().decodeJson<PbUserModel>(json);
  }
}

mixin PbUserModelMappable {
  String toJson() {
    return PbUserModelMapper.ensureInitialized()
        .encodeJson<PbUserModel>(this as PbUserModel);
  }

  Map<String, dynamic> toMap() {
    return PbUserModelMapper.ensureInitialized()
        .encodeMap<PbUserModel>(this as PbUserModel);
  }

  PbUserModelCopyWith<PbUserModel, PbUserModel, PbUserModel> get copyWith =>
      _PbUserModelCopyWithImpl(this as PbUserModel, $identity, $identity);
  @override
  String toString() {
    return PbUserModelMapper.ensureInitialized()
        .stringifyValue(this as PbUserModel);
  }

  @override
  bool operator ==(Object other) {
    return PbUserModelMapper.ensureInitialized()
        .equalsValue(this as PbUserModel, other);
  }

  @override
  int get hashCode {
    return PbUserModelMapper.ensureInitialized().hashValue(this as PbUserModel);
  }
}

extension PbUserModelValueCopy<$R, $Out>
    on ObjectCopyWith<$R, PbUserModel, $Out> {
  PbUserModelCopyWith<$R, PbUserModel, $Out> get $asPbUserModel =>
      $base.as((v, t, t2) => _PbUserModelCopyWithImpl(v, t, t2));
}

abstract class PbUserModelCopyWith<$R, $In extends PbUserModel, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call(
      {String? id,
      String? username,
      String? email,
      String? name,
      PbUserModelAvatar? avatar,
      DateTime? created,
      DateTime? updated});
  PbUserModelCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _PbUserModelCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, PbUserModel, $Out>
    implements PbUserModelCopyWith<$R, PbUserModel, $Out> {
  _PbUserModelCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<PbUserModel> $mapper =
      PbUserModelMapper.ensureInitialized();
  @override
  $R call(
          {String? id,
          Object? username = $none,
          Object? email = $none,
          Object? name = $none,
          Object? avatar = $none,
          Object? created = $none,
          Object? updated = $none}) =>
      $apply(FieldCopyWithData({
        if (id != null) #id: id,
        if (username != $none) #username: username,
        if (email != $none) #email: email,
        if (name != $none) #name: name,
        if (avatar != $none) #avatar: avatar,
        if (created != $none) #created: created,
        if (updated != $none) #updated: updated
      }));
  @override
  PbUserModel $make(CopyWithData data) => PbUserModel(
      id: data.get(#id, or: $value.id),
      username: data.get(#username, or: $value.username),
      email: data.get(#email, or: $value.email),
      name: data.get(#name, or: $value.name),
      avatar: data.get(#avatar, or: $value.avatar),
      created: data.get(#created, or: $value.created),
      updated: data.get(#updated, or: $value.updated));

  @override
  PbUserModelCopyWith<$R2, PbUserModel, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _PbUserModelCopyWithImpl($value, $cast, t);
}
