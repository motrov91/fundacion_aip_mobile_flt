import 'package:flutter/material.dart';
import 'package:fundacion_aip_mobile/features/shared/infrastructure/inputs/inputs.dart';
import 'package:provider/provider.dart';

import '../../providers/create_farm_provider.dart';

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
              initalValueData: farmService.createNewFarm.productLine4Pecuaria != '' ? farmService.createNewFarm.productLine4Pecuaria : null,  
              onChanged: (value){
                farmService.createNewFarm.productLine4Pecuaria = value;
              },
            ),
            const SizedBox(height: 9,),
            CustomTextFormField(
              label: 'Edad promedio de los animales', 
              keyType: TextInputType.number,
              initalValueData: farmService.createNewFarm.ageAverageAnimals != '' ? farmService.createNewFarm.ageAverageAnimals : null,  
              onChanged: (value){
                farmService.createNewFarm.ageAverageAnimals = value;
              },
            ),
            const SizedBox(height: 9,),
            CustomTextFormField(
              label: 'Área aproximada usada por los animales (m²)', 
              keyType: TextInputType.number,
              initalValueData: farmService.createNewFarm.aproxArea4 != '' ? farmService.createNewFarm.aproxArea4 : null,  
              onChanged: (value){
                farmService.createNewFarm.aproxArea4 = value;
              },
            ),
            const SizedBox(height: 9,),
            CustomTextFormField(
              label: 'Raza',
              initalValueData: farmService.createNewFarm.breed != '' ? farmService.createNewFarm.breed : null,  
              onChanged: (value){
                farmService.createNewFarm.breed = value;
              },
            ),
            const SizedBox(height: 9,),
            CustomTextFormField(
              label: 'Tipo',
              initalValueData: farmService.createNewFarm.typeofanimal != '' ? farmService.createNewFarm.typeofanimal : null,  
              onChanged: (value){
                farmService.createNewFarm.typeofanimal = value;
              },
            ),
            const SizedBox(height: 9,),
            CustomTextFormField(
              label: 'Etapa productiva',
              initalValueData: farmService.createNewFarm.cropStatus4 != '' ? farmService.createNewFarm.cropStatus4 : null,  
              onChanged: (value){
                farmService.createNewFarm.cropStatus4 = value;
              },
            ),
            const SizedBox(height: 9,),
            CustomTextFormField(
              label: 'Latitud - Longitud',
              initalValueData: farmService.createNewFarm.coordenates4 != '' ? farmService.createNewFarm.coordenates4 : null,  
              onChanged: (value){
                farmService.createNewFarm.coordenates4 = value;
              },
            ),
            const SizedBox(height: 9,),
            CustomTextFormField(
              label: 'Cantidad de animales', 
              keyType: TextInputType.number,
              initalValueData: farmService.createNewFarm.cantAnimals != '' ? farmService.createNewFarm.cantAnimals : null,  
              onChanged: (value){
                farmService.createNewFarm.cantAnimals = value;
              },
            ),
            const SizedBox(height: 9,),
            CustomTextFormField(
              label: 'Cantidad de litros producidos por año', 
              keyType: TextInputType.number,
              initalValueData: farmService.createNewFarm.cantKgProducedByYear4 != '' ? farmService.createNewFarm.cantKgProducedByYear4 : null,  
              onChanged: (value){
                farmService.createNewFarm.cantKgProducedByYear4 = value;
              },
            ),
            const SizedBox(height: 9,),
            CustomTextFormField(
              label: 'Cantidad de KG producidos por año', 
              keyType: TextInputType.number,
              initalValueData: farmService.createNewFarm.cantKgByYearLote4 != '' ? farmService.createNewFarm.cantKgByYearLote4 : null,  
              onChanged: (value){
                farmService.createNewFarm.cantKgByYearLote4 = value;
              },
            ),
            const SizedBox(height: 9,),
            CustomTextFormField(
              label: 'Valor de KG comercializado en pesos / año', 
              keyType: TextInputType.number,
              initalValueData: farmService.createNewFarm.promKgComercializateValu4 != '' ? farmService.createNewFarm.promKgComercializateValu4 : null,  
              onChanged: (value){
                farmService.createNewFarm.promKgComercializateValu4 = value;
              },
            ),
            const SizedBox(height: 9,),
            CustomTextFormField(
              label: 'Tipo de alimentación',
              initalValueData: farmService.createNewFarm.nutritionType != '' ? farmService.createNewFarm.nutritionType : null,  
              onChanged: (value){
                farmService.createNewFarm.nutritionType = value;
              },
            ),
            const SizedBox(height: 9,),
            CustomTextFormField(
              label: 'Número de lotes o espacios usados para la actividad', 
              keyType: TextInputType.number,
              initalValueData: farmService.createNewFarm.numberPlaces != '' ? farmService.createNewFarm.numberPlaces : null,  
              onChanged: (value){
                farmService.createNewFarm.numberPlaces = value;
              },
            ),
            const SizedBox(height: 9,),
            CustomTextFormField(
              label: 'Estado general de los animales',
              initalValueData: farmService.createNewFarm.cropStatus4 != '' ? farmService.createNewFarm.cropStatus4 : null,  
              onChanged: (value){
                farmService.createNewFarm.cropStatus4 = value;
              },
            ),
            const SizedBox(height: 9,),
            CustomTextFormField(
              label: 'Valor promedio de KG comercializado en pesos / año', 
              keyType: TextInputType.number,
              initalValueData: farmService.createNewFarm.priceKgSoldLote4 != '' ? farmService.createNewFarm.priceKgSoldLote4 : null,  
              onChanged: (value){
                farmService.createNewFarm.priceKgSoldLote4 = value;
              },
            ),
            const SizedBox(height: 9,),
          ],
        ),
      ),
    );
  }
}