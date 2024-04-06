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
                  initalValueData: farmService.productLine2 != '' ? farmService.productLine2 : null,  
                  onChanged: (value){
                    farmService.productLine2 = value;
                  },
                ),
                const SizedBox(height: 9,),
                CustomTextFormField(
                  label: 'Variedad',
                  initalValueData: farmService.variety2 != '' ? farmService.variety2 : null,  
                  onChanged: (value){
                    farmService.variety2 = value;
                  },
                ),
                const SizedBox(height: 9,),
                CustomTextFormField(
                  label: 'Cantidad de plantulas', 
                  keyType: TextInputType.number,
                  initalValueData: farmService.cantPlants2 != '' ? farmService.cantPlants2 : null,  
                  onChanged: (value){
                    farmService.cantPlants2 = value;
                  },
                ),
                const SizedBox(height: 9,),
                CustomTextFormField(
                  label: 'Distancia entre plantas (m)', 
                  keyType: TextInputType.number,
                  initalValueData: farmService.plantsDistance2 != '' ? farmService.plantsDistance2 : null,  
                  onChanged: (value){
                    farmService.plantsDistance2 = value;
                  },
                ),
                const SizedBox(height: 9,),
                CustomTextFormField(
                  label: 'Distancia entre surcos (m)', 
                  keyType: TextInputType.number,
                  initalValueData: farmService.groovesDistance2 != '' ? farmService.groovesDistance2 : null,  
                  onChanged: (value){
                    farmService.groovesDistance2 = value;
                  },
                ),
                const SizedBox(height: 9,),
                CustomTextFormField(
                  label: 'Edad del cultivo en años', 
                  keyType: TextInputType.number,
                  initalValueData: farmService.ageCrop2 != '' ? farmService.ageCrop2 : null,  
                  onChanged: (value){
                    farmService.ageCrop2 = value;
                  },
                ),
                const SizedBox(height: 9,),
                CustomDropdownField(
                  dropdownItems: DropdownOptionsProvider.getEtapa(), 
                  labelText: 'Etapa del cultivo',
                  initialValue: farmService.stageCrop2 != '' ? farmService.stageCrop2 : null,
                  onChanged: (value){
                    farmService.stageCrop2 = value;
                  },
                ),
                const SizedBox(height: 9,),
                CustomTextFormField(
                  label: 'Cantidad de KG producidos por año', 
                  keyType: TextInputType.number,
                  initalValueData: farmService.cantKgProducedByYear2 != '' ? farmService.cantKgProducedByYear2 : null,  
                  onChanged: (value){
                    farmService.cantKgProducedByYear2 = value;
                  },
                ),
                const SizedBox(height: 9,),
                CustomDropdownField(
                  dropdownItems: DropdownOptionsProvider.getEstadoCultivo(), 
                  labelText: 'Estado general del cultivo',
                  initialValue: farmService.cropStatus2 != '' ? farmService.cropStatus2 : null,
                  onChanged: (value){
                    farmService.cropStatus2 = value;
                  },
                ),
                const SizedBox(height: 9,),
                CustomTextFormField(
                  label: 'Área aproximada (m²)', 
                  keyType: TextInputType.number,
                  initalValueData: farmService.aproxArea2 != '' ? farmService.aproxArea2 : null,  
                  onChanged: (value){
                    farmService.aproxArea2 = value;
                  },
                ),
                const SizedBox(height: 9,),
                CustomTextFormField(
                  label: 'Latitud - Longitud',
                  initalValueData: farmService.coordenates2 != '' ? farmService.coordenates2 : null,  
                  onChanged: (value){
                    farmService.coordenates2 = value;
                  },
                ),
                const SizedBox(height: 9,),
                CustomDropdownField(
                  dropdownItems: DropdownOptionsProvider.getTipoManejo(), 
                  labelText: 'Tipo de manejo',
                  initialValue: farmService.useType2 != '' ? farmService.useType2 : null,
                  onChanged: (value){
                    farmService.useType2 = value;
                  },
                ),
                const SizedBox(height: 9,),
                CustomTextFormField(
                  label: 'Valor promedio de KG comercializado en pesos/año', 
                  keyType: TextInputType.number,
                  initalValueData: farmService.promKgComercializateValu2 != '' ? farmService.promKgComercializateValu2 : null,  
                  onChanged: (value){
                    farmService.promKgComercializateValu2 = value;
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