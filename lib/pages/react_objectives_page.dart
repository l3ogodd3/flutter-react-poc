import 'package:flutter/material.dart';

import '../widgets/legacy.dart';

class ReactObjectivesPage extends StatelessWidget {
  const ReactObjectivesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return LegacyReactPage(url: 'https://homolog.s1nc.com.br/objetivos');
  }
}
