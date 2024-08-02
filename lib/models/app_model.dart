import 'package:dart_mappable/dart_mappable.dart';
import 'package:streakers_app/models/pb_user_model.dart';

part 'app_model.mapper.dart';

@MappableClass()
class AppModel with AppModelMappable {
  final PbUserModel? user;

  AppModel({required this.user});

  AppModel.create() : user = null;
}
