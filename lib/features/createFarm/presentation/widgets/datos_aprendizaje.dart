import 'package:flutter/material.dart';

class DatosAprendizaje extends StatelessWidget {
  const DatosAprendizaje({super.key});

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
              child: Text('Datos de aprendizaje', style: txtText))),
        ],
      ),
    );
  }
}