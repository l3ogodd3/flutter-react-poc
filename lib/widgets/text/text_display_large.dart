import 'package:flutter/material.dart';

class TextDisplayLarge extends StatelessWidget {
  final String text;
  const TextDisplayLarge(this.text, {super.key});

  @override
  Widget build(BuildContext context) {
    return Text(text, style: Theme.of(context).textTheme.displayLarge);
  }
}
