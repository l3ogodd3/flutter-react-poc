import 'package:flutter/material.dart';

import '../widgets/layout/content.dart';
import '../widgets/text/text_display_large.dart';

class TeamPage extends StatelessWidget {
  const TeamPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Content(child: Center(child: TextDisplayLarge('Equipes')));
  }
}
