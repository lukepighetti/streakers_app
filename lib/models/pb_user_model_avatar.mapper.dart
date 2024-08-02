// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'pb_user_model_avatar.dart';

class PbUserModelAvatarMapper extends EnumMapper<PbUserModelAvatar> {
  PbUserModelAvatarMapper._();

  static PbUserModelAvatarMapper? _instance;
  static PbUserModelAvatarMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = PbUserModelAvatarMapper._());
    }
    return _instance!;
  }

  static PbUserModelAvatar fromValue(dynamic value) {
    ensureInitialized();
    return MapperContainer.globals.fromValue(value);
  }

  @override
  PbUserModelAvatar decode(dynamic value) {
    switch (value) {
      case 0:
        return PbUserModelAvatar.phoenix;
      case 1:
        return PbUserModelAvatar.astronaut;
      case 2:
        return PbUserModelAvatar.climber;
      case 3:
        return PbUserModelAvatar.star;
      case 4:
        return PbUserModelAvatar.fairy;
      case 5:
        return PbUserModelAvatar.giant;
      default:
        throw MapperException.unknownEnumValue(value);
    }
  }

  @override
  dynamic encode(PbUserModelAvatar self) {
    switch (self) {
      case PbUserModelAvatar.phoenix:
        return 0;
      case PbUserModelAvatar.astronaut:
        return 1;
      case PbUserModelAvatar.climber:
        return 2;
      case PbUserModelAvatar.star:
        return 3;
      case PbUserModelAvatar.fairy:
        return 4;
      case PbUserModelAvatar.giant:
        return 5;
    }
  }
}

extension PbUserModelAvatarMapperExtension on PbUserModelAvatar {
  dynamic toValue() {
    PbUserModelAvatarMapper.ensureInitialized();
    return MapperContainer.globals.toValue<PbUserModelAvatar>(this);
  }
}
