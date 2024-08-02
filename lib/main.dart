import 'package:flutter/material.dart';
import 'package:streakers_app/di.dart';
import 'package:streakers_app/theme.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await di.initialize();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Streakers',
      theme: appTheme(),
      routerConfig: di.navigation.router,
    );
  }
}
