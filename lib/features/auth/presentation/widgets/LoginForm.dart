import 'package:flutter/material.dart';
import 'package:fundacion_aip_mobile/features/auth/presentation/providers/auth_provider.dart';
import 'package:fundacion_aip_mobile/features/projects/projects.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

import '../../../shared/infrastructure/inputs/inputs.dart';

class LoginForm extends StatelessWidget {
  const LoginForm();

  @override
  Widget build(BuildContext context) {
    final txtButton = Theme.of(context)
        .textTheme
        .labelLarge!
        .copyWith(color: Theme.of(context).colorScheme.primary);

    final authService = Provider.of<AuthProvider>(context);

    return Form(
        child: Expanded(
      child: Container(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            CustomTextFormField(
              label: "Usuario",
              iconInput: Icons.person_2_outlined,
              onChanged: (value) {
                authService.setUsername = value;
              },
              validator: (value) {
                return (value != null && value != '')
                    ? null
                    : 'Este campo no puede estar vacío';
              },
              isValidator: true,
            ),
            const SizedBox(
              height: 8,
            ),
            CustomTextFormField(
              label: "Contraseña",
              iconInput: Icons.lock_outline,
              isObscure: true,
              sufix: true,
              onChanged: (value) {
                authService.setPassword = value;
              },
              validator: (value) {
                return (value != null && value != '')
                    ? null
                    : 'Este campo no puede estar vacío';
              },
              isValidator: true,
            ),
            const SizedBox(
              height: 15,
            ),
            const Spacer(),
            FilledButton.tonal(
                onPressed: () {

                  final username = authService.getUsername;
                  final password = authService.getPassword;


                  if(authService.isValidForm()){
                    //TODO: Envie los datos  para el login
                    authService.loginUser(username!, password!);
                    context.pushReplacementNamed(ProjectsScreen.name);
                  }else{
                    //TODO: infique que los campos deben ser obligatorios
                    //TODO: Si es un error notifique el error con un snackbar
                  }


                },
                child: Text(
                  'Ingresar',
                  style: txtButton,
                ))
          ],
        ),
      ),
    ));
  }
}
