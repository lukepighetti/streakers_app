import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:streakers_app/services/navigation.dart';
import 'package:streakers_app/services/pb_api.dart';
import 'package:streakers_app/services/storage.dart';
import 'package:streakers_app/view_model/app_view_model.dart';

final di = _Dependencies();

class _Dependencies {
  Future<void> initialize() async {
    prefs = await SharedPreferences.getInstance();
    await appViewModel.initialize();
  }

  final navigatorKey = GlobalKey<NavigatorState>();

  late final SharedPreferences prefs;

  late final navigation = NavigationService();

  late final storage = StorageService();

  late final pb = PbApi();

  late final appViewModel = AppViewModel();
}
