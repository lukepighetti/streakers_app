import 'package:dart_mappable/dart_mappable.dart';
import 'package:streakers_app/models/pb_streak.dart';
import 'package:streakers_app/models/pb_user_model.dart';

part 'app_model.mapper.dart';

@MappableClass()
class AppModel with AppModelMappable {
  final PbUserModel? user;

  final Map<String, PbStreak> streaks;

  AppModel({
    required this.user,
    required this.streaks,
  });

  AppModel.create()
      : user = null,
        streaks = {};
}
