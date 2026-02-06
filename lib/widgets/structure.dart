import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';
import 'package:flutter_react_poc/widgets/text/text_body_small.dart';

import '../core/constants.dart';
import '../theme/color_theme.dart';
import 'nested_nav_bar.dart';

class Structure extends StatelessWidget {
  final Widget child;

  const Structure({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    final location = GoRouterState.of(context).uri.path;
    final selectedIndex = location == '/react' ? 1 : 0;

    final List<NestedNavBarItem> items = [
      NestedNavBarItem(
        onTap: (index) => context.go('/flutter'),
        title: 'Flutter',
        isSelected: selectedIndex == 0,
        icon: LucideIcons.shell200,
      ),
      NestedNavBarItem(
        onTap: (index) => context.go('/react'),
        title: 'React',
        isSelected: selectedIndex == 1,
        icon: LucideIcons.facebook200,
      ),
    ];

    return Row(
      children: [
        NestedNavBar(items: items),
        Flexible(
          child: Column(
            children: [
              Container(
                height: SIZE * 4,
                width: double.infinity,
                color: ProjectColorTheme.backgroundColorLight,
                child: Row(
                  children: [
                    Gap(SIZE),
                    TextBodySmall(
                      'Flutter React Poc',
                      color: ProjectColorTheme.secondaryColor,
                      fontWeight: FontWeight.w700,
                    ),
                  ],
                ),
              ),
              Container(
                height: SIZE * 8,
                width: double.infinity,
                color: ProjectColorTheme.secondaryColor,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Gap(SIZE * 4),
                    Text(
                      items[selectedIndex].title,
                      style: Theme.of(context).textTheme.titleLarge?.copyWith(
                        color: ProjectColorTheme.textColorLight,
                        fontWeight: FontWeight.w600,
                        fontSize: SIZE * 2,
                      ),
                    ),
                  ],
                ),
              ),
              Flexible(child: child),
            ],
          ),
        ),
      ],
    );
  }
}
