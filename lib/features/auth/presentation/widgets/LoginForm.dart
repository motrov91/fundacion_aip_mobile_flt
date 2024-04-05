import 'package:flutter/material.dart';
import 'package:fundacion_aip_mobile/features/auth/presentation/providers/auth_provider.dart';
import 'package:fundacion_aip_mobile/features/projects/projects.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

import '../../../shared/infrastructure/inputs/inputs.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({super.key});

  void showSnackbar(BuildContext ctx, String message) {
    ScaffoldMessenger.of(ctx).hideCurrentSnackBar();
    ScaffoldMessenger.of(ctx).showSnackBar(
        SnackBar(backgroundColor: Colors.red[300], content: Text(message)));
  }

  @override
  Widget build(BuildContext context) {
    final authService = Provider.of<AuthProvider>(context);

    final txtButton = Theme.of(context)
        .textTheme
        .labelLarge!
        .copyWith(color: Theme.of(context).colorScheme.primary);

    //Error Message
    errorMessage() {
      if (authService.errorMesage == null) return;

      showSnackbar(context, authService.errorMesage!);
    }

    return Form(
      key: authService.formkeyLogin,
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
              autovalidateMode: AutovalidateMode.onUserInteraction,
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
                return (value == null || value.isEmpty)
                    ? 'Este campo no puede estar vacío'
                    : null;
              },
              isValidator: true,
              autovalidateMode: AutovalidateMode.onUserInteraction,
            ),
            const SizedBox(
              height: 15,
            ),
            const Spacer(),
            SizedBox(
              width: 200,
              child: FilledButton.tonal(
                  onPressed: () async {
                    final username = authService.getUsername;
                    final password = authService.getPassword;

                    if (authService.isValidForm() == false) return;

                    await authService. loginUser(username!, password!);

                    if (authService.errorMesage != null) {
                      errorMessage();
                    }

                    if (authService.user == null) return;

                    context.pushReplacementNamed(ProjectsScreen.name);
                  },
                  child: authService.isLoading
                      ? SizedBox(
                          width: 20,
                          height: 20,
                          child: CircularProgressIndicator(
                            strokeWidth: 3,
                            color: Theme.of(context).colorScheme.primary,
                          ),
                        )
                      : Text(
                          'Ingresar',
                          style: txtButton,
                        )),
            )
          ],
        ),
      ),
    ));
  }
}
