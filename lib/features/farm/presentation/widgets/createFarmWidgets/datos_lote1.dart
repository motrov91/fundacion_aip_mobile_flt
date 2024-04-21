import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:fundacion_aip_mobile/features/farm/Utils/data_dropdown.dart';
import 'package:fundacion_aip_mobile/features/shared/infrastructure/inputs/inputs.dart';

import '../../providers/create_farm_provider.dart';

class DatosLote1 extends StatelessWidget {
  const DatosLote1({super.key});

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
                    child: Text('Datos lote 1 (Agricola)', style: txtText))),
            
                CustomTextFormField(
                  label: 'Linea productiva',
                  initalValueData: farmService.createNewFarm.productLine1 != '' ? farmService.createNewFarm.productLine1 : null,  
                  onChanged: (value){
                    farmService.createNewFarm.productLine1 = value;
                  },
                ),
                const SizedBox(height: 9,),
                CustomTextFormField(
                  label: 'Variedad',
                  initalValueData: farmService.createNewFarm.variety1 != '' ? farmService.createNewFarm.variety1 : null,  
                  onChanged: (value){
                    farmService.createNewFarm.variety1 = value;
                  },
                ),
                const SizedBox(height: 9,),
                CustomTextFormField(
                  label: 'Cantidad de plantulas', 
                  keyType: TextInputType.number,
                  initalValueData: farmService.createNewFarm.cantPlants1 != '' ? farmService.createNewFarm.cantPlants1 : null,  
                  onChanged: (value){
                    farmService.createNewFarm.cantPlants1 = value;
                  },
                ),
                const SizedBox(height: 9,),
                CustomTextFormField(
                  label: 'Distancia entre plantas (m)', 
                  keyType: TextInputType.number,
                  initalValueData: farmService.createNewFarm.plantsDistance1 != '' ? farmService.createNewFarm.plantsDistance1 : null,  
                  onChanged: (value){
                    farmService.createNewFarm.plantsDistance1 = value;
                  },
                ),
                const SizedBox(height: 9,),
                CustomTextFormField(
                  label: 'Distancia entre surcos (m)', 
                  keyType: TextInputType.number,
                  initalValueData: farmService.createNewFarm.groovesDistance1 != '' ? farmService.createNewFarm.groovesDistance1 : null,  
                  onChanged: (value){
                    farmService.createNewFarm.groovesDistance1 = value;
                  },
                ),
                const SizedBox(height: 9,),
                CustomTextFormField(
                  label: 'Edad del cultivo en años', 
                  keyType: TextInputType.number,
                  initalValueData: farmService.createNewFarm.ageCrop1 != '' ? farmService.createNewFarm.ageCrop1 : null,  
                  onChanged: (value){
                    farmService.createNewFarm.ageCrop1 = value;
                  },
                ),
                const SizedBox(height: 9,),
                CustomDropdownField(
                  dropdownItems: DropdownOptionsProvider.getEtapa(),
                  initialValue: farmService.createNewFarm.stageCrop1 != '' ? farmService.createNewFarm.stageCrop1 : null,
                  onChanged: (value){
                    farmService.createNewFarm.stageCrop1 = value;
                  },
                  labelText: 'Etapa del cultivo'
                ),
                const SizedBox(height: 9,),
                CustomTextFormField(
                  label: 'Cantidad de KG producidos por año', 
                  keyType: TextInputType.number,
                  initalValueData: farmService.createNewFarm.cantKgProducedByYear1 != '' ? farmService.createNewFarm.cantKgProducedByYear1 : null,  
                  onChanged: (value){
                    farmService.createNewFarm.cantKgProducedByYear1 = value;
                  },
                ),
                const SizedBox(height: 9,),
                CustomDropdownField(
                  dropdownItems: DropdownOptionsProvider.getEstadoCultivo(), 
                  labelText: 'Estado general del cultivo',
                  initialValue: farmService.createNewFarm.cropStatus1 != '' ? farmService.createNewFarm.cropStatus1 : null,
                  onChanged: (value){
                    farmService.createNewFarm.cropStatus1 = value;
                  },
                ),
                const SizedBox(height: 9,),
                CustomTextFormField(
                  label: 'Área aproximada (m²)', 
                  keyType: TextInputType.number,
                  initalValueData: farmService.createNewFarm.aproxArea1 != '' ? farmService.createNewFarm.aproxArea1 : null,  
                  onChanged: (value){
                    farmService.createNewFarm.aproxArea1 = value;
                  },
                ),
                const SizedBox(height: 9,),
                CustomTextFormField(
                  label: 'Latitud - Longitud',
                  initalValueData: farmService.createNewFarm.coordenates1 != '' ? farmService.createNewFarm.coordenates1 : null,  
                  onChanged: (value){
                    farmService.createNewFarm.coordenates1 = value;
                  },
                ),
                const SizedBox(height: 9,),
                CustomDropdownField(
                  dropdownItems: DropdownOptionsProvider.getTipoManejo(), 
                  labelText: 'Tipo de manejo',
                  initialValue: farmService.createNewFarm.useType != '' ? farmService.createNewFarm.useType : null,
                  onChanged: (value){
                    farmService.createNewFarm.useType = value;
                  },
                ),
                const SizedBox(height: 9,),
                CustomTextFormField(
                  label: 'Valor promedio de KG comercializado en pesos/año', 
                  keyType: TextInputType.number,
                  initalValueData: farmService.createNewFarm.promKgComercializateValue != '' ? farmService.createNewFarm.promKgComercializateValue : null,  
                  onChanged: (value){
                    farmService.createNewFarm.promKgComercializateValue = value;
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