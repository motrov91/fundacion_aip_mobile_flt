// import 'package:flutter/material.dart';
// import 'package:fundacion_aip_mobile/features/farm/Utils/data_dropdown.dart';
// import 'package:fundacion_aip_mobile/features/shared/infrastructure/inputs/inputs.dart';
// import 'package:provider/provider.dart';

// import '../providers/create_farm_provider.dart';

// class DatosLote3 extends StatelessWidget {
//   const DatosLote3({super.key});

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
//       child: Builder(
//         builder: (context) {
//           return SingleChildScrollView(
//             child: Column(
//               children: [
            
//                 Container(
//                   margin: const EdgeInsets.symmetric(vertical: 5),
//                   child: Center(
//                     child: Text('Datos lote 3 (Agricola)', style: txtText))),
            
//                 CustomTextFormField(
//                   label: 'Linea productiva',
//                   initalValueData: farmService.productLine3 != '' ? farmService.productLine3 : null,  
//                   onChanged: (value){
//                     farmService.productLine3 = value;
//                   },
//                 ),
//                 const SizedBox(height: 9,),
//                 CustomTextFormField(
//                   label: 'Variedad',
//                   initalValueData: farmService.variety3 != '' ? farmService.variety3 : null,  
//                   onChanged: (value){
//                     farmService.variety3 = value;
//                   },
//                 ),
//                 const SizedBox(height: 9,),
//                 CustomTextFormField(
//                   label: 'Cantidad de plantulas', 
//                   keyType: TextInputType.number,
//                   initalValueData: farmService.cantPlants3 != '' ? farmService.cantPlants3 : null,  
//                   onChanged: (value){
//                     farmService.cantPlants3 = value;
//                   },
//                 ),
//                 const SizedBox(height: 9,),
//                 CustomTextFormField(
//                   label: 'Distancia entre plantas (m)', 
//                   keyType: TextInputType.number,
//                   initalValueData: farmService.plantsDistance3 != '' ? farmService.plantsDistance3 : null,  
//                   onChanged: (value){
//                     farmService.plantsDistance3 = value;
//                   },
//                 ),
//                 const SizedBox(height: 9,),
//                 CustomTextFormField(
//                   label: 'Distancia entre surcos (m)', 
//                   keyType: TextInputType.number,
//                   initalValueData: farmService.groovesDistance3 != '' ? farmService.groovesDistance3 : null,  
//                   onChanged: (value){
//                     farmService.groovesDistance3 = value;
//                   },
//                 ),
//                 const SizedBox(height: 9,),
//                 CustomTextFormField(
//                   label: 'Edad del cultivo en años', 
//                   keyType: TextInputType.number,
//                   initalValueData: farmService.ageCrop3 != '' ? farmService.ageCrop3 : null,  
//                   onChanged: (value){
//                     farmService.ageCrop3 = value;
//                   },
//                 ),
//                 const SizedBox(height: 9,),
//                 CustomDropdownField(
//                   dropdownItems: DropdownOptionsProvider.getEtapa(), 
//                   labelText: 'Etapa del cultivo',
//                   initialValue: farmService.stageCrop3 != '' ? farmService.stageCrop3 : null,
//                   onChanged: (value){
//                     farmService.stageCrop3 = value;
//                   },
//                 ),
//                 const SizedBox(height: 9,),
//                 CustomTextFormField(
//                   label: 'Cantidad de KG producidos por año', 
//                   keyType: TextInputType.number,
//                   initalValueData: farmService.cantKgProducedByYear3 != '' ? farmService.cantKgProducedByYear3 : null,  
//                   onChanged: (value){
//                     farmService.cantKgProducedByYear3 = value;
//                   },
//                 ),
//                 const SizedBox(height: 9,),
//                 CustomDropdownField(
//                   dropdownItems: DropdownOptionsProvider.getEstadoCultivo(), 
//                   labelText: 'Estado general del cultivo',
//                   initialValue: farmService.cropStatus3 != '' ? farmService.cropStatus3 : null,
//                   onChanged: (value){
//                     farmService.cropStatus3 = value;
//                   },
//                 ),
//                 const SizedBox(height: 9,),
//                 CustomTextFormField(
//                   label: 'Área aproximada (m²)', 
//                   keyType: TextInputType.number,
//                   initalValueData: farmService.aproxArea3 != '' ? farmService.aproxArea3 : null,  
//                   onChanged: (value){
//                     farmService.aproxArea3 = value;
//                   },
//                 ),
//                 const SizedBox(height: 9,),
//                 CustomTextFormField(
//                   label: 'Latitud - Longitud',
//                   initalValueData: farmService.coordenates3 != '' ? farmService.coordenates3 : null,  
//                   onChanged: (value){
//                     farmService.coordenates3 = value;
//                   },
//                 ),
//                 const SizedBox(height: 9,),
//                 CustomDropdownField(
//                   dropdownItems: DropdownOptionsProvider.getTipoManejo(), 
//                   labelText: 'Tipo de manejo',
//                   initialValue: farmService.useType3 != '' ? farmService.useType3 : null,
//                   onChanged: (value){
//                     farmService.useType3 = value;
//                   },
//                 ),
//                 const SizedBox(height: 9,),
//                 CustomTextFormField(
//                   label: 'Valor promedio de KG comercializado en pesos/año', 
//                   keyType: TextInputType.number,
//                   initalValueData: farmService.promKgComercializateValu3 != '' ? farmService.promKgComercializateValu3 : null,  
//                   onChanged: (value){
//                     farmService.promKgComercializateValu3 = value;
//                   },
//                 ),
//                 const SizedBox(height: 9,),
//               ],
//             ),
//           );
//         }
//       ),
//     );
//   }
// }