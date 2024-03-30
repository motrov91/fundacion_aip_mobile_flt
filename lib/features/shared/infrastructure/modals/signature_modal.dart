import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:fundacion_aip_mobile/features/farm/presentation/providers/create_farm_provider.dart';
import 'package:provider/provider.dart';
import 'package:signature/signature.dart';

// ignore: must_be_immutable
class SignatureModal extends StatelessWidget {

  Uint8List? imageSignature;

  SignatureController controller = SignatureController(
    penStrokeWidth: 2,
    penColor: Colors.black87,
    exportBackgroundColor: Colors.white
  );

  SignatureModal({super.key});

  @override
  Widget build(BuildContext context) {

    final imageProvider = Provider.of<CreateFarmProvider>(context);

    return AlertDialog(
      content: Column(
        children: [
          Expanded(
            child: Row(
              
              children: [
                Transform.rotate(
                  angle: 90 * (3.1415926535897932 / 180),
                  child: const Text('Firma')),
                Expanded(
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Signature(
                      controller: controller,
                      width: double.infinity,
                      backgroundColor: Colors.green[100]!,
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
      actionsAlignment: MainAxisAlignment.center,
      actions: [
        TextButton(
          style: TextButton.styleFrom(
            textStyle: Theme.of(context).textTheme.labelLarge,
          ),
          child: const Text('Cancelar'),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        TextButton(
          style: TextButton.styleFrom(
            textStyle: Theme.of(context).textTheme.labelLarge,
          ),
          child: const Text('Limpiar'),
          onPressed: () {
            controller.clear();
          },
        ),
        TextButton(
          style: TextButton.styleFrom(
            textStyle: Theme.of(context).textTheme.labelLarge,
          ),
          child: const Text('guardar'),
          onPressed: () async {
            imageSignature = await controller.toPngBytes();

            imageProvider.setImgSignature = imageSignature!;
            Navigator.of(context).pop();
          },
        ),
      ],
    );
  }
}