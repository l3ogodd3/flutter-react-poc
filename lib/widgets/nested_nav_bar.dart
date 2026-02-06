import 'package:flutter/material.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';

import '../core/constants.dart';
import '../theme/color_theme.dart';
import 'buttons/button_menu.dart';
import 'profile.dart';

class NestedNavBarItem {
  final Function(int index) onTap;
  final String title;
  final bool isSelected;
  final IconData icon;

  const NestedNavBarItem({
    required this.onTap,
    required this.title,
    this.isSelected = false,
    required this.icon,
  });
}

class NestedNavBar extends StatefulWidget {
  final List<NestedNavBarItem> items;
  const NestedNavBar({super.key, required this.items});

  @override
  State<NestedNavBar> createState() => _NestedNavBarState();
}

class _NestedNavBarState extends State<NestedNavBar> {
  bool isOpen = true;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: GestureDetector(
        onTap: () => setState(() => isOpen = !isOpen),
        child: AnimatedContainer(
          curve: Curves.easeInOut,
          duration: const Duration(milliseconds: 200),
          width: isOpen ? NESTED_BAR : NESTED_BAR_CLOSED,
          color: ProjectColorTheme.primaryColor,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              GestureDetector(
                onTap: () => setState(() => isOpen = !isOpen),
                child: Padding(
                  padding: EdgeInsets.only(top: SIZE * 2, right: SIZE * 2),
                  child: Icon(
                    LucideIcons.alignRight200,
                    color: ProjectColorTheme.textColorLight,
                  ),
                ),
              ),
              Profile(),
              Column(
                spacing: SIZE * 2,
                children: [
                  ...widget.items.map(
                    (item) => ButtonMenu(
                      widget: widget,
                      item: item,
                      isSelected: item.isSelected,
                      icon: item.icon,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
