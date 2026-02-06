import 'package:flutter/material.dart';

class TextBodyLarge extends StatelessWidget {
  final String text;
  final Color? color;
  const TextBodyLarge(this.text, {super.key, this.color});

  @override
  Widget build(BuildContext context) {
    return Text(text, style: Theme.of(context).textTheme.bodyLarge?.copyWith(color: color));
  }
}
