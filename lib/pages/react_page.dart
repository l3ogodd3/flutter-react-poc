import 'package:flutter/material.dart';

import '../widgets/legacy.dart';

class ReactPage extends StatelessWidget {
  const ReactPage({super.key});

  @override
  Widget build(BuildContext context) {
    return LegacyReactPage(url: 'http://homolog.s1nc.com.br');
  }
}
