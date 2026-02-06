import 'package:flutter/material.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';

import '../core/constants.dart';
import '../core/enums.dart';
import '../theme/color_theme.dart';

class StatusDropdown extends StatefulWidget {
  final Status? status;
  final Function(Status?) onChanged;

  const StatusDropdown({
    super.key,
    required this.status,
    required this.onChanged,
  });

  @override
  State<StatusDropdown> createState() => _StatusDropdownState();
}

class _StatusDropdownState extends State<StatusDropdown> {
  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField(
      style: Theme.of(context).textTheme.bodyLarge,
      dropdownColor: ProjectColorTheme.backgroundColorLight,
      elevation: 1,
      borderRadius: BorderRadius.circular(SIZE),
      icon: Icon(LucideIcons.chevronDown200),
      decoration: InputDecoration(labelText: 'Status:'),
      value: widget.status,
      onChanged: (value) => widget.onChanged(value),
      items: items(),
    );
  }

  Container _statusMarker(Status status) {
    return Container(
      width: SIZE * 2,
      height: SIZE * 2,
      decoration: BoxDecoration(
        color: status.color,
        borderRadius: BorderRadius.circular(SIZE),
      ),
    );
  }

  DropdownMenuItem<Status> _statusItem(Status status) {
    return DropdownMenuItem(
      value: status,
      child: Row(
        spacing: SIZE,
        children: [_statusMarker(status), Text(status.name)],
      ),
    );
  }

  List<DropdownMenuItem<Status>> items() =>
      Status.values.map(_statusItem).toList();
}
