import 'dart:ui';

import '../theme/color_theme.dart';

mixin DropdownEnum on Enum {
  Color? get color;
  String get name;
}

enum Period with DropdownEnum {
  mensal,
  trimestral,
  semestral,
  anual;

  @override
  Color? get color {
    switch (this) {
      case Period.mensal:
      case Period.trimestral:
      case Period.semestral:
      case Period.anual:
        return null;
    }
  }

  @override
  String get name {
    switch (this) {
      case Period.mensal:
        return 'Mensal';
      case Period.trimestral:
        return 'Trimestral';
      case Period.semestral:
        return 'Semestral';
      case Period.anual:
        return 'Anual';
    }
  }
}

enum Status with DropdownEnum {
  inProgress,
  negotiation,
  canceled,
  completed;

  @override
  Color get color {
    switch (this) {
      case Status.inProgress:
        return ProjectColorTheme.inProgress;
      case Status.negotiation:
        return ProjectColorTheme.negotiation;
      case Status.canceled:
        return ProjectColorTheme.canceled;
      case Status.completed:
        return ProjectColorTheme.completed;
    }
  }

  @override
  String get name {
    switch (this) {
      case Status.inProgress:
        return 'Em andamento';
      case Status.negotiation:
        return 'Em negociação';
      case Status.canceled:
        return 'Cancelado';
      case Status.completed:
        return 'Concluído';
    }
  }
}
