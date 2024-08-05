import 'package:context_watch/context_watch.dart';
import 'package:flutter/material.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';
import 'package:streakers_app/di.dart';
import 'package:streakers_app/views/no_streaks_view.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final vm = di.appViewModel..watch(context);

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
      body: vm.value.streaks.isEmpty
          ? Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: EdgeInsets.all(24),
                child: NoStreaksView(),
              ),
            )
          : Center(
              child: Text("${vm.value.streaks.length} streaks to view"),
            ),
    );
  }
}
