import 'package:flutter/material.dart';

class TextBodyMedium extends StatelessWidget {
  final String text;
  const TextBodyMedium(this.text, {super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: Theme.of(context).textTheme.bodyMedium,
    );
  }
}
