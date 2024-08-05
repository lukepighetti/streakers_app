import 'package:context_watch/context_watch.dart';
import 'package:flutter/material.dart';
import 'package:streakers_app/di.dart';
import 'package:streakers_app/models/pb_user_model_avatar.dart';
import 'package:streakers_app/theme.dart';
import 'package:streakers_app/widgets/selectable_avatar.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key, this.onSubmit});

  final VoidCallback? onSubmit;

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  late final _nameController = TextEditingController(
    text: di.appViewModel.value.user?.name,
  );

  late final _avatarController = ValueNotifier(
    di.appViewModel.value.user?.avatar,
  );

  bool get canSubmit =>
      _nameController.text.trim().isNotEmpty && _avatarController.value != null;

  void handleSubmit() async {
    await di.appViewModel.updateUserProfile((x) => x(
          avatar: _avatarController.value,
          name: _nameController.text.trim(),
        ));

    widget.onSubmit?.call();
  }

  @override
  Widget build(BuildContext context) {
    _nameController.watch(context);
    _avatarController.watch(context);

    return Scaffold(
      body: SafeArea(
        minimum: EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Spacer(),
            Text(
              "Name",
              style: context.textCaption,
            ),
            SizedBox(height: 8),
            TextField(
              controller: _nameController,
              autofocus: true,
            ),
            SizedBox(height: 24),
            Text(
              "Avatar",
              style: context.textCaption,
            ),
            SizedBox(height: 8),
            Wrap(
              spacing: 8,
              runSpacing: 8,
              children: [
                for (final x in PbUserModelAvatar.values)
                  SelectableAvatar(
                    avatar: x,
                    selected: _avatarController.value == x,
                    onTap: () => _avatarController.value = x,
                  ),
              ],
            ),
            SizedBox(height: 24),
            FilledButton(
              onPressed: canSubmit ? handleSubmit : null,
              child: Text("Continue"),
            ),
          ],
        ),
      ),
    );
  }
}
