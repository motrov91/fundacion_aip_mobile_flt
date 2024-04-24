
import 'package:flutter/material.dart';
import 'package:fundacion_aip_mobile/features/auth/presentation/providers/auth_provider.dart';
import 'package:fundacion_aip_mobile/features/farm/presentation/screens/characterization_screen.dart';
import 'package:fundacion_aip_mobile/features/tutorial/screens/tutorial_screen.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

class CheckAuthStatusScreen extends StatelessWidget {
  const CheckAuthStatusScreen({super.key});

  @override
  Widget build(BuildContext context) {

    final authService = Provider.of<AuthProvider>(context, listen: false);

    return  Scaffold(
      body: Center(
        child: FutureBuilder(
          future: authService.readToken(), 
          builder: (context, snapshot) {
            if( !snapshot.hasData ){
              return CircularProgressIndicator(
                strokeWidth: 3,
                color: Colors.green.shade900,
              );
            }

            if(snapshot.data == ''){
              Future.microtask((){
                context.pushReplacementNamed(TutorialScreen.name);
              });
            } else{
              Future.microtask((){
                context.pushReplacementNamed(Characterizationcreen.name);
              });
            }
              

            return Container();
          },
        )
      ),
    );
  }
}