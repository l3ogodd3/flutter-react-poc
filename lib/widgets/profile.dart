import 'package:flutter/material.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';

import '../core/constants.dart';
import '../theme/color_theme.dart';
import 'text/text_body_large.dart';
import 'text/text_body_small.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: SIZE * 3, horizontal: SIZE * 2),
      child: Row(
        spacing: SIZE * 2,
        children: [
          CircleAvatar(
            radius: SIZE * 3,
            backgroundColor: ProjectColorTheme.secondaryColor,
            child: Icon(
              LucideIcons.user200,
              size: SIZE * 3,
              color: ProjectColorTheme.textColorLight,
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextBodyLarge(
                'João da Silva',
                color: ProjectColorTheme.textColorLight,
              ),
              TextBodySmall(
                'joao@gmail.com',
                color: ProjectColorTheme.textColorLight,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
