import 'dart:convert';
import 'dart:typed_data';
import 'package:flutter/material.dart';
import 'package:fundacion_aip_mobile/features/farm/farm.dart';
import 'package:fundacion_aip_mobile/features/farm/presentation/providers/farms_projects_provider.dart';
import 'package:fundacion_aip_mobile/features/farm/presentation/screens/agricultural_registry_screen.dart';
import 'package:fundacion_aip_mobile/features/farm/presentation/screens/characterization_screen.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

class EditFarmScreen extends StatelessWidget {

  static const String name = 'edit_farm_screen';

  const EditFarmScreen({super.key});

  void updateFarm(CreateFarmProvider farmProvider, FarmsProjectProvider projectProvider )async{
    
    final farmUpdated = await farmProvider.updateFarm();

    if(farmUpdated != null){
      projectProvider.updateFarmInList(farmUpdated);
      return;
    }
    
  }

  @override
  Widget build(BuildContext context) {

    final height = MediaQuery.of(context).size.height;

    final editFarm = Provider.of<CreateFarmProvider>(context).createNewFarm;
    Uint8List bytes = base64Decode('');
    

    final color = Theme.of(context).colorScheme.primary;

    if(editFarm.imgBeneficiario != null){
      bytes = base64Decode(editFarm.imgBeneficiario!);
    }

    final farmService = Provider.of<CreateFarmProvider>(context);
    final projectService = Provider.of<FarmsProjectProvider>(context);
    

    return Scaffold(
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FilledButton.icon(onPressed: (){

            context.pushReplacementNamed(AgriculturalRegistryScreen.name);

          }, icon: const Icon(Icons.note_alt_outlined), label: const Text('Reg. Agrícola')),
          //FilledButton.icon(onPressed: (){}, icon: const Icon(Icons.note_alt_outlined), label: const Text('Reg. Piscicola')),

          FilledButton.icon(
            icon: const Icon(Icons.save),
            label: const Text('Guardar predio'),
            onPressed: (){
              if(farmService.isValidForm()){
                updateFarm(farmService, projectService);
              }
              context.pushReplacementNamed(Characterizationcreen.name);
            },
          ),
        ],
      ),
      body: SizedBox(
        width: double.infinity,
        child: Stack(
          children: [
            Container(
              width: double.infinity,
              height: height * 0.3,
              color: color,
              child: editFarm.imgBeneficiario == null 
                ? Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset('assets/images/logo-aip.png', fit: BoxFit.contain, width: 60,),
                    const SizedBox(width: 10,),
                    const Text('SIN IMAGEN', style: TextStyle(fontSize: 35, color: Colors.white),)
                  ],
                )
                : Image.memory(bytes, fit: BoxFit.fill,)
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                width: double.infinity,
                height: height * 0.73,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(30), topRight: Radius.circular(30)),
                  color: Colors.white,
                ),
                child: Form(
                  key: farmService.formkey,
                  child: PageView(
                    children: const [
                      DatosContactoTitular(),
                      DatosPredio(),
                      DatosAprendizaje(),
                      DatosLote1(),
                      DatosLote2(),
                      DatosLote3(),
                      DatosLote4(),
                      DatosLote5(),
                      DatosVisita()
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}