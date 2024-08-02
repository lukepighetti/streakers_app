import 'package:context_watch/context_watch.dart';
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
    return ContextWatch.root(
      child: MaterialApp.router(
        title: 'Streakers',
        theme: appTheme(context),
        routerConfig: di.navigation.router,
      ),
    );
  }
}
