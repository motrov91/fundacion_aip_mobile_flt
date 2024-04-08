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
              initalValueData: farmService.createNewFarm.productLine5Pecuaria != '' ? farmService.createNewFarm.productLine5Pecuaria : null,  
              onChanged: (value){
                farmService.createNewFarm.productLine5Pecuaria = value;
              },
            ),
            const SizedBox(height: 9,),
            CustomTextFormField(
              label: 'Edad promedio de los animales', 
              keyType: TextInputType.number,
              initalValueData: farmService.createNewFarm.ageAverageAnimals5 != '' ? farmService.createNewFarm.ageAverageAnimals5 : null,  
              onChanged: (value){
                farmService.createNewFarm.ageAverageAnimals5 = value;
              },
            ),
            const SizedBox(height: 9,),
            CustomTextFormField(
              label: 'Área aproximada usada por los animales (m²)', 
              keyType: TextInputType.number,
              initalValueData: farmService.createNewFarm.aproxArea5 != '' ? farmService.createNewFarm.aproxArea5 : null,  
              onChanged: (value){
                farmService.createNewFarm.aproxArea5 = value;
              },
            ),
            const SizedBox(height: 9,),
            CustomTextFormField(
              label: 'Raza',
              initalValueData: farmService.createNewFarm.breed5 != '' ? farmService.createNewFarm.breed5 : null,  
              onChanged: (value){
                farmService.createNewFarm.breed5 = value;
              },
            ),
            const SizedBox(height: 9,),
            CustomTextFormField(
              label: 'Tipo',
              initalValueData: farmService.createNewFarm.typeofanimal5 != '' ? farmService.createNewFarm.typeofanimal5 : null,  
              onChanged: (value){
                farmService.createNewFarm.typeofanimal5 = value;
              },
            ),
            const SizedBox(height: 9,),
            CustomTextFormField(
              label: 'Etapa productiva',
              initalValueData: farmService.createNewFarm.cropStatus5 != '' ? farmService.createNewFarm.cropStatus5 : null,  
              onChanged: (value){
                farmService.createNewFarm.cropStatus5 = value;
              },
            ),
            const SizedBox(height: 9,),
            CustomTextFormField(
              label: 'Latitud - Longitud',
              initalValueData: farmService.createNewFarm.coordenates5 != '' ? farmService.createNewFarm.coordenates5 : null,  
              onChanged: (value){
                farmService.createNewFarm.coordenates5 = value;
              },
            ),
            const SizedBox(height: 9,),
            CustomTextFormField(
              label: 'Cantidad de animales', 
              keyType: TextInputType.number,
              initalValueData: farmService.createNewFarm.cantAnimals5 != '' ? farmService.createNewFarm.cantAnimals5 : null,  
              onChanged: (value){
                farmService.createNewFarm.cantAnimals5 = value;
              },
            ),
            const SizedBox(height: 9,),
            CustomTextFormField(
              label: 'Cantidad de litros producidos por año', 
              keyType: TextInputType.number,
              initalValueData: farmService.createNewFarm.cantKgProducedByYear5 != '' ? farmService.createNewFarm.cantKgProducedByYear5 : null,  
              onChanged: (value){
                farmService.createNewFarm.cantKgProducedByYear5 = value;
              },
            ),
            const SizedBox(height: 9,),
            CustomTextFormField(
              label: 'Cantidad de KG producidos por año', 
              keyType: TextInputType.number,
              initalValueData: farmService.createNewFarm.cantKgByYearLote5 != '' ? farmService.createNewFarm.cantKgByYearLote5 : null,  
              onChanged: (value){
                farmService.createNewFarm.cantKgByYearLote5 = value;
              },
            ),
            const SizedBox(height: 9,),
            CustomTextFormField(
              label: 'Valor de KG comercializado en pesos / año', 
              keyType: TextInputType.number,
              initalValueData: farmService.createNewFarm.priceKgSoldLote5 != '' ? farmService.createNewFarm.priceKgSoldLote5 : null,  
              onChanged: (value){
                farmService.createNewFarm.priceKgSoldLote5 = value;
              },
            ),
            const SizedBox(height: 9,),
            CustomTextFormField(
              label: 'Tipo de alimentación',
              initalValueData: farmService.createNewFarm.nutritionType5 != '' ? farmService.createNewFarm.nutritionType5 : null,  
              onChanged: (value){
                farmService.createNewFarm.nutritionType5 = value;
              },
            ),
            const SizedBox(height: 9,),
            CustomTextFormField(
              label: 'Número de lotes o espacios usados para la actividad', 
              keyType: TextInputType.number,
              initalValueData: farmService.createNewFarm.numberPlaces5 != '' ? farmService.createNewFarm.numberPlaces5 : null,  
              onChanged: (value){
                farmService.createNewFarm.numberPlaces5 = value;
              },
            ),
            const SizedBox(height: 9,),
            CustomTextFormField(
              label: 'Estado general de los animales',
              initalValueData: farmService.createNewFarm.cropStatus5 != '' ? farmService.createNewFarm.cropStatus5 : null,  
              onChanged: (value){
                farmService.createNewFarm.cropStatus5 = value;
              },
            ),
            const SizedBox(height: 9,),
            CustomTextFormField(
              label: 'Valor promedio de KG comercializado en pesos / año', 
              keyType: TextInputType.number,
              initalValueData: farmService.createNewFarm.promKgComercializateValu5 != '' ? farmService.createNewFarm.promKgComercializateValu5 : null,  
              onChanged: (value){
                farmService.createNewFarm.promKgComercializateValu5 = value;
              },
            ),

            const SizedBox(height: 9,),
          ],
        ),
      ),
    );
  }
}