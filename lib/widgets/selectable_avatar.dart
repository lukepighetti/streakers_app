import 'package:flutter/material.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';
import 'package:streakers_app/models/pb_user_model_avatar.dart';
import 'package:streakers_app/theme.dart';

class SelectableAvatar extends StatelessWidget {
  const SelectableAvatar({
    super.key,
    required this.avatar,
    required this.selected,
    required this.onTap,
  });

  final PbUserModelAvatar avatar;
  final bool selected;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return SizedBox.square(
      dimension: 96,
      child: Container(
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(
            color: selected ? context.colorPrimary : context.colorForeground,
            width: 2,
          ),
        ),
        child: ClipOval(
          child: Stack(
            fit: StackFit.expand,
            children: [
              Image.asset(
                avatar.asset.path,
                fit: BoxFit.cover,
                filterQuality: FilterQuality.high,
                isAntiAlias: true,
              ),
              Material(
                color: Colors.transparent,
                child: InkWell(
                  onTap: onTap,
                  hoverColor: context.colorPrimary.withOpacity(0.3),
                  child: SizedBox(),
                ),
              ),
              if (selected)
                ColoredBox(
                  color: context.colorScrim,
                  child: Center(
                    child: Icon(
                      PhosphorIconsFill.checkFat,
                      color: context.colorBackground,
                    ),
                  ),
                )
            ],
          ),
        ),
      ),
    );
  }
}
