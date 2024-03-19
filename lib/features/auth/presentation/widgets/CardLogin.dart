import 'package:flutter/material.dart';
import 'package:fundacion_aip_mobile/features/auth/auth.dart';


class CardLogin extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    final txtTheme = Theme.of(context).textTheme.titleSmall!.copyWith(
      color: Colors.white
    );

    return Container(
      width: 280,
      height: 300,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(10)),
        color: Colors.white,
      ),
      child: Column(
        children: [
          Container(
            width: double.infinity,
            height: 60,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(topLeft: Radius.circular(20), topRight: Radius.circular(20)),
              color: Color(0xff9cd200),
            ),
            child: Center(
              child: Text('Iniciar sesión', style: txtTheme,)
            ),
          ),
          const SizedBox(height: 20,),
          const LoginForm()
        ],
      ),
    );
  }
}