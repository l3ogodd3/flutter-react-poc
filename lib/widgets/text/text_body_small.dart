import 'package:flutter/material.dart';

class TextBodySmall extends StatelessWidget {
  final String text;
  final Color? color;
  final FontWeight? fontWeight;
  const TextBodySmall(this.text, {super.key, this.color, this.fontWeight});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: Theme.of(
        context,
      ).textTheme.bodyMedium?.copyWith(color: color, fontWeight: fontWeight),
    );
  }
}
