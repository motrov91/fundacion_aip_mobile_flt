import 'package:flutter/material.dart';

class ProjectsScreen extends StatelessWidget {

  static const String name = 'projects_screen';

  const ProjectsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('Projects Screen'),
      ),
    );
  }
}