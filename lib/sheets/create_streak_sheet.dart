import 'package:context_watch/context_watch.dart';
import 'package:flutter/material.dart';
import 'package:streakers_app/di.dart';
import 'package:streakers_app/models/pb_streak.dart';
import 'package:streakers_app/theme.dart';

class CreateStreakSheet extends StatefulWidget {
  const CreateStreakSheet({super.key});

  @override
  State<CreateStreakSheet> createState() => _CreateStreakSheetState();
}

class _CreateStreakSheetState extends State<CreateStreakSheet> {
  late final _nameController = TextEditingController();
  late final _descriptionController = TextEditingController();
  late final _visibilityController = ValueNotifier(PbStreakVisibility.public);

  bool get canSubmit => _nameController.text.trim().isNotEmpty;

  void handleSubmit() async {
    di.appViewModel.createStreak(
      name: _nameController.text.trim(),
      description: _descriptionController.text.trim(),
      visibility: _visibilityController.value,
    );
  }

  @override
  void dispose() {
    _nameController.dispose();
    _descriptionController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    _nameController.watch(context);
    _descriptionController.watch(context);
    _visibilityController.watch(context);

    return Material(
      child: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            /// Name
            Text(
              "Create streak",
              style: context.textHeadline,
            ),
            SizedBox(height: 24),
            Text(
              "Name",
              style: context.textCaption,
            ),
            SizedBox(height: 4),
            TextField(
              controller: _nameController,
              autofocus: true,
            ),
            SizedBox(height: 16),

            /// Description
            Text(
              "Description (Optional)",
              style: context.textCaption,
            ),
            SizedBox(height: 4),
            TextField(
              controller: _descriptionController,
            ),
            SizedBox(height: 16),

            /// Visibility
            Text(
              "Visibility",
              style: context.textCaption,
            ),
            SizedBox(height: 4),
            DropdownMenu(
              initialSelection: _visibilityController.value,
              onSelected: (x) => _visibilityController.value = x!,
              dropdownMenuEntries: [
                for (final x in PbStreakVisibility.values)
                  if (x != PbStreakVisibility.locked)
                    DropdownMenuEntry(
                      value: x,
                      label: x.name,
                    )
              ],
            ),
            SizedBox(height: 24),

            /// Submit
            FilledButton(
              onPressed: canSubmit ? handleSubmit : null,
              child: Text("Create"),
            ),
          ],
        ),
      ),
    );
  }
}
