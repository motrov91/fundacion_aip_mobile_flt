import 'package:flutter/material.dart';
import 'package:fundacion_aip_mobile/features/createFarm/Utils/data_dropdown.dart';
import 'package:fundacion_aip_mobile/features/shared/infrastructure/inputs/inputs.dart';

class DatosAprendizaje extends StatelessWidget {
  const DatosAprendizaje({super.key});

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
                child: Text('Datos de aprendizaje', style: txtText))),
        
            CustomDropdownField(dropdownItems: DropdownOptionsProvider.buenasPracticas(), labelText: 'Conocimiento linea productiva 1'),
            const SizedBox(height: 9,),
            CustomDropdownField(dropdownItems: DropdownOptionsProvider.buenasPracticas(), labelText: 'Conocimiento linea productiva 2'),
            const SizedBox(height: 9,),
            CustomDropdownField(dropdownItems: DropdownOptionsProvider.buenasPracticas(), labelText: 'Conocimiento linea productiva 3'),
            const SizedBox(height: 9,),
            CustomDropdownField(dropdownItems: DropdownOptionsProvider.buenasPracticas(), labelText: 'Conocimiento linea productiva 4'),
            const SizedBox(height: 9,),
            CustomDropdownField(dropdownItems: DropdownOptionsProvider.buenasPracticas(), labelText: 'Conocimiento linea productiva 5'),
            const SizedBox(height: 9,),
            CustomDropdownField(dropdownItems: DropdownOptionsProvider.getTipoComercializacion(), labelText: 'Tipo de comercialización'),
            const SizedBox(height: 9,),
            CustomDropdownField(dropdownItems: DropdownOptionsProvider.getSiNo(), labelText: 'Producción de biopreparados'),
            const SizedBox(height: 9,),
            CustomDropdownField(dropdownItems: DropdownOptionsProvider.getSiNo(), labelText: 'Disponibilidad de agua'),
            const SizedBox(height: 9,),
            CustomDropdownField(dropdownItems: DropdownOptionsProvider.geViasAccesot(), labelText: 'Disponibilidad de vias de acceso'),
            const SizedBox(height: 9,),
            CustomDropdownField(dropdownItems: DropdownOptionsProvider.getSiNo(), labelText: 'Disponibilidad de electricidad'),
            const SizedBox(height: 9,),
            CustomDropdownField(dropdownItems: DropdownOptionsProvider.getSiNo(), labelText: 'Disponibilidad de redes de comunicación'),
            const SizedBox(height: 9,),
            CustomDropdownField(dropdownItems: DropdownOptionsProvider.getSiNo(), labelText: 'Disponibilidad para participar en proyectos de asistencia técnica'),
            const SizedBox(height: 9,),
            CustomDropdownField(dropdownItems: DropdownOptionsProvider.buenasPracticas(), labelText: 'Variedad de herramientas básicas de uso en el cultivo'),
            const SizedBox(height: 9,),
            CustomDropdownField(dropdownItems: DropdownOptionsProvider.getSiNo(), labelText: 'Tenencia de botiquin de primeros auxilios '),
            const SizedBox(height: 9,),
            CustomDropdownField(dropdownItems: DropdownOptionsProvider.getSiNo(), labelText: 'Tenencia de equipos de fimigación'),
            const SizedBox(height: 9,),
            CustomDropdownField(dropdownItems: DropdownOptionsProvider.getSiNo(), labelText: 'Tenencia de equipos de sistemas de riego'),
            const SizedBox(height: 9,),
            CustomDropdownField(dropdownItems: DropdownOptionsProvider.getSiNo(), labelText: 'Tenencia de maquinaria liviana'),
            const SizedBox(height: 9,),
            CustomDropdownField(dropdownItems: DropdownOptionsProvider.getSiNo(), labelText: 'Interes en participar en proyectos de asistencia tecnica'),
            const SizedBox(height: 9,),
            CustomDropdownField(dropdownItems: DropdownOptionsProvider.getCapital(), labelText: 'Origen del capital de trabajo'),
            const SizedBox(height: 9,),
            CustomDropdownField(dropdownItems: DropdownOptionsProvider.buenasPracticas(), labelText: 'Grado de implementacion de tecnologías de producción'),
            const SizedBox(height: 9,),
          ],
        ),
      ),
    );
  }
}