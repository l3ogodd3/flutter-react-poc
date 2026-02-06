import 'package:flutter/material.dart';
import 'package:flutter_react_poc/theme/color_theme.dart';

import '../../core/constants.dart';

class Content extends StatelessWidget {
  final Widget child;

  const Content({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(SIZE * 4),
      color: ProjectColorTheme.backgroundColor,
      child: Container(
        padding: EdgeInsets.all(SIZE * 4),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(SIZE),
          color: Colors.white,
        ),
        child: child,
      ),
    );
  }
}
