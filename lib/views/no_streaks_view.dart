import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:streakers_app/di.dart';

class NoStreaksView extends StatefulWidget {
  const NoStreaksView({super.key});

  @override
  State<NoStreaksView> createState() => _NoStreaksViewState();
}

class _NoStreaksViewState extends State<NoStreaksView> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        FilledButton(
          onPressed: di.navigation.showCreateStreak,
          child: Text("Create streak"),
        ),
        SizedBox(height: 8),
        FilledButton(
          onPressed: () {
            //
          },
          child: Text("Join streak"),
        ),
      ],
    );
  }
}
