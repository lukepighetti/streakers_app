// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'pb_streak.dart';

class PbStreakVisibilityMapper extends EnumMapper<PbStreakVisibility> {
  PbStreakVisibilityMapper._();

  static PbStreakVisibilityMapper? _instance;
  static PbStreakVisibilityMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = PbStreakVisibilityMapper._());
    }
    return _instance!;
  }

  static PbStreakVisibility fromValue(dynamic value) {
    ensureInitialized();
    return MapperContainer.globals.fromValue(value);
  }

  @override
  PbStreakVisibility decode(dynamic value) {
    switch (value) {
      case 'public':
        return PbStreakVisibility.public;
      case 'private':
        return PbStreakVisibility.private;
      case 'locked':
        return PbStreakVisibility.locked;
      default:
        throw MapperException.unknownEnumValue(value);
    }
  }

  @override
  dynamic encode(PbStreakVisibility self) {
    switch (self) {
      case PbStreakVisibility.public:
        return 'public';
      case PbStreakVisibility.private:
        return 'private';
      case PbStreakVisibility.locked:
        return 'locked';
    }
  }
}

extension PbStreakVisibilityMapperExtension on PbStreakVisibility {
  String toValue() {
    PbStreakVisibilityMapper.ensureInitialized();
    return MapperContainer.globals.toValue<PbStreakVisibility>(this) as String;
  }
}

class PbStreakMapper extends ClassMapperBase<PbStreak> {
  PbStreakMapper._();

  static PbStreakMapper? _instance;
  static PbStreakMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = PbStreakMapper._());
      PbStreakVisibilityMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'PbStreak';

  static String _$id(PbStreak v) => v.id;
  static const Field<PbStreak, String> _f$id = Field('id', _$id);
  static String _$admin(PbStreak v) => v.admin;
  static const Field<PbStreak, String> _f$admin = Field('admin', _$admin);
  static String _$name(PbStreak v) => v.name;
  static const Field<PbStreak, String> _f$name = Field('name', _$name);
  static String _$description(PbStreak v) => v.description;
  static const Field<PbStreak, String> _f$description =
      Field('description', _$description);
  static int _$percent(PbStreak v) => v.percent;
  static const Field<PbStreak, int> _f$percent = Field('percent', _$percent);
  static PbStreakVisibility _$visibility(PbStreak v) => v.visibility;
  static const Field<PbStreak, PbStreakVisibility> _f$visibility =
      Field('visibility', _$visibility);
  static DateTime _$created(PbStreak v) => v.created;
  static const Field<PbStreak, DateTime> _f$created =
      Field('created', _$created);
  static DateTime _$updated(PbStreak v) => v.updated;
  static const Field<PbStreak, DateTime> _f$updated =
      Field('updated', _$updated);

  @override
  final MappableFields<PbStreak> fields = const {
    #id: _f$id,
    #admin: _f$admin,
    #name: _f$name,
    #description: _f$description,
    #percent: _f$percent,
    #visibility: _f$visibility,
    #created: _f$created,
    #updated: _f$updated,
  };

  static PbStreak _instantiate(DecodingData data) {
    return PbStreak(
        id: data.dec(_f$id),
        admin: data.dec(_f$admin),
        name: data.dec(_f$name),
        description: data.dec(_f$description),
        percent: data.dec(_f$percent),
        visibility: data.dec(_f$visibility),
        created: data.dec(_f$created),
        updated: data.dec(_f$updated));
  }

  @override
  final Function instantiate = _instantiate;

  static PbStreak fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<PbStreak>(map);
  }

  static PbStreak fromJson(String json) {
    return ensureInitialized().decodeJson<PbStreak>(json);
  }
}

mixin PbStreakMappable {
  String toJson() {
    return PbStreakMapper.ensureInitialized()
        .encodeJson<PbStreak>(this as PbStreak);
  }

  Map<String, dynamic> toMap() {
    return PbStreakMapper.ensureInitialized()
        .encodeMap<PbStreak>(this as PbStreak);
  }

  PbStreakCopyWith<PbStreak, PbStreak, PbStreak> get copyWith =>
      _PbStreakCopyWithImpl(this as PbStreak, $identity, $identity);
  @override
  String toString() {
    return PbStreakMapper.ensureInitialized().stringifyValue(this as PbStreak);
  }

  @override
  bool operator ==(Object other) {
    return PbStreakMapper.ensureInitialized()
        .equalsValue(this as PbStreak, other);
  }

  @override
  int get hashCode {
    return PbStreakMapper.ensureInitialized().hashValue(this as PbStreak);
  }
}

extension PbStreakValueCopy<$R, $Out> on ObjectCopyWith<$R, PbStreak, $Out> {
  PbStreakCopyWith<$R, PbStreak, $Out> get $asPbStreak =>
      $base.as((v, t, t2) => _PbStreakCopyWithImpl(v, t, t2));
}

abstract class PbStreakCopyWith<$R, $In extends PbStreak, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call(
      {String? id,
      String? admin,
      String? name,
      String? description,
      int? percent,
      PbStreakVisibility? visibility,
      DateTime? created,
      DateTime? updated});
  PbStreakCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _PbStreakCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, PbStreak, $Out>
    implements PbStreakCopyWith<$R, PbStreak, $Out> {
  _PbStreakCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<PbStreak> $mapper =
      PbStreakMapper.ensureInitialized();
  @override
  $R call(
          {String? id,
          String? admin,
          String? name,
          String? description,
          int? percent,
          PbStreakVisibility? visibility,
          DateTime? created,
          DateTime? updated}) =>
      $apply(FieldCopyWithData({
        if (id != null) #id: id,
        if (admin != null) #admin: admin,
        if (name != null) #name: name,
        if (description != null) #description: description,
        if (percent != null) #percent: percent,
        if (visibility != null) #visibility: visibility,
        if (created != null) #created: created,
        if (updated != null) #updated: updated
      }));
  @override
  PbStreak $make(CopyWithData data) => PbStreak(
      id: data.get(#id, or: $value.id),
      admin: data.get(#admin, or: $value.admin),
      name: data.get(#name, or: $value.name),
      description: data.get(#description, or: $value.description),
      percent: data.get(#percent, or: $value.percent),
      visibility: data.get(#visibility, or: $value.visibility),
      created: data.get(#created, or: $value.created),
      updated: data.get(#updated, or: $value.updated));

  @override
  PbStreakCopyWith<$R2, PbStreak, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _PbStreakCopyWithImpl($value, $cast, t);
}
