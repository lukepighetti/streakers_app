import 'package:dart_mappable/dart_mappable.dart';

part 'pb_user_model.mapper.dart';

@MappableClass()
class PbUserModel with PbUserModelMappable {
  final String id;
  final String? username;
  final String? email;
  final String? name;
  final String? avatar;
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
