import 'package:flutter/material.dart';
import 'package:fundacion_aip_mobile/features/farm/presentation/providers/agricultural_registry_provider.dart';
import 'package:fundacion_aip_mobile/features/farm/presentation/widgets/agriculturalRegistryWidgets/informationAccess.dart';
import 'package:fundacion_aip_mobile/features/farm/presentation/widgets/agriculturalRegistryWidgets/naturalEnviroment.dart';
import 'package:fundacion_aip_mobile/features/farm/presentation/widgets/agriculturalRegistryWidgets/organization.dart';
import 'package:fundacion_aip_mobile/features/farm/presentation/widgets/agriculturalRegistryWidgets/participationMechanism.dart';
import 'package:fundacion_aip_mobile/features/farm/presentation/widgets/agriculturalRegistryWidgets/principalActivity.dart';
import 'package:fundacion_aip_mobile/features/shared/shared.dart';
import 'package:provider/provider.dart';
import '../providers/create_farm_provider.dart';

class AgriculturalRegistryScreen extends StatelessWidget {

  static const String name = 'agricultural_registry_screen';

  const AgriculturalRegistryScreen({super.key,});

  /*
   * Función que ejecuta el snackbar si no se cumple con los campos obligatorios
  */
  void showCumtomSnackbar(BuildContext ctx){

    ScaffoldMessenger.of(ctx).clearSnackBars();

    final snackBar = SnackBar(
      backgroundColor: Colors.red[400],
      content: const Text('Recuerda que es importante diligencias todos los campos'),
      duration: const Duration(seconds: 5),  
      action: SnackBarAction(
        label: 'Ok', onPressed: (){}, textColor: Colors.amber,),
    );

    ScaffoldMessenger.of(ctx).showSnackBar(snackBar);
  }

  @override
  Widget build(BuildContext context) {

    final scaffoldKey = GlobalKey<ScaffoldState>();
    final agriculturalService = Provider.of<AgriculturalRegistryProvider>(context);
    //para ingresar hasta esta vista tenemos que pasar por el editFarm de ahi obtenemos los datos para pasarlos a la creacion de
    //de nuestro agriculturalRegistry
    final editFarm = Provider.of<CreateFarmProvider>(context).createNewFarm;

    return Scaffold(
      key: scaffoldKey,
      appBar: const CustomAppbar(),  
      drawer: SideMenu(scaffoldKey: scaffoldKey),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Theme.of(context).primaryColor,
        onPressed: (){

          if(agriculturalService.isValidForm()){
            agriculturalService.addAgriculturalRegistry(editFarm);
          }else{
            showCumtomSnackbar(context);
          }
          
        },
        child: const Icon(Icons.save, color: Colors.white,),
      ),
      body: Column(
        children: [
          Expanded(
            child: Form(
              key: agriculturalService.formkeyAgricultural,
              child: PageView(
                children: const [
                  PrincipalActivity(),
                  Organization(),
                  InformationAccess(),
                  NaturalEnviroment(),
                  ParticipationMechanism()
                ],
              )
            ),
          )
        ],
      ),

    );
  }
}