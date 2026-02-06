import 'package:flutter/material.dart';

class TextTitleSmall extends StatelessWidget {
  final String text;
  const TextTitleSmall(this.text, {super.key});

  @override
  Widget build(BuildContext context) {
    return Text(text, style: Theme.of(context).textTheme.titleSmall);
  }
}
