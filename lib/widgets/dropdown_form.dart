import 'package:flutter/material.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';

import '../core/constants.dart';
import '../core/enums.dart';
import '../theme/color_theme.dart';

class DropdownForm<T extends DropdownEnum> extends StatefulWidget {
  final T? selectedValue;
  final Function(T?) onChanged;
  final List<T> values;

  const DropdownForm({
    super.key,
    required this.selectedValue,
    required this.onChanged,
    required this.values,
  });

  @override
  State<DropdownForm<T>> createState() => _DropdownFormState<T>();
}

class _DropdownFormState<T extends DropdownEnum>
    extends State<DropdownForm<T>> {
  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField<T>(
      style: Theme.of(context).textTheme.bodyLarge,
      dropdownColor: ProjectColorTheme.backgroundColorLight,
      elevation: 1,
      borderRadius: BorderRadius.circular(SIZE),
      icon: Icon(LucideIcons.chevronDown200),
      decoration: InputDecoration(labelText: 'Período:'),
      value: widget.selectedValue,
      onChanged: widget.onChanged,
      items: _buildItems(),
    );
  }

  List<DropdownMenuItem<T>> _buildItems() {
    return widget.values.map((value) {
      return DropdownMenuItem<T>(
        value: value,
        child: Row(
          spacing: SIZE,
          children: [_buildMarker(value), Text(value.name)],
        ),
      );
    }).toList();
  }

  Widget _buildMarker(T enumValue) {
    if (enumValue.color == null) return const SizedBox.shrink();
    return Container(
      width: SIZE * 2,
      height: SIZE * 2,
      decoration: BoxDecoration(
        color: enumValue.color,
        borderRadius: BorderRadius.circular(SIZE),
      ),
    );
  }
}
