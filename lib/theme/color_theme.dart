import 'package:flutter/material.dart';

class ProjectColorTheme {
  static const Color textColor = Color.fromARGB(255, 52, 52, 52);
  static const Color textColorLight = Color.fromARGB(255, 255, 255, 255);
  static const Color primaryColor = Color(0xFF191d3e);
  static const Color secondaryColor = Color(0xFF086efd);
  static const Color tertiaryColor = Color(0xFF01e69d);

  static const Color backgroundColorLight = Color(0xFFFFFFFF);
  static Color backgroundColor = primaryColor.withValues(alpha: 0.1);

  static const Color outlined = Color.fromARGB(255, 170, 170, 170);

  static Color neutral = primaryColor.withValues(alpha: 0.1);

  static const Color error = Color(0xFFD32F2F);
  static const Color success = Color(0xFF01e69d);
  static const Color alert = Color(0xFFF59E0B);

  static const Color completed = Color(0xFF086efd);
  static const Color canceled = Color(0xFFD32F2F);
  static const Color inProgress = Color(0xFF01e69d);
  static const Color negotiation = Color(0xFFF59E0B);
}
