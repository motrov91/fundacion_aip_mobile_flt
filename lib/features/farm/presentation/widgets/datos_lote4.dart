import 'package:flutter/material.dart';
import 'package:fundacion_aip_mobile/features/shared/infrastructure/inputs/inputs.dart';
import 'package:provider/provider.dart';

import '../providers/create_farm_provider.dart';

class DatosLote4 extends StatelessWidget {
  const DatosLote4({super.key});

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
                child: Text('Datos lote 4 (Pecuario)', style: txtText))),

            CustomTextFormField(
              label: 'Linea productiva pecuaria',
              initalValueData: farmService.productLine4Pecuaria != '' ? farmService.productLine4Pecuaria : null,  
              onChanged: (value){
                farmService.productLine4Pecuaria = value;
              },
            ),
            const SizedBox(height: 9,),
            CustomTextFormField(
              label: 'Edad promedio de los animales', 
              keyType: TextInputType.number,
              initalValueData: farmService.ageAverageAnimals != '' ? farmService.ageAverageAnimals : null,  
              onChanged: (value){
                farmService.ageAverageAnimals = value;
              },
            ),
            const SizedBox(height: 9,),
            CustomTextFormField(
              label: 'Área aproximada usada por los animales', 
              keyType: TextInputType.number,
              initalValueData: farmService.aproxArea4 != '' ? farmService.aproxArea4 : null,  
              onChanged: (value){
                farmService.aproxArea4 = value;
              },
            ),
            const SizedBox(height: 9,),
            CustomTextFormField(
              label: 'Raza',
              initalValueData: farmService.breed != '' ? farmService.breed : null,  
              onChanged: (value){
                farmService.breed = value;
              },
            ),
            const SizedBox(height: 9,),
            CustomTextFormField(
              label: 'Tipo',
              initalValueData: farmService.typeofanimal != '' ? farmService.typeofanimal : null,  
              onChanged: (value){
                farmService.typeofanimal = value;
              },
            ),
            const SizedBox(height: 9,),
            CustomTextFormField(
              label: 'Etapa productiva',
              initalValueData: farmService.cropStatus4 != '' ? farmService.cropStatus4 : null,  
              onChanged: (value){
                farmService.cropStatus4 = value;
              },
            ),
            const SizedBox(height: 9,),
            CustomTextFormField(
              label: 'Latitud - Longitud',
              initalValueData: farmService.coordenates4 != '' ? farmService.coordenates4 : null,  
              onChanged: (value){
                farmService.coordenates4 = value;
              },
            ),
            const SizedBox(height: 9,),
            CustomTextFormField(
              label: 'Cantidad de animales', 
              keyType: TextInputType.number,
              initalValueData: farmService.cantAnimals != '' ? farmService.cantAnimals : null,  
              onChanged: (value){
                farmService.cantAnimals = value;
              },
            ),
            const SizedBox(height: 9,),
            CustomTextFormField(
              label: 'Cantidad de litros producidos por año', 
              keyType: TextInputType.number,
              initalValueData: farmService.cantKgProducedByYear4 != '' ? farmService.cantKgProducedByYear4 : null,  
              onChanged: (value){
                farmService.cantKgProducedByYear4 = value;
              },
            ),
            const SizedBox(height: 9,),
            CustomTextFormField(
              label: 'Cantidad de KG producidos por año', 
              keyType: TextInputType.number,
              initalValueData: farmService.cantKgByYearLote4 != '' ? farmService.cantKgByYearLote4 : null,  
              onChanged: (value){
                farmService.cantKgByYearLote4 = value;
              },
            ),
            const SizedBox(height: 9,),
            CustomTextFormField(
              label: 'Valor de KG comercializado en pesos / año', 
              keyType: TextInputType.number,
              initalValueData: farmService.promKgComercializateValu4 != '' ? farmService.promKgComercializateValu4 : null,  
              onChanged: (value){
                farmService.promKgComercializateValu4 = value;
              },
            ),
            const SizedBox(height: 9,),
            CustomTextFormField(
              label: 'Tipo de alimentación',
              initalValueData: farmService.nutritionType != '' ? farmService.nutritionType : null,  
              onChanged: (value){
                farmService.nutritionType = value;
              },
            ),
            const SizedBox(height: 9,),
            CustomTextFormField(
              label: 'Número de lotes o espacios usados para la actividad', 
              keyType: TextInputType.number,
              initalValueData: farmService.numberPlaces != '' ? farmService.numberPlaces : null,  
              onChanged: (value){
                farmService.numberPlaces = value;
              },
            ),
            const SizedBox(height: 9,),
            CustomTextFormField(
              label: 'Estado general de los animales',
              initalValueData: farmService.cropStatus4 != '' ? farmService.cropStatus4 : null,  
              onChanged: (value){
                farmService.cropStatus4 = value;
              },
            ),
            const SizedBox(height: 9,),
            CustomTextFormField(
              label: 'Valor promedio de KG comercializado en pesos / año', 
              keyType: TextInputType.number,
              initalValueData: farmService.priceKgSoldLote4 != '' ? farmService.priceKgSoldLote4 : null,  
              onChanged: (value){
                farmService.priceKgSoldLote4 = value;
              },
            ),
            const SizedBox(height: 9,),
          ],
        ),
      ),
    );
  }
}