import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:fundacion_aip_mobile/features/farm/Utils/data_dropdown.dart';
import 'package:fundacion_aip_mobile/features/shared/infrastructure/inputs/inputs.dart';
import '../providers/create_farm_provider.dart';

class DatosAprendizaje extends StatelessWidget {
  const DatosAprendizaje({super.key});

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
                child: Text('Datos de aprendizaje', style: txtText))),
        
            CustomDropdownField(
              dropdownItems: DropdownOptionsProvider.buenasPracticas(), 
              labelText: 'Conocimiento linea productiva 1',
              initialValue: farmService.createNewFarm.knowProductiveLine1 != '' ? farmService.createNewFarm.knowProductiveLine1 : null,
              onChanged: (value){
                farmService.createNewFarm.knowProductiveLine1 = value;
              },
            ),
            const SizedBox(height: 9,),
            CustomDropdownField(
              dropdownItems: DropdownOptionsProvider.buenasPracticas(), 
              labelText: 'Conocimiento linea productiva 2',
              initialValue: farmService.createNewFarm.knowProductiveLine2 != '' ? farmService.createNewFarm.knowProductiveLine2 : null,
              onChanged: (value){
                farmService.createNewFarm.knowProductiveLine2 = value;
              },
            ),
            const SizedBox(height: 9,),
            CustomDropdownField(
              dropdownItems: DropdownOptionsProvider.buenasPracticas(), 
              labelText: 'Conocimiento linea productiva 3',
              initialValue: farmService.createNewFarm.knowPeoductiveLine3 != '' ? farmService.createNewFarm.knowPeoductiveLine3 : null,
              onChanged: (value){
                farmService.createNewFarm.knowPeoductiveLine3 = value;
              },
            ),
            const SizedBox(height: 9,),
            CustomDropdownField(
              dropdownItems: DropdownOptionsProvider.buenasPracticas(), 
              labelText: 'Conocimiento linea productiva 4',
              initialValue: farmService.createNewFarm.knowProductiveLine4 != '' ? farmService.createNewFarm.knowProductiveLine4 : null,
              onChanged: (value){
                farmService.createNewFarm.knowProductiveLine4 = value;
              },
            ),
            const SizedBox(height: 9,),
            CustomDropdownField(
              dropdownItems: DropdownOptionsProvider.buenasPracticas(), 
              labelText: 'Conocimiento linea productiva 5',
              initialValue: farmService.createNewFarm.knowProductiveLine5 != '' ? farmService.createNewFarm.knowProductiveLine5 : null,
              onChanged: (value){
                farmService.createNewFarm.knowProductiveLine5 = value;
              },
            ),
            const SizedBox(height: 9,),
            CustomDropdownField(
              dropdownItems: DropdownOptionsProvider.getTipoComercializacion(), 
              labelText: 'Tipo de comercialización',
              initialValue: farmService.createNewFarm.comercializationType != '' ? farmService.createNewFarm.comercializationType : null,
              onChanged: (value){
                farmService.createNewFarm.comercializationType = value;
              },
            ),
            const SizedBox(height: 9,),
            CustomDropdownField(
              dropdownItems: DropdownOptionsProvider.getSiNo(), 
              labelText: 'Producción de biopreparados',
              initialValue: farmService.createNewFarm.biopreparadosProduction != '' ? farmService.createNewFarm.biopreparadosProduction : null,
              onChanged: (value){
                farmService.createNewFarm.biopreparadosProduction = value;
              },
            ),
            const SizedBox(height: 9,),
            CustomDropdownField(
              dropdownItems: DropdownOptionsProvider.getSiNo(), 
              labelText: 'Disponibilidad de agua',
              initialValue: farmService.createNewFarm.waterAvailable != '' ? farmService.createNewFarm.waterAvailable : null,
              onChanged: (value){
                farmService.createNewFarm.waterAvailable = value;
              },
            ),
            const SizedBox(height: 9,),
            CustomDropdownField(
              dropdownItems: DropdownOptionsProvider.geViasAccesot(), 
              labelText: 'Disponibilidad de vias de acceso',
              initialValue: farmService.createNewFarm.accessRoads != '' ? farmService.createNewFarm.accessRoads : null,
              onChanged: (value){
                farmService.createNewFarm.accessRoads = value;
              },
            ),
            const SizedBox(height: 9,),
            CustomDropdownField(
              dropdownItems: DropdownOptionsProvider.getSiNo(), 
              labelText: 'Disponibilidad de electricidad',
              initialValue: farmService.createNewFarm.electricityAvailability != '' ? farmService.createNewFarm.electricityAvailability : null,
              onChanged: (value){
                farmService.createNewFarm.electricityAvailability = value;
              },
            ),
            const SizedBox(height: 9,),
            CustomDropdownField(
              dropdownItems: DropdownOptionsProvider.getSiNo(), 
              labelText: 'Disponibilidad de redes de comunicación',
              initialValue: farmService.createNewFarm.comunicationAvailable != '' ? farmService.createNewFarm.comunicationAvailable : null,
              onChanged: (value){
                farmService.createNewFarm.comunicationAvailable = value;
              },
            ),
            const SizedBox(height: 9,),
            CustomDropdownField(
              dropdownItems: DropdownOptionsProvider.getSiNo(), 
              labelText: 'Disponibilidad para participar en proyectos de asistencia técnica',
              initialValue: farmService.createNewFarm.projectParticipation != '' ? farmService.createNewFarm.projectParticipation : null,
              onChanged: (value){
                farmService.createNewFarm.projectParticipation = value;
              },
            ),
            const SizedBox(height: 9,),
            CustomDropdownField(
              dropdownItems: DropdownOptionsProvider.buenasPracticas(), 
              labelText: 'Variedad de herramientas básicas de uso en el cultivo',
              initialValue: farmService.createNewFarm.cropTools != '' ? farmService.createNewFarm.cropTools : null,
              onChanged: (value){
                farmService.createNewFarm.cropTools = value;
              },
            ),
            const SizedBox(height: 9,),
            CustomDropdownField(
              dropdownItems: DropdownOptionsProvider.getSiNo(), 
              labelText: 'Tenencia de botiquin de primeros auxilios',
              initialValue: farmService.createNewFarm.firstAidKit != '' ? farmService.createNewFarm.firstAidKit : null,
              onChanged: (value){
                farmService.createNewFarm.firstAidKit = value;
              },
            ),
            const SizedBox(height: 9,),
            CustomDropdownField(
              dropdownItems: DropdownOptionsProvider.getSiNo(), 
              labelText: 'Tenencia de equipos de fimigación',
              initialValue: farmService.createNewFarm.fumigateKit != '' ? farmService.createNewFarm.fumigateKit : null,
              onChanged: (value){
                farmService.createNewFarm.fumigateKit = value;
              },
            ),
            const SizedBox(height: 9,),
            CustomDropdownField(
              dropdownItems: DropdownOptionsProvider.getSiNo(), 
              labelText: 'Tenencia de equipos de sistemas de riego',
              initialValue: farmService.createNewFarm.irrigationSystem != '' ? farmService.createNewFarm.irrigationSystem : null,
              onChanged: (value){
                farmService.createNewFarm.irrigationSystem = value;
              },
            ),
            const SizedBox(height: 9,),
            CustomDropdownField(
              dropdownItems: DropdownOptionsProvider.getSiNo(), 
              labelText: 'Tenencia de maquinaria liviana',
              initialValue: farmService.createNewFarm.machines != '' ? farmService.createNewFarm.machines : null,
              onChanged: (value){
                farmService.createNewFarm.machines = value;
              },
            ),
            const SizedBox(height: 9,),
            CustomDropdownField(
              dropdownItems: DropdownOptionsProvider.getSiNo(), 
              labelText: 'Interes en participar en proyectos de asistencia tecnica',
              initialValue: farmService.createNewFarm.participateInProyects != '' ? farmService.createNewFarm.participateInProyects : null,
              onChanged: (value){
                farmService.createNewFarm.participateInProyects = value;
              },
            ),
            const SizedBox(height: 9,),
            CustomDropdownField(
              dropdownItems: DropdownOptionsProvider.getCapital(), 
              labelText: 'Origen del capital de trabajo',
              initialValue: farmService.createNewFarm.workingCapital != '' ? farmService.createNewFarm.workingCapital : null,
              onChanged: (value){
                farmService.createNewFarm.workingCapital = value;
              },
            ),
            const SizedBox(height: 9,),
            CustomDropdownField(
              dropdownItems: DropdownOptionsProvider.buenasPracticas(), 
              labelText: 'Grado de implementacion de tecnologías de producción',
              initialValue: farmService.createNewFarm.implementationTecnologyLevel != '' ? farmService.createNewFarm.implementationTecnologyLevel : null,
              onChanged: (value){
                farmService.createNewFarm.implementationTecnologyLevel = value;
              },
            ),
            const SizedBox(height: 9,),
          ],
        ),
      ),
    );
  }
}