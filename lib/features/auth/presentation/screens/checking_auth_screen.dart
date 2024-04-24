import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:fundacion_aip_mobile/features/auth/auth.dart';
import 'package:fundacion_aip_mobile/features/auth/presentation/providers/auth_provider.dart';
import 'package:fundacion_aip_mobile/features/farm/presentation/providers/farms_projects_provider.dart';
import 'package:fundacion_aip_mobile/features/farm/presentation/screens/characterization_screen.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

class CheckingOutScreen extends StatelessWidget {
  const CheckingOutScreen({super.key});
  @override
  Widget build(BuildContext context) {
    final authService = Provider.of<AuthProvider>(context, listen: false);
    final projectService = Provider.of<FarmsProjectProvider>(context, listen: false);

    return Scaffold(
        body: FutureBuilder(
      future: authService.readToken(),
      builder: (context, snapshot) {

        if( !snapshot.hasData){
          return Center(
            child: CircularProgressIndicator(
              strokeWidth: 3,
              color: Colors.green[800],
            ),
          );
        }

        if( snapshot.data == '' ){
          Future.microtask((){
            context.pushReplacementNamed(LoginScreen.name);
          });
        } else{
          Future.microtask(()async{

            await projectService.getCharaterizarionFarmsList();
                            
            if (projectService.isLoading) return;

            context.pushReplacementNamed(Characterizationcreen.name);
          });    
        }

        return Container(
          width: double.infinity,
          height: double.infinity,
          color: Colors.green[800],
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const CircularProgressIndicator(
                strokeWidth: 4,
                color: Colors.white,
              ),

              const SizedBox(height: 10,),

              FadeInDown(child: const Text('Cargando....', style: TextStyle(color: Colors.white),))
            ],
          ),
        ); 
      },
    ));
  }
}
