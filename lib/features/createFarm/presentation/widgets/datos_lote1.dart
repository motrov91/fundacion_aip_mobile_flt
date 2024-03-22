import 'package:flutter/material.dart';
import 'package:fundacion_aip_mobile/features/createFarm/Utils/data_dropdown.dart';
import 'package:fundacion_aip_mobile/features/shared/infrastructure/inputs/inputs.dart';

class DatosLote1 extends StatelessWidget {
  const DatosLote1({super.key});

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
      child: Builder(
        builder: (context) {
          return SingleChildScrollView(
            child: Column(
              children: [
            
                Container(
                  margin: const EdgeInsets.symmetric(vertical: 5),
                  child: Center(
                    child: Text('Datos lote 1 (Agricola)', style: txtText))),
            
                CustomTextFormField(label: 'Linea productiva'),
                const SizedBox(height: 9,),
                CustomTextFormField(label: 'Variedad'),
                const SizedBox(height: 9,),
                CustomTextFormField(label: 'Cantidad de plantulas', keyType: TextInputType.number,),
                const SizedBox(height: 9,),
                CustomTextFormField(label: 'Distancia entre plantas (m)', keyType: TextInputType.number,),
                const SizedBox(height: 9,),
                CustomTextFormField(label: 'Distancia entre surcos (m)', keyType: TextInputType.number,),
                const SizedBox(height: 9,),
                CustomTextFormField(label: 'Edad del cultivo en años', keyType: TextInputType.number,),
                const SizedBox(height: 9,),
                CustomDropdownField(dropdownItems: DropdownOptionsProvider.getEtapa(), labelText: 'Etapa del cultivo'),
                const SizedBox(height: 9,),
                CustomTextFormField(label: 'Cantidad de KG producidos por año', keyType: TextInputType.number,),
                const SizedBox(height: 9,),
                CustomDropdownField(dropdownItems: DropdownOptionsProvider.getEstadoCultivo(), labelText: 'Estado general del cultivo'),
                const SizedBox(height: 9,),
                CustomTextFormField(label: 'Área aproximada (m²)', keyType: TextInputType.number,),
                const SizedBox(height: 9,),
                CustomTextFormField(label: 'Latitud'),
                const SizedBox(height: 9,),
                CustomTextFormField(label: 'Longitud'),
                const SizedBox(height: 9,),
                CustomDropdownField(dropdownItems: DropdownOptionsProvider.getTipoManejo(), labelText: 'Tipo de manejo'),
                const SizedBox(height: 9,),
                CustomTextFormField(label: 'Valor promedio de KG comercializado en pesos/año', keyType: TextInputType.number,),
                const SizedBox(height: 9,),
              ],
            ),
          );
        }
      ),
    );
  }
}