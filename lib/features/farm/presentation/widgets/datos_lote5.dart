import 'package:flutter/material.dart';
import 'package:fundacion_aip_mobile/features/shared/infrastructure/inputs/inputs.dart';
import 'package:provider/provider.dart';

import '../providers/create_farm_provider.dart';

class DatosLote5 extends StatelessWidget {
  const DatosLote5({super.key});

  @override
  Widget build(BuildContext context) {

    final txtText = Theme.of(context).textTheme.bodyMedium!.copyWith(
      fontWeight: FontWeight.w500,
      color: Theme.of(context).colorScheme.primary
    );

    final farmService = Provider.of<CreateFarmProvider>(context);

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
                child: Text('Datos lote 5 (Pecuario)', style: txtText))),

            CustomTextFormField(
              label: 'Linea productiva pecuaria',
              initalValueData: farmService.productLine5Pecuaria != '' ? farmService.productLine5Pecuaria : null,  
              onChanged: (value){
                farmService.productLine5Pecuaria = value;
              },
            ),
            const SizedBox(height: 9,),
            CustomTextFormField(
              label: 'Edad promedio de los animales', 
              keyType: TextInputType.number,
              initalValueData: farmService.ageAverageAnimals5 != '' ? farmService.ageAverageAnimals5 : null,  
              onChanged: (value){
                farmService.ageAverageAnimals5 = value;
              },
            ),
            const SizedBox(height: 9,),
            CustomTextFormField(
              label: 'Área aproximada usada por los animales', 
              keyType: TextInputType.number,
              initalValueData: farmService.aproxArea5 != '' ? farmService.aproxArea5 : null,  
              onChanged: (value){
                farmService.aproxArea5 = value;
              },
            ),
            const SizedBox(height: 9,),
            CustomTextFormField(
              label: 'Raza',
              initalValueData: farmService.breed5 != '' ? farmService.breed5 : null,  
              onChanged: (value){
                farmService.breed5 = value;
              },
            ),
            const SizedBox(height: 9,),
            CustomTextFormField(
              label: 'Tipo',
              initalValueData: farmService.typeofanimal5 != '' ? farmService.typeofanimal5 : null,  
              onChanged: (value){
                farmService.typeofanimal5 = value;
              },
            ),
            const SizedBox(height: 9,),
            CustomTextFormField(
              label: 'Etapa productiva',
              initalValueData: farmService.cropStatus5 != '' ? farmService.cropStatus5 : null,  
              onChanged: (value){
                farmService.cropStatus5 = value;
              },
            ),
            const SizedBox(height: 9,),
            CustomTextFormField(
              label: 'Latitud - Longitud',
              initalValueData: farmService.coordenates5 != '' ? farmService.coordenates5 : null,  
              onChanged: (value){
                farmService.coordenates5 = value;
              },
            ),
            const SizedBox(height: 9,),
            CustomTextFormField(
              label: 'Cantidad de animales', 
              keyType: TextInputType.number,
              initalValueData: farmService.cantAnimals5 != '' ? farmService.cantAnimals5 : null,  
              onChanged: (value){
                farmService.cantAnimals5 = value;
              },
            ),
            const SizedBox(height: 9,),
            CustomTextFormField(
              label: 'Cantidad de litros producidos por año', 
              keyType: TextInputType.number,
              initalValueData: farmService.cantKgProducedByYear5 != '' ? farmService.cantKgProducedByYear5 : null,  
              onChanged: (value){
                farmService.cantKgProducedByYear5 = value;
              },
            ),
            const SizedBox(height: 9,),
            CustomTextFormField(
              label: 'Cantidad de KG producidos por año', 
              keyType: TextInputType.number,
              initalValueData: farmService.cantKgByYearLote5 != '' ? farmService.cantKgByYearLote5 : null,  
              onChanged: (value){
                farmService.cantKgByYearLote5 = value;
              },
            ),
            const SizedBox(height: 9,),
            CustomTextFormField(
              label: 'Valor de KG comercializado en pesos / año', 
              keyType: TextInputType.number,
              initalValueData: farmService.priceKgSoldLote5 != '' ? farmService.priceKgSoldLote5 : null,  
              onChanged: (value){
                farmService.priceKgSoldLote5 = value;
              },
            ),
            const SizedBox(height: 9,),
            CustomTextFormField(
              label: 'Tipo de alimentación',
              initalValueData: farmService.nutritionType5 != '' ? farmService.nutritionType5 : null,  
              onChanged: (value){
                farmService.nutritionType5 = value;
              },
            ),
            const SizedBox(height: 9,),
            CustomTextFormField(
              label: 'Número de lotes o espacios usados para la actividad', 
              keyType: TextInputType.number,
              initalValueData: farmService.numberPlaces5 != '' ? farmService.numberPlaces5 : null,  
              onChanged: (value){
                farmService.numberPlaces5 = value;
              },
            ),
            const SizedBox(height: 9,),
            CustomTextFormField(
              label: 'Estado general de los animales',
              initalValueData: farmService.cropStatus5 != '' ? farmService.cropStatus5 : null,  
              onChanged: (value){
                farmService.cropStatus5 = value;
              },
            ),
            const SizedBox(height: 9,),
            CustomTextFormField(
              label: 'Valor promedio de KG comercializado en pesos / año', 
              keyType: TextInputType.number,
              initalValueData: farmService.promKgComercializateValu5 != '' ? farmService.promKgComercializateValu5 : null,  
              onChanged: (value){
                farmService.promKgComercializateValu5 = value;
              },
            ),

            const SizedBox(height: 9,),
          ],
        ),
      ),
    );
  }
}