import 'package:dart_mappable/dart_mappable.dart';
import 'package:streakers_app/models/hooks/nullable_enum_hook.dart';
import 'package:streakers_app/models/pb_user_model_avatar.dart';

part 'pb_user_model.mapper.dart';

@MappableClass()
class PbUserModel with PbUserModelMappable {
  final String id;
  final String? username;
  final String? email;
  final String? name;
  @MappableField(hook: NullableEnumHook())
  final PbUserModelAvatar? avatar;
  final DateTime? created;
  final DateTime? updated;

  PbUserModel({
    required this.id,
    required this.username,
    required this.email,
    required this.name,
    required this.avatar,
    required this.created,
    required this.updated,
  });
}

extension PbUserModelExtension on PbUserModel? {
  bool get hasAvatar => this?.avatar != null;
  bool get hasName => (this?.name ?? '').trim().isNotEmpty;
}
