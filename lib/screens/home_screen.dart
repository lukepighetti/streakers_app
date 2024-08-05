import 'package:flutter/material.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';
import 'package:streakers_app/di.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            icon: Icon(PhosphorIconsRegular.gear),
            onPressed: () {
              di.navigation.showOnboardingSheet();
            },
          ),
        ],
      ),
      body: Center(
        child: Text("Home"),
      ),
    );
  }
}
