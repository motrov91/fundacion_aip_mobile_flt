import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:fundacion_aip_mobile/features/characterization/characterization.dart';
import 'package:fundacion_aip_mobile/features/projects/projects.dart';
import 'package:go_router/go_router.dart';

class ProjectsScreen extends StatelessWidget {

  static const String name = 'projects_screen';

  const ProjectsScreen({super.key});

  @override
  Widget build(BuildContext context) {

    final txtStyle = Theme.of(context).textTheme.labelLarge!.copyWith(
      color: Theme.of(context).colorScheme.primary
    );
    final txtTitleStyle= Theme.of(context).textTheme.labelLarge;

    return Scaffold(
      body: Center(
        child: FadeIn(
          duration: const Duration(seconds: 2),
          child: Form(
            child: Container(
              width: 300,
              height: 280,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(14))
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
                  const DropdownFormField(),
                  const SizedBox(height: 10,),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Container(
                      margin: const EdgeInsets.only(right: 10),
                      child: FadeInRight(
                        delay: const Duration(seconds: 2),
                        child: FilledButton.tonal(
                          onPressed: (){
                            //TODO: Seleccion del proyecto.
                            //TODO: Obtener los datos.
                            context.pushReplacementNamed(Characterizationcreen.name);
                          }, 
                          child: const Text('Ingresar'),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            )
          ),
        )
      ),
    );
  }
}