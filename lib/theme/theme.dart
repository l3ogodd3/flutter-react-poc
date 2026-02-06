import 'package:flutter/material.dart';
import 'package:flutter_react_poc/theme/color_theme.dart';
import 'package:flutter_react_poc/theme/font_theme.dart';

import '../core/constants.dart';

class ThemeManager {
  static final ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    textTheme: typograph(),
    colorScheme: ColorScheme.fromSeed(
      seedColor: ProjectColorTheme.primaryColor,
    ),
    inputDecorationTheme: InputDecorationTheme(
      labelStyle: typograph().bodyLarge?.copyWith(
        color: ProjectColorTheme.textColor,
      ),
      border: OutlineInputBorder(
        borderSide: BorderSide(width: 1, color: ProjectColorTheme.outlined),
        borderRadius: BorderRadius.circular(SIZE),
      ),
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(width: 1, color: ProjectColorTheme.outlined),
        borderRadius: BorderRadius.circular(SIZE),
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(width: 1, color: ProjectColorTheme.outlined),
        borderRadius: BorderRadius.circular(SIZE),
      ),
    ),
  );
}
