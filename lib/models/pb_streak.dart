import 'package:dart_mappable/dart_mappable.dart';
import 'package:streakers_app/services/gen.dart';

part 'pb_streak.mapper.dart';

@MappableClass()
class PbStreak with PbStreakMappable {
  final String id;
  final String admin; // userId
  final String name;
  final String description;
  final int percent;
  final PbStreakVisibility visibility;
  final DateTime created;
  final DateTime updated;

  PbStreak({
    required this.id,
    required this.admin,
    required this.name,
    required this.description,
    required this.percent,
    required this.visibility,
    required this.created,
    required this.updated,
  });

  PbStreak.create({
    required this.admin,
    required this.name,
    required this.description,
    required this.visibility,
  })  : id = Generate.pbId(),
        percent = 60,
        created = DateTime.now(),
        updated = DateTime.now();
}

@MappableEnum()
enum PbStreakVisibility {
  public,
  private,
  locked,
}
