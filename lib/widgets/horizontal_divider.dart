import 'package:flutter/material.dart';

import '../core/constants.dart';
import '../theme/color_theme.dart';

class HorizontalDivider extends StatelessWidget {
  const HorizontalDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: SIZE * 2),
      height: 1,
      width: double.infinity,
      color: ProjectColorTheme.primaryColor.withValues(alpha: 0.1),
    );
  }
}
