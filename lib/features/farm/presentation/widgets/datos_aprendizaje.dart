// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';

// import 'package:fundacion_aip_mobile/features/farm/Utils/data_dropdown.dart';
// import 'package:fundacion_aip_mobile/features/shared/infrastructure/inputs/inputs.dart';
// import '../providers/create_farm_provider.dart';

// class DatosAprendizaje extends StatelessWidget {
//   const DatosAprendizaje({super.key});

//   @override
//   Widget build(BuildContext context) {

//     final txtText = Theme.of(context).textTheme.bodyMedium!.copyWith(
//       fontWeight: FontWeight.w500,
//       color: Theme.of(context).colorScheme.primary
//     );

//     final farmService = Provider.of<CreateFarmProvider>(context);

//     return Container(
//       margin: const EdgeInsets.all(5),
//       width: double.infinity,
//       height: double.infinity,
//       child: SingleChildScrollView(
//         child: Column(
//           children: [
        
//             Container(
//               margin: const EdgeInsets.symmetric(vertical: 5),
//               child: Center(
//                 child: Text('Datos de aprendizaje', style: txtText))),
        
//             CustomDropdownField(
//               dropdownItems: DropdownOptionsProvider.buenasPracticas(), 
//               labelText: 'Conocimiento linea productiva 1',
//               initialValue: farmService.knowProductiveLine1 != '' ? farmService.knowProductiveLine1 : null,
//               onChanged: (value){
//                 farmService.knowProductiveLine1 = value;
//               },
//             ),
//             const SizedBox(height: 9,),
//             CustomDropdownField(
//               dropdownItems: DropdownOptionsProvider.buenasPracticas(), 
//               labelText: 'Conocimiento linea productiva 2',
//               initialValue: farmService.knowProductiveLine2 != '' ? farmService.knowProductiveLine2 : null,
//               onChanged: (value){
//                 farmService.knowProductiveLine2 = value;
//               },
//             ),
//             const SizedBox(height: 9,),
//             CustomDropdownField(
//               dropdownItems: DropdownOptionsProvider.buenasPracticas(), 
//               labelText: 'Conocimiento linea productiva 3',
//               initialValue: farmService.knowPeoductiveLine3 != '' ? farmService.knowPeoductiveLine3 : null,
//               onChanged: (value){
//                 farmService.knowPeoductiveLine3 = value;
//               },
//             ),
//             const SizedBox(height: 9,),
//             CustomDropdownField(
//               dropdownItems: DropdownOptionsProvider.buenasPracticas(), 
//               labelText: 'Conocimiento linea productiva 4',
//               initialValue: farmService.knowProductiveLine4 != '' ? farmService.knowProductiveLine4 : null,
//               onChanged: (value){
//                 farmService.knowProductiveLine4 = value;
//               },
//             ),
//             const SizedBox(height: 9,),
//             CustomDropdownField(
//               dropdownItems: DropdownOptionsProvider.buenasPracticas(), 
//               labelText: 'Conocimiento linea productiva 5',
//               initialValue: farmService.knowProductiveLine5 != '' ? farmService.knowProductiveLine5 : null,
//               onChanged: (value){
//                 farmService.knowProductiveLine5 = value;
//               },
//             ),
//             const SizedBox(height: 9,),
//             CustomDropdownField(
//               dropdownItems: DropdownOptionsProvider.getTipoComercializacion(), 
//               labelText: 'Tipo de comercialización',
//               initialValue: farmService.comercializationType != '' ? farmService.comercializationType : null,
//               onChanged: (value){
//                 farmService.comercializationType = value;
//               },
//             ),
//             const SizedBox(height: 9,),
//             CustomDropdownField(
//               dropdownItems: DropdownOptionsProvider.getSiNo(), 
//               labelText: 'Producción de biopreparados',
//               initialValue: farmService.biopreparadosProduction != '' ? farmService.biopreparadosProduction : null,
//               onChanged: (value){
//                 farmService.biopreparadosProduction = value;
//               },
//             ),
//             const SizedBox(height: 9,),
//             CustomDropdownField(
//               dropdownItems: DropdownOptionsProvider.getSiNo(), 
//               labelText: 'Disponibilidad de agua',
//               initialValue: farmService.waterAvailable != '' ? farmService.waterAvailable : null,
//               onChanged: (value){
//                 farmService.waterAvailable = value;
//               },
//             ),
//             const SizedBox(height: 9,),
//             CustomDropdownField(
//               dropdownItems: DropdownOptionsProvider.geViasAccesot(), 
//               labelText: 'Disponibilidad de vias de acceso',
//               initialValue: farmService.accessRoads != '' ? farmService.accessRoads : null,
//               onChanged: (value){
//                 farmService.accessRoads = value;
//               },
//             ),
//             const SizedBox(height: 9,),
//             CustomDropdownField(
//               dropdownItems: DropdownOptionsProvider.getSiNo(), 
//               labelText: 'Disponibilidad de electricidad',
//               initialValue: farmService.electricityAvailability != '' ? farmService.electricityAvailability : null,
//               onChanged: (value){
//                 farmService.electricityAvailability = value;
//               },
//             ),
//             const SizedBox(height: 9,),
//             CustomDropdownField(
//               dropdownItems: DropdownOptionsProvider.getSiNo(), 
//               labelText: 'Disponibilidad de redes de comunicación',
//               initialValue: farmService.comunicationAvailable != '' ? farmService.comunicationAvailable : null,
//               onChanged: (value){
//                 farmService.comunicationAvailable = value;
//               },
//             ),
//             const SizedBox(height: 9,),
//             CustomDropdownField(
//               dropdownItems: DropdownOptionsProvider.getSiNo(), 
//               labelText: 'Disponibilidad para participar en proyectos de asistencia técnica',
//               initialValue: farmService.projectParticipation != '' ? farmService.projectParticipation : null,
//               onChanged: (value){
//                 farmService.projectParticipation = value;
//               },
//             ),
//             const SizedBox(height: 9,),
//             CustomDropdownField(
//               dropdownItems: DropdownOptionsProvider.buenasPracticas(), 
//               labelText: 'Variedad de herramientas básicas de uso en el cultivo',
//               initialValue: farmService.cropTools != '' ? farmService.cropTools : null,
//               onChanged: (value){
//                 farmService.cropTools = value;
//               },
//             ),
//             const SizedBox(height: 9,),
//             CustomDropdownField(
//               dropdownItems: DropdownOptionsProvider.getSiNo(), 
//               labelText: 'Tenencia de botiquin de primeros auxilios',
//               initialValue: farmService.firstAidKit != '' ? farmService.firstAidKit : null,
//               onChanged: (value){
//                 farmService.firstAidKit = value;
//               },
//             ),
//             const SizedBox(height: 9,),
//             CustomDropdownField(
//               dropdownItems: DropdownOptionsProvider.getSiNo(), 
//               labelText: 'Tenencia de equipos de fimigación',
//               initialValue: farmService.fumigateKit != '' ? farmService.fumigateKit : null,
//               onChanged: (value){
//                 farmService.fumigateKit = value;
//               },
//             ),
//             const SizedBox(height: 9,),
//             CustomDropdownField(
//               dropdownItems: DropdownOptionsProvider.getSiNo(), 
//               labelText: 'Tenencia de equipos de sistemas de riego',
//               initialValue: farmService.irrigationSystem != '' ? farmService.irrigationSystem : null,
//               onChanged: (value){
//                 farmService.irrigationSystem = value;
//               },
//             ),
//             const SizedBox(height: 9,),
//             CustomDropdownField(
//               dropdownItems: DropdownOptionsProvider.getSiNo(), 
//               labelText: 'Tenencia de maquinaria liviana',
//               initialValue: farmService.machines != '' ? farmService.machines : null,
//               onChanged: (value){
//                 farmService.machines = value;
//               },
//             ),
//             const SizedBox(height: 9,),
//             CustomDropdownField(
//               dropdownItems: DropdownOptionsProvider.getSiNo(), 
//               labelText: 'Interes en participar en proyectos de asistencia tecnica',
//               initialValue: farmService.participateInProyects != '' ? farmService.participateInProyects : null,
//               onChanged: (value){
//                 farmService.participateInProyects = value;
//               },
//             ),
//             const SizedBox(height: 9,),
//             CustomDropdownField(
//               dropdownItems: DropdownOptionsProvider.getCapital(), 
//               labelText: 'Origen del capital de trabajo',
//               initialValue: farmService.workingCapital != '' ? farmService.workingCapital : null,
//               onChanged: (value){
//                 farmService.workingCapital = value;
//               },
//             ),
//             const SizedBox(height: 9,),
//             CustomDropdownField(
//               dropdownItems: DropdownOptionsProvider.buenasPracticas(), 
//               labelText: 'Grado de implementacion de tecnologías de producción',
//               initialValue: farmService.implementationTecnologyLevel != '' ? farmService.implementationTecnologyLevel : null,
//               onChanged: (value){
//                 farmService.implementationTecnologyLevel = value;
//               },
//             ),
//             const SizedBox(height: 9,),
//           ],
//         ),
//       ),
//     );
//   }
// }