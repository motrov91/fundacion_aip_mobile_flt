import 'package:flutter/material.dart';
import 'package:fundacion_aip_mobile/features/farm/Utils/data_dropdown.dart';
import 'package:fundacion_aip_mobile/features/shared/infrastructure/inputs/inputs.dart';
import 'package:provider/provider.dart';

import '../providers/create_farm_provider.dart';

class DatosLote3 extends StatelessWidget {
  const DatosLote3({super.key});

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
                    child: Text('Datos lote 3 (Agricola)', style: txtText))),
            
                CustomTextFormField(
                  label: 'Linea productiva',
                  initalValueData: farmService.createNewFarm.productLine3 != '' ? farmService.createNewFarm.productLine3 : null,  
                  onChanged: (value){
                    farmService.createNewFarm.productLine3 = value;
                  },
                ),
                const SizedBox(height: 9,),
                CustomTextFormField(
                  label: 'Variedad',
                  initalValueData: farmService.createNewFarm.variety3 != '' ? farmService.createNewFarm.variety3 : null,  
                  onChanged: (value){
                    farmService.createNewFarm.variety3 = value;
                  },
                ),
                const SizedBox(height: 9,),
                CustomTextFormField(
                  label: 'Cantidad de plantulas', 
                  keyType: TextInputType.number,
                  initalValueData: farmService.createNewFarm.cantPlants3 != '' ? farmService.createNewFarm.cantPlants3 : null,  
                  onChanged: (value){
                    farmService.createNewFarm.cantPlants3 = value;
                  },
                ),
                const SizedBox(height: 9,),
                CustomTextFormField(
                  label: 'Distancia entre plantas (m)', 
                  keyType: TextInputType.number,
                  initalValueData: farmService.createNewFarm.plantsDistance3 != '' ? farmService.createNewFarm.plantsDistance3 : null,  
                  onChanged: (value){
                    farmService.createNewFarm.plantsDistance3 = value;
                  },
                ),
                const SizedBox(height: 9,),
                CustomTextFormField(
                  label: 'Distancia entre surcos (m)', 
                  keyType: TextInputType.number,
                  initalValueData: farmService.createNewFarm.groovesDistance3 != '' ? farmService.createNewFarm.groovesDistance3 : null,  
                  onChanged: (value){
                    farmService.createNewFarm.groovesDistance3 = value;
                  },
                ),
                const SizedBox(height: 9,),
                CustomTextFormField(
                  label: 'Edad del cultivo en años', 
                  keyType: TextInputType.number,
                  initalValueData: farmService.createNewFarm.ageCrop3 != '' ? farmService.createNewFarm.ageCrop3 : null,  
                  onChanged: (value){
                    farmService.createNewFarm.ageCrop3 = value;
                  },
                ),
                const SizedBox(height: 9,),
                CustomDropdownField(
                  dropdownItems: DropdownOptionsProvider.getEtapa(), 
                  labelText: 'Etapa del cultivo',
                  initialValue: farmService.createNewFarm.stageCrop3 != '' ? farmService.createNewFarm.stageCrop3 : null,
                  onChanged: (value){
                    farmService.createNewFarm.stageCrop3 = value;
                  },
                ),
                const SizedBox(height: 9,),
                CustomTextFormField(
                  label: 'Cantidad de KG producidos por año', 
                  keyType: TextInputType.number,
                  initalValueData: farmService.createNewFarm.cantKgProducedByYear3 != '' ? farmService.createNewFarm.cantKgProducedByYear3 : null,  
                  onChanged: (value){
                    farmService.createNewFarm.cantKgProducedByYear3 = value;
                  },
                ),
                const SizedBox(height: 9,),
                CustomDropdownField(
                  dropdownItems: DropdownOptionsProvider.getEstadoCultivo(), 
                  labelText: 'Estado general del cultivo',
                  initialValue: farmService.createNewFarm.cropStatus3 != '' ? farmService.createNewFarm.cropStatus3 : null,
                  onChanged: (value){
                    farmService.createNewFarm.cropStatus3 = value;
                  },
                ),
                const SizedBox(height: 9,),
                CustomTextFormField(
                  label: 'Área aproximada (m²)', 
                  keyType: TextInputType.number,
                  initalValueData: farmService.createNewFarm.aproxArea3 != '' ? farmService.createNewFarm.aproxArea3 : null,  
                  onChanged: (value){
                    farmService.createNewFarm.aproxArea3 = value;
                  },
                ),
                const SizedBox(height: 9,),
                CustomTextFormField(
                  label: 'Latitud - Longitud',
                  initalValueData: farmService.createNewFarm.coordenates3 != '' ? farmService.createNewFarm.coordenates3 : null,  
                  onChanged: (value){
                    farmService.createNewFarm.coordenates3 = value;
                  },
                ),
                const SizedBox(height: 9,),
                CustomDropdownField(
                  dropdownItems: DropdownOptionsProvider.getTipoManejo(), 
                  labelText: 'Tipo de manejo',
                  initialValue: farmService.createNewFarm.useType3 != '' ? farmService.createNewFarm.useType3 : null,
                  onChanged: (value){
                    farmService.createNewFarm.useType3 = value;
                  },
                ),
                const SizedBox(height: 9,),
                CustomTextFormField(
                  label: 'Valor promedio de KG comercializado en pesos/año', 
                  keyType: TextInputType.number,
                  initalValueData: farmService.createNewFarm.promKgComercializateValu3 != '' ? farmService.createNewFarm.promKgComercializateValu3 : null,  
                  onChanged: (value){
                    farmService.createNewFarm.promKgComercializateValu3 = value;
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