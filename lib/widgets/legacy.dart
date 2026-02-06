import 'dart:ui_web' as ui;
import 'package:web/web.dart' as html;

import 'package:flutter/material.dart';

class LegacyReactPage extends StatelessWidget {
  final String url;

  LegacyReactPage({required this.url, super.key}) {
    ui.platformViewRegistry.registerViewFactory('iframe-react-view', (
      int viewId,
    ) {
      final iframe =
          html.document.createElement('iframe') as html.HTMLIFrameElement;

      iframe.src = url;
      iframe.style.border = 'none';
      iframe.style.width = '100%';
      iframe.style.height = '100%';

      iframe.allowFullscreen = true;

      return iframe;
    });
  }

  @override
  Widget build(BuildContext context) {
    return const HtmlElementView(viewType: 'iframe-react-view');
  }
}
