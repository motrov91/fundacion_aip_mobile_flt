import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:fundacion_aip_mobile/features/auth/presentation/providers/auth_provider.dart';
import 'package:fundacion_aip_mobile/features/projects/projects.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

import '../../../farm/presentation/providers/farms_projects_provider.dart';
import '../../../farm/presentation/screens/characterization_screen.dart';

class ProjectsScreen extends StatelessWidget {

  static const String name = 'projects_screen';

  const ProjectsScreen({super.key});

  @override
  Widget build(BuildContext context) {

    final txtStyle = Theme.of(context).textTheme.labelLarge!.copyWith(
      color: Theme.of(context).colorScheme.primary
    );
    final txtTitleStyle= Theme.of(context).textTheme.labelLarge!.copyWith(
      color: Theme.of(context).colorScheme.secondary
    );
    
    final  textStyleBottom = TextStyle(color: Colors.green.shade700, fontSize: 16, fontWeight: FontWeight.normal);

    final userService = Provider.of<AuthProvider>(context).user;
    final projectService = Provider.of<FarmsProjectProvider>(context);

    return Scaffold(
      backgroundColor: const Color(0xFFF2FFF2),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Spacer(),
          FadeInLeft(
            duration: const Duration(seconds: 1), 
            child: Form(
              child: Container(
                width: 300,
                height: 280,
                decoration:  BoxDecoration(
                  color: Colors.white,
                  borderRadius: const BorderRadius.all(Radius.circular(14)),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.green.withOpacity(0.15),
                      blurRadius: 4,
                      offset: const Offset(4, 8),
                    )
                  ]
                ),
                child: Column(
                  children: [
                    Container(
                      width: double.infinity,
                      height: 60,
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(14),
                          topRight: Radius.circular(14)
                        ),
                        color: Color(0xff9cd200),
                      ),
                      child: Center(
                        child: Text(
                          'Seleccione un projecto',
                          style: txtStyle,
                        )),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Text(
                        'El proyecto que seleccione almacenará la informacion que ingrese.',
                        textAlign: TextAlign.center,
                        style: txtTitleStyle,
                      ),
                    ),
                    DropdownFormField(),
                    const SizedBox(height: 10,),
                    Align(
                      alignment: Alignment.centerRight,
                      child: Container(
                        margin: const EdgeInsets.only(right: 10),
                        child: FadeInRight(
                          delay: const Duration(seconds: 1),
                          child: SizedBox(
                            width: 150,
                            child: FilledButton.tonal(
                              onPressed: () async {
                                
                                final user = userService!.id;
                                final project = projectService.getProjectId;
                            
                                await projectService.getCharaterizarionFarmsList(user, project!);
                            
                                if (projectService.isLoading) return;
                            
                                context.pushReplacementNamed(Characterizationcreen.name);
                                // context.go(Characterizationcreen.name);
                              }, 
                              child: projectService.isLoading 
                                ? SizedBox(
                                  width: 20,
                                  height: 20,
                                  child: CircularProgressIndicator(
                                    strokeWidth: 3,
                                    color: Colors.green[900],
                                  ),
                                )
                                : Text(
                                  'Ingresar',
                                  style: TextStyle(
                                  color: Theme.of(context).colorScheme.primary
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              )
            ),
          ),
          const Spacer(),
          FadeInUp(
            child: SizedBox(
              height: 80,
              width: double.infinity,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Image(image: AssetImage('assets/images/logo-aip.png'), width: 50,),
                  const SizedBox(width: 8,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Fundación AIP', style: textStyleBottom,),
                      Text('Cloud Service', style: textStyleBottom,),
                    ],)
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}