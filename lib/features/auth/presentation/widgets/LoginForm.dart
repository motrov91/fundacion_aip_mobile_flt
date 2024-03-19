import 'package:flutter/material.dart';
import 'package:fundacion_aip_mobile/features/projects/projects.dart';
import 'package:go_router/go_router.dart';

import '../../../shared/infrastructure/inputs/inputs.dart';

class LoginForm extends StatelessWidget {
  const LoginForm();

  @override
  Widget build(BuildContext context) {

    final txtButton = Theme.of(context).textTheme.labelLarge!.copyWith(
      color: Theme.of(context).colorScheme.primary
    );

    return Form(
      child: Container(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            CustomTextFormField(
              label: "Usuario",
              iconInput: Icons.person_2_outlined,
            ),
            const SizedBox(height: 15,),
            CustomTextFormField(
              label: "Contraseña",
              iconInput: Icons.lock_outline,
              isObscure: true,
              sufix: true,
            ),
            const SizedBox(height: 15,),
        
            FilledButton.tonal(
              onPressed: (){
                context.pushReplacementNamed(ProjectsScreen.name);
              }, 
              child: Text('Ingresar', style: txtButton,)
            )
        
          ],
        ),
      )
    );
  }
}