import 'package:flutter/material.dart';
import 'package:flutter_react_poc/theme/theme.dart';
import 'package:go_router/go_router.dart';

import 'pages/react_extract_page.dart';
import 'pages/react_objectives_page.dart';
import 'widgets/structure.dart';
import 'pages/flutter_page.dart';
import 'pages/react_page.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    final router = GoRouter(
      initialLocation: '/flutter',
      routes: [
        ShellRoute(
          builder: (context, state, child) {
            return Structure(child: child);
          },
          routes: [
            GoRoute(
              path: '/flutter',
              pageBuilder:
                  (context, state) =>
                      NoTransitionPage(child: const FlutterPage()),
            ),
            GoRoute(
              path: '/react',
              pageBuilder:
                  (context, state) =>
                      NoTransitionPage(child: const ReactPage()),
            ),
            GoRoute(
              path: '/react-objectives',
              pageBuilder:
                  (context, state) =>
                      NoTransitionPage(child: const ReactObjectivesPage()),
            ),
            GoRoute(
              path: '/react-extract',
              pageBuilder:
                  (context, state) =>
                      NoTransitionPage(child: const ReactExtractPage()),
            ),
          ],
        ),
      ],
    );

    return MaterialApp.router(
      theme: ThemeManager.lightTheme,
      routerConfig: router,
    );
  }
}
