import 'package:flutter/material.dart';

class TextTitleMedium extends StatelessWidget {
  final String text;
  const TextTitleMedium(this.text, {super.key});

  @override
  Widget build(BuildContext context) {
    return Text(text, style: Theme.of(context).textTheme.titleMedium);
  }
}
