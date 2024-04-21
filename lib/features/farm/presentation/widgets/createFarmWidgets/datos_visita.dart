import 'dart:convert';
import 'dart:io';
import 'dart:typed_data';

import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:fundacion_aip_mobile/features/farm/presentation/providers/create_farm_provider.dart';
import 'package:fundacion_aip_mobile/features/shared/infrastructure/modals/signature_modal.dart';
import 'package:fundacion_aip_mobile/features/shared/shared.dart';
import 'package:provider/provider.dart';

// ignore: must_be_immutable
class DatosVisita extends StatelessWidget {
  const DatosVisita({super.key});


  /*
   * Función que ejecuta el snackbar si no se cumple con los campos obligatorios
  */
  void showCumtomSnackbar(BuildContext ctx){

    ScaffoldMessenger.of(ctx).clearSnackBars();

    final snackBar = SnackBar(
      backgroundColor: Colors.red[400],
      content: const Text('Falta diligenciar algunos campos obligatorios, verifica tambien la foto y la firma antes de crear el predio'),
      duration: const Duration(seconds: 5),  
      action: SnackBarAction(
        label: 'Ok', onPressed: (){}, textColor: Colors.amber,),
    );

    ScaffoldMessenger.of(ctx).showSnackBar(snackBar);
  }

  @override
  Widget build(BuildContext context) {

    final txtText = Theme.of(context).textTheme.bodyMedium!.copyWith(
      fontWeight: FontWeight.w500,
      color: Theme.of(context).colorScheme.primary
    );

    final Uint8List? createFarmProvider = Provider.of<CreateFarmProvider>(context).getImgSignature;

    MemoryImage? imageRefactor = createFarmProvider != null ? MemoryImage(createFarmProvider) : null;

    final farmService = Provider.of<CreateFarmProvider>(context);

    return SizedBox(
      width: double.infinity,
      height: double.infinity,
      child: SingleChildScrollView(
        child: Column(
          children: [
        
            Container(
              margin: const EdgeInsets.symmetric(vertical: 5),
              child: Center(
                child: Text('Soporte de visita al predio', style: txtText))),
        
            FilledButton.tonalIcon(
              onPressed: () async{ 
                final photoPath = await CameraGalleryServiceImpl().takePhoto();
                if( photoPath == null ) return;

                farmService.setImgFarm = FileImage(File(photoPath));

                // Leemos la ruta de la foto tomada y la almacenamos en la variable imageFile
                File imageFile = File(photoPath);
                //Leemos la imagen como una lista de bytes
                Uint8List bytes = await imageFile.readAsBytes();
                //Convertimos la imagen en base64
                farmService.createNewFarm.imgBeneficiario = base64Encode(bytes);
        
                photoPath;
              }, 
              icon: const Icon(Icons.camera_alt_outlined), 
              label: const Text('Tomar foto desde camara')
            ),
        
            FilledButton.tonalIcon(
              onPressed: () async{
                final photoPath = await CameraGalleryServiceImpl().selectPhoto();
                if( photoPath == null ) return;

                farmService.setImgFarm = FileImage(File(photoPath));

                // Leemos la ruta de la foto tomada y la almacenamos en la variable imageFile
                File imageFile = File(photoPath);
                //Leemos la imagen como una lista de bytes
                Uint8List bytes = await imageFile.readAsBytes();
                //Convertimos la imagen en base64
                farmService.createNewFarm.imgBeneficiario = base64Encode(bytes);

        
                photoPath;
              }, 
              icon: const Icon(Icons.photo_camera_front_outlined), 
              label: const Text('Obtener foto desde galeria')
            ),
        
            const SizedBox(height: 10,),
        
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 20,),
              width: double.infinity,
              height: 200,
              child: FadeInImage(
                placeholder: const AssetImage('assets/loaders/jar-loading.gif'), 
                fit: BoxFit.fill,
                image: farmService.getImgFarm ?? const AssetImage('assets/images/image_camera.png')
              ),
            ),
            Text(
              'Vista previa de la imagen', 
              style: TextStyle(
                fontWeight: FontWeight.w500,
                color: Theme.of(context).colorScheme.primary
              ),),
        
            const SizedBox(height: 30,),
        
            FilledButton.tonalIcon(
              onPressed: (){
        
                showDialog(
                  context: context,
                  builder: (context) =>  BounceInDown(
                    child: SignatureModal()
                  ),
                );
        
              }, 
              icon: const Icon(Icons.create_sharp), 
              label: const Text('Firma del productor')
            ),
        
            imageRefactor != null 
              ? Transform.rotate(
                angle: -90 * (3.1415926535897932 / 180),
                child: SizedBox(
                  width: 90,
                  height: 150,
                  child: FadeInImage(
                    // width: 400,
                    // height: 200,
                    placeholder: const AssetImage('assets/loaders/jar-loading.gif'), 
                    image: imageRefactor,
                    fit: BoxFit.fill,
                  ),
                ),
              )
            : const SizedBox(
              width: double.infinity,
              height: 150,
              child:  Image(image: AssetImage('assets/images/image_signature.png'))),
        
            Text(
              'Vista previa de la firma', 
              style: TextStyle(
                fontWeight: FontWeight.w500,
                color: Theme.of(context).colorScheme.primary
              ),),
        
            const SizedBox(height: 40,),

            FilledButton(
              onPressed: (){

                /*
                 * Validamos los campos que son requeridos para la creacion del predio.
                 * En caso de que no cumpla mostramos el snackbar con el error.
                */
                if(farmService.isValidForm()){
                  //TODO: Realizar el almacenamiento en local.
                  //TODO: Navegar a los predios
                }else{
                  showCumtomSnackbar(context);
                }
              },
              child: const Text('Crear predio'),
            )
              
        
          ],
        ),
      ),
    );
  }
}