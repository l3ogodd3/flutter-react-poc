import 'package:flutter/material.dart';

import '../widgets/layout/content.dart';
import '../widgets/text/text_display_large.dart';

class FlutterPage extends StatelessWidget {
  const FlutterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Content(child: TextDisplayLarge('Flutter'));
  }
}
