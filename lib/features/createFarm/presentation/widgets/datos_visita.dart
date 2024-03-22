import 'dart:io';

import 'package:flutter/material.dart';
import 'package:fundacion_aip_mobile/features/shared/shared.dart';

class DatosVisita extends StatefulWidget {

  ImageProvider imageProvider = const AssetImage('assets/images/image_camera.png');

  DatosVisita({super.key});

  @override
  State<DatosVisita> createState() => _DatosVisitaState();
}

class _DatosVisitaState extends State<DatosVisita> {

  @override
  Widget build(BuildContext context) {

    final txtText = Theme.of(context).textTheme.bodyMedium!.copyWith(
      fontWeight: FontWeight.w500,
      color: Theme.of(context).colorScheme.primary
    );

    return SizedBox(
      width: double.infinity,
      height: double.infinity,
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

              setState(() {
                widget.imageProvider = FileImage(File(photoPath));
              });

              photoPath;
            }, 
            icon: const Icon(Icons.camera_alt_outlined), 
            label: const Text('Tomar foto desde camara')
          ),

          FilledButton.tonalIcon(
            onPressed: ()async{
              final photoPath = await CameraGalleryServiceImpl().selectPhoto();
              if( photoPath == null ) return;

              setState(() {
                widget.imageProvider = FileImage(File(photoPath));
              });

              photoPath;
            }, 
            icon: const Icon(Icons.photo_camera_front_outlined), 
            label: const Text('Obtener foto desde galeria')
          ),

          const SizedBox(height: 10,),

          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 20,),
              width: double.infinity,
              height: 200,
              child: FadeInImage(
                placeholder: const AssetImage('assets/loaders/jar-loading.gif'), 
                fit: BoxFit.fill,
                image: widget.imageProvider
              ),
            ),
          ),
          Text(
            'Vista previa de la imagen', 
            style: TextStyle(
              fontWeight: FontWeight.w500,
              color: Theme.of(context).colorScheme.primary
            ),)

        ],
      ),
    );
  }
}