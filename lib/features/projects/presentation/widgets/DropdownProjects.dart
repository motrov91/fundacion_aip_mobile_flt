import 'package:flutter/material.dart';
import 'package:fundacion_aip_mobile/features/auth/presentation/providers/auth_provider.dart';
import 'package:provider/provider.dart';

import '../../../auth/domain/domain.dart';
import '../../../farm/presentation/providers/farms_projects_provider.dart';

// ignore: must_be_immutable
class DropdownFormField extends StatelessWidget {
  
  int? projectSelected;

  DropdownFormField({super.key});

  @override
  Widget build(BuildContext context) {

    final List<ProjectByUser> _projectsList;

    _projectsList = Provider.of<AuthProvider>(context, listen: false).projectsList; 
    final farmService = Provider.of<FarmsProjectProvider>(context);

    return Padding(
      padding: const EdgeInsets.all(10),
      child: DropdownButtonFormField(
        decoration:  InputDecoration(
          enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey, width: 1),
            borderRadius: BorderRadius.all(Radius.circular(10))
          ),
          hintText: 'Seleccione',
          hintStyle: TextStyle(color: Theme.of(context).colorScheme.primary),
          border: const OutlineInputBorder(
            borderSide: BorderSide(width: 1)
          )
        ),
        style: TextStyle( color: Theme.of(context).colorScheme.primary),
        value: projectSelected,
        items: _projectsList.map(
          (project) {
            return DropdownMenuItem(
              value: project.projectId,
              child: Center(
                child: Text(project.projectNom),
              )
            );
          }
        ).toList(), 
        onChanged: (value){
          projectSelected = value!;

          farmService.setProjectId = projectSelected!;
        }
      ),
    );
  }
}