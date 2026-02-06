import 'package:flutter/material.dart';
import 'package:flutter_react_poc/widgets/nested_nav_bar.dart';
import 'package:flutter_react_poc/widgets/text/text_body_large.dart';

import '../../core/constants.dart';
import '../../theme/color_theme.dart';

class ButtonMenu extends StatelessWidget {
  final NestedNavBar widget;
  final NestedNavBarItem item;
  final bool isSelected;
  final IconData icon;

  const ButtonMenu({
    super.key,
    required this.widget,
    required this.item,
    required this.isSelected,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => item.onTap(widget.items.indexOf(item)),
      child: Opacity(
        opacity: isSelected ? 1 : 0.5,
        child: Container(
          decoration: BoxDecoration(
            border: Border(
              left: BorderSide(
                width: 4,
                color:
                    isSelected
                        ? ProjectColorTheme.tertiaryColor
                        : Colors.transparent,
              ),
            ),
          ),
          width: double.infinity,
          height: SIZE * 6,
          padding: EdgeInsets.symmetric(horizontal: SIZE * 2),
          child: Center(
            child: Row(
              spacing: SIZE * 2,
              children: [
                Icon(
                  icon,
                  size: SIZE * 2,
                  color:
                      isSelected
                          ? ProjectColorTheme.tertiaryColor
                          : ProjectColorTheme.textColorLight,
                ),
                TextBodyLarge(
                  item.title,
                  color: ProjectColorTheme.textColorLight,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
