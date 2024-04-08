import 'package:flutter/material.dart';
import 'package:fundacion_aip_mobile/features/farm/Utils/data_dropdown.dart';
import 'package:fundacion_aip_mobile/features/shared/infrastructure/inputs/inputs.dart';
import 'package:provider/provider.dart';

import '../providers/create_farm_provider.dart';

class DatosLote2 extends StatelessWidget {
  const DatosLote2({super.key});

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
      child: Builder(
        builder: (context) {
          return SingleChildScrollView(
            child: Column(
              children: [
            
                Container(
                  margin: const EdgeInsets.symmetric(vertical: 5),
                  child: Center(
                    child: Text('Datos lote 2 (Agricola)', style: txtText))),
            
                CustomTextFormField(
                  label: 'Linea productiva',
                  initalValueData: farmService.createNewFarm.productLine2 != '' ? farmService.createNewFarm.productLine2 : null,  
                  onChanged: (value){
                    farmService.createNewFarm.productLine2 = value;
                  },
                ),
                const SizedBox(height: 9,),
                CustomTextFormField(
                  label: 'Variedad',
                  initalValueData: farmService.createNewFarm.variety2 != '' ? farmService.createNewFarm.variety2 : null,  
                  onChanged: (value){
                    farmService.createNewFarm.variety2 = value;
                  },
                ),
                const SizedBox(height: 9,),
                CustomTextFormField(
                  label: 'Cantidad de plantulas', 
                  keyType: TextInputType.number,
                  initalValueData: farmService.createNewFarm.cantPlants2 != '' ? farmService.createNewFarm.cantPlants2 : null,  
                  onChanged: (value){
                    farmService.createNewFarm.cantPlants2 = value;
                  },
                ),
                const SizedBox(height: 9,),
                CustomTextFormField(
                  label: 'Distancia entre plantas (m)', 
                  keyType: TextInputType.number,
                  initalValueData: farmService.createNewFarm.plantsDistance2 != '' ? farmService.createNewFarm.plantsDistance2 : null,  
                  onChanged: (value){
                    farmService.createNewFarm.plantsDistance2 = value;
                  },
                ),
                const SizedBox(height: 9,),
                CustomTextFormField(
                  label: 'Distancia entre surcos (m)', 
                  keyType: TextInputType.number,
                  initalValueData: farmService.createNewFarm.groovesDistance2 != '' ? farmService.createNewFarm.groovesDistance2 : null,  
                  onChanged: (value){
                    farmService.createNewFarm.groovesDistance2 = value;
                  },
                ),
                const SizedBox(height: 9,),
                CustomTextFormField(
                  label: 'Edad del cultivo en años', 
                  keyType: TextInputType.number,
                  initalValueData: farmService.createNewFarm.ageCrop2 != '' ? farmService.createNewFarm.ageCrop2 : null,  
                  onChanged: (value){
                    farmService.createNewFarm.ageCrop2 = value;
                  },
                ),
                const SizedBox(height: 9,),
                CustomDropdownField(
                  dropdownItems: DropdownOptionsProvider.getEtapa(), 
                  labelText: 'Etapa del cultivo',
                  initialValue: farmService.createNewFarm.stageCrop2 != '' ? farmService.createNewFarm.stageCrop2 : null,
                  onChanged: (value){
                    farmService.createNewFarm.stageCrop2 = value;
                  },
                ),
                const SizedBox(height: 9,),
                CustomTextFormField(
                  label: 'Cantidad de KG producidos por año', 
                  keyType: TextInputType.number,
                  initalValueData: farmService.createNewFarm.cantKgProducedByYear2 != '' ? farmService.createNewFarm.cantKgProducedByYear2 : null,  
                  onChanged: (value){
                    farmService.createNewFarm.cantKgProducedByYear2 = value;
                  },
                ),
                const SizedBox(height: 9,),
                CustomDropdownField(
                  dropdownItems: DropdownOptionsProvider.getEstadoCultivo(), 
                  labelText: 'Estado general del cultivo',
                  initialValue: farmService.createNewFarm.cropStatus2 != '' ? farmService.createNewFarm.cropStatus2 : null,
                  onChanged: (value){
                    farmService.createNewFarm.cropStatus2 = value;
                  },
                ),
                const SizedBox(height: 9,),
                CustomTextFormField(
                  label: 'Área aproximada (m²)', 
                  keyType: TextInputType.number,
                  initalValueData: farmService.createNewFarm.aproxArea2 != '' ? farmService.createNewFarm.aproxArea2 : null,  
                  onChanged: (value){
                    farmService.createNewFarm.aproxArea2 = value;
                  },
                ),
                const SizedBox(height: 9,),
                CustomTextFormField(
                  label: 'Latitud - Longitud',
                  initalValueData: farmService.createNewFarm.coordenates2 != '' ? farmService.createNewFarm.coordenates2 : null,  
                  onChanged: (value){
                    farmService.createNewFarm.coordenates2 = value;
                  },
                ),
                const SizedBox(height: 9,),
                CustomDropdownField(
                  dropdownItems: DropdownOptionsProvider.getTipoManejo(), 
                  labelText: 'Tipo de manejo',
                  initialValue: farmService.createNewFarm.useType2 != '' ? farmService.createNewFarm.useType2 : null,
                  onChanged: (value){
                    farmService.createNewFarm.useType2 = value;
                  },
                ),
                const SizedBox(height: 9,),
                CustomTextFormField(
                  label: 'Valor promedio de KG comercializado en pesos/año', 
                  keyType: TextInputType.number,
                  initalValueData: farmService.createNewFarm.promKgComercializateValu2 != '' ? farmService.createNewFarm.promKgComercializateValu2 : null,  
                  onChanged: (value){
                    farmService.createNewFarm.promKgComercializateValu2 = value;
                  },
                ),
                const SizedBox(height: 9,),
              ],
            ),
          );
        }
      ),
    );
  }
}