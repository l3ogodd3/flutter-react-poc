import 'package:flutter/material.dart';

import '../widgets/legacy.dart';

class ReactExtractPage extends StatelessWidget {
  const ReactExtractPage({super.key});

  @override
  Widget build(BuildContext context) {
    return LegacyReactPage(url: 'https://homolog.s1nc.com.br/painel/extrato');
  }
}
