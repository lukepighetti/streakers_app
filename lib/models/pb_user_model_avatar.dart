import 'package:dart_mappable/dart_mappable.dart';
import 'package:streakers_app/assets.dart';

part 'pb_user_model_avatar.mapper.dart';

@MappableEnum(mode: ValuesMode.indexed)
enum PbUserModelAvatar {
  phoenix(Assets.avatar0),
  astronaut(Assets.avatar1),
  climber(Assets.avatar2),
  star(Assets.avatar3),
  fairy(Assets.avatar4),
  giant(Assets.avatar5),
  ;

  final Assets asset;

  const PbUserModelAvatar(this.asset);
}
