import 'package:flutter/material.dart';

import '../form/project_form.dart';
import '../widgets/layout/content.dart';

class ProjectPage extends StatelessWidget {
  const ProjectPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(child: const Content(child: ProjectForm()));
  }
}
