import 'package:flutter/material.dart';
import 'package:flutter_react_poc/widgets/dropdown_form.dart';

import '../core/constants.dart';
import '../core/enums.dart';
import '../theme/color_theme.dart';

class ProjectForm extends StatefulWidget {
  const ProjectForm({super.key});

  @override
  State<ProjectForm> createState() => _ProjectFormState();
}

class _ProjectFormState extends State<ProjectForm> {
  final _formKey = GlobalKey<FormState>();
  Status? _statusValue;
  Period? _periodValue;
  DateTime? _startDate;
  DateTime? _endDate;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        spacing: SIZE * 2,
        children: [
          Row(
            spacing: SIZE * 2,
            children: [
              Flexible(
                flex: 3,
                child: TextFormField(
                  decoration: InputDecoration(labelText: 'Nome: '),
                ),
              ),
              Flexible(
                flex: 1,
                child: Theme(
                  data: Theme.of(context).copyWith(
                    focusColor: ProjectColorTheme.backgroundColor,
                    hoverColor: ProjectColorTheme.backgroundColor,
                  ),
                  child: DropdownForm(
                    selectedValue: _statusValue,
                    values: Status.values,
                    onChanged: (value) {
                      setState(() {
                        _statusValue = Status.values.firstWhere(
                          (e) => e.name == value.toString(),
                          orElse: () => Status.canceled,
                        );
                      });
                    },
                  ),
                ),
              ),
            ],
          ),
          TextFormField(
            decoration: InputDecoration(
              labelText: 'Descrição:',
              counterText: "",
            ),
            maxLines: 2,
            maxLength: 120,
          ),
          Row(
            spacing: SIZE * 2,
            children: [
              Flexible(
                flex: 1,
                child: TextFormField(
                  readOnly: true,
                  initialValue: _startDate?.toLocal().toString(),
                  onTap: () {
                    showDatePicker(
                      context: context,
                      initialDate: DateTime.now(),
                      firstDate: DateTime(2025),
                      lastDate: DateTime(2026),
                    ).then((value) {
                      setState(() {
                        _startDate = value;
                      });
                    });
                  },
                  decoration: InputDecoration(labelText: 'Data de início:'),
                ),
              ),
              Flexible(
                flex: 1,
                child: TextFormField(
                  readOnly: true,
                  initialValue: _endDate?.toLocal().toString(),
                  onTap: () {
                    showDatePicker(
                      context: context,
                      initialDate: DateTime.now(),
                      firstDate: DateTime(2025),
                      lastDate: DateTime(2026),
                    ).then((value) {
                      setState(() {
                        _endDate = value;
                      });
                    });
                  },
                  decoration: InputDecoration(labelText: 'Data de término:'),
                ),
              ),
            ],
          ),
          Row(
            spacing: SIZE * 2,
            children: [
              Flexible(
                flex: 1,
                child: TextFormField(
                  decoration: InputDecoration(labelText: 'Orçamento:'),
                ),
              ),
              Flexible(
                flex: 1,
                child: DropdownForm(
                  selectedValue: _periodValue,
                  values: Period.values,
                  onChanged: (value) {
                    setState(() {
                      _periodValue = Period.values.firstWhere(
                        (e) => e.name == value.toString(),
                        orElse: () => Period.mensal,
                      );
                    });
                  },
                ),
              ),
            ],
          ),
          TextFormField(decoration: InputDecoration(labelText: 'Responsável:')),
        ],
      ),
    );
  }
}
