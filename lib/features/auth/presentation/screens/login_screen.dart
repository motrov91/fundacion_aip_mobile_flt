import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:fundacion_aip_mobile/features/auth/auth.dart';


class LoginScreen extends StatelessWidget {

  static const String name = 'login_screen';

  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            _HeaderLogin(),
            const SizedBox(height: 20,),
            FadeInRight(child: const CardLogin()),
            const SizedBox(height: 5,),
            FadeInUp(
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children:[
                  Icon(Icons.copyright_outlined, size: 10, color: Colors.grey,),
                  SizedBox(width: 3,),
                  Text('Fundacion AIP 2024', style: TextStyle(color: Colors.grey),)
                ],
              ),
            )
          ],
        ),
      )
    );
  }
}

class _HeaderLogin extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [ 
        Container(
          padding: const EdgeInsets.only(bottom: 55),
          child:  ClipRRect(
            borderRadius: const BorderRadius.only(bottomLeft: Radius.circular(20), bottomRight: Radius.circular(20)),
            child: FadeInDown(
              duration: const Duration(seconds: 1),
              child: const Image(
                image: AssetImage(
                  'assets/images/bg_header_login.png'
                )
              ),
            )
          ),
        ),
        Positioned(
          bottom: 0,
          left: 0,
          right: 0,
          child: FadeInUp(
            child: Container(
              width: 130,
              height: 130,
              padding: const EdgeInsets.all(2),
              decoration: const BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle
              ),
              child: const Image(image: AssetImage('assets/images/logo-aip.png'),),
            ),
          )
        ),
      ],
    );
  }
}