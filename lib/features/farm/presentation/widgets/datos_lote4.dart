import 'package:flutter/material.dart';
import 'package:fundacion_aip_mobile/features/shared/infrastructure/inputs/inputs.dart';

class DatosLote4 extends StatelessWidget {
  const DatosLote4({super.key});

  @override
  Widget build(BuildContext context) {

    final txtText = Theme.of(context).textTheme.bodyMedium!.copyWith(
      fontWeight: FontWeight.w500,
      color: Theme.of(context).colorScheme.primary
    );

    return Container(
      margin: const EdgeInsets.all(5),
      width: double.infinity,
      height: double.infinity,
      child: SingleChildScrollView(
        child: Column(
          children: [
        
            Container(
              margin: const EdgeInsets.symmetric(vertical: 5),
              child: Center(
                child: Text('Datos lote 4 (Pecuario)', style: txtText))),

            CustomTextFormField(label: 'Linea productiva pecuaria',),
            const SizedBox(height: 9,),
            CustomTextFormField(label: 'Edad promedio de los animales', keyType: TextInputType.number,),
            const SizedBox(height: 9,),
            CustomTextFormField(label: 'Área aproximada usada por los animales', keyType: TextInputType.number),
            const SizedBox(height: 9,),
            CustomTextFormField(label: 'Raza',),
            const SizedBox(height: 9,),
            CustomTextFormField(label: 'Tipo',),
            const SizedBox(height: 9,),
            CustomTextFormField(label: 'Etapa productiva',),
            const SizedBox(height: 9,),
            CustomTextFormField(label: 'Latitud',),
            const SizedBox(height: 9,),
            CustomTextFormField(label: 'Longitud',),
            const SizedBox(height: 9,),
            CustomTextFormField(label: 'Cantidad de animales', keyType: TextInputType.number),
            const SizedBox(height: 9,),
            CustomTextFormField(label: 'Cantidad de litros producidos por año', keyType: TextInputType.number),
            const SizedBox(height: 9,),
            CustomTextFormField(label: 'Cantidad de KG producidos por año', keyType: TextInputType.number),
            const SizedBox(height: 9,),
            CustomTextFormField(label: 'Valor de KG comercializado en pesos / año', keyType: TextInputType.number),
            const SizedBox(height: 9,),
            CustomTextFormField(label: 'Tipo de alimentación',),
            const SizedBox(height: 9,),
            CustomTextFormField(label: 'Número de lotes o espacios usados para la actividad', keyType: TextInputType.number),
            const SizedBox(height: 9,),
            CustomTextFormField(label: 'Estado general de los animales',),
            const SizedBox(height: 9,),
            CustomTextFormField(label: 'Valor promedio de KG comercializado en pesos / año', keyType: TextInputType.number),
            const SizedBox(height: 9,),
          ],
        ),
      ),
    );
  }
}