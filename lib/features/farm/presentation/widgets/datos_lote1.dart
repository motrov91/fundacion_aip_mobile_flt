// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';

// import 'package:fundacion_aip_mobile/features/farm/Utils/data_dropdown.dart';
// import 'package:fundacion_aip_mobile/features/shared/infrastructure/inputs/inputs.dart';

// import '../providers/create_farm_provider.dart';

// class DatosLote1 extends StatelessWidget {
//   const DatosLote1({super.key});

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
//                     child: Text('Datos lote 1 (Agricola)', style: txtText))),
            
//                 CustomTextFormField(
//                   label: 'Linea productiva',
//                   initalValueData: farmService.productLine1 != '' ? farmService.productLine1 : null,  
//                   onChanged: (value){
//                     farmService.productLine1 = value;
//                   },
//                 ),
//                 const SizedBox(height: 9,),
//                 CustomTextFormField(
//                   label: 'Variedad',
//                   initalValueData: farmService.variety1 != '' ? farmService.variety1 : null,  
//                   onChanged: (value){
//                     farmService.variety1 = value;
//                   },
//                 ),
//                 const SizedBox(height: 9,),
//                 CustomTextFormField(
//                   label: 'Cantidad de plantulas', 
//                   keyType: TextInputType.number,
//                   initalValueData: farmService.cantPlants1 != '' ? farmService.cantPlants1 : null,  
//                   onChanged: (value){
//                     farmService.cantPlants1 = value;
//                   },
//                 ),
//                 const SizedBox(height: 9,),
//                 CustomTextFormField(
//                   label: 'Distancia entre plantas (m)', 
//                   keyType: TextInputType.number,
//                   initalValueData: farmService.plantsDistance1 != '' ? farmService.plantsDistance1 : null,  
//                   onChanged: (value){
//                     farmService.plantsDistance1 = value;
//                   },
//                 ),
//                 const SizedBox(height: 9,),
//                 CustomTextFormField(
//                   label: 'Distancia entre surcos (m)', 
//                   keyType: TextInputType.number,
//                   initalValueData: farmService.groovesDistance1 != '' ? farmService.groovesDistance1 : null,  
//                   onChanged: (value){
//                     farmService.groovesDistance1 = value;
//                   },
//                 ),
//                 const SizedBox(height: 9,),
//                 CustomTextFormField(
//                   label: 'Edad del cultivo en años', 
//                   keyType: TextInputType.number,
//                   initalValueData: farmService.ageCrop1 != '' ? farmService.ageCrop1 : null,  
//                   onChanged: (value){
//                     farmService.ageCrop1 = value;
//                   },
//                 ),
//                 const SizedBox(height: 9,),
//                 CustomDropdownField(
//                   dropdownItems: DropdownOptionsProvider.getEtapa(),
//                   initialValue: farmService.stageCrop1 != '' ? farmService.stageCrop1 : null,
//                   onChanged: (value){
//                     farmService.stageCrop1 = value;
//                   },
//                   labelText: 'Etapa del cultivo'
//                 ),
//                 const SizedBox(height: 9,),
//                 CustomTextFormField(
//                   label: 'Cantidad de KG producidos por año', 
//                   keyType: TextInputType.number,
//                   initalValueData: farmService.cantKgProducedByYear1 != '' ? farmService.cantKgProducedByYear1 : null,  
//                   onChanged: (value){
//                     farmService.cantKgProducedByYear1 = value;
//                   },
//                 ),
//                 const SizedBox(height: 9,),
//                 CustomDropdownField(
//                   dropdownItems: DropdownOptionsProvider.getEstadoCultivo(), 
//                   labelText: 'Estado general del cultivo',
//                   initialValue: farmService.cropStatus1 != '' ? farmService.cropStatus1 : null,
//                   onChanged: (value){
//                     farmService.cropStatus1 = value;
//                   },
//                 ),
//                 const SizedBox(height: 9,),
//                 CustomTextFormField(
//                   label: 'Área aproximada (m²)', 
//                   keyType: TextInputType.number,
//                   initalValueData: farmService.aproxArea1 != '' ? farmService.aproxArea1 : null,  
//                   onChanged: (value){
//                     farmService.aproxArea1 = value;
//                   },
//                 ),
//                 const SizedBox(height: 9,),
//                 CustomTextFormField(
//                   label: 'Latitud - Longitud',
//                   initalValueData: farmService.coordenates1 != '' ? farmService.coordenates1 : null,  
//                   onChanged: (value){
//                     farmService.coordenates1 = value;
//                   },
//                 ),
//                 const SizedBox(height: 9,),
//                 CustomDropdownField(
//                   dropdownItems: DropdownOptionsProvider.getTipoManejo(), 
//                   labelText: 'Tipo de manejo',
//                   initialValue: farmService.useType != '' ? farmService.useType : null,
//                   onChanged: (value){
//                     farmService.useType = value;
//                   },
//                 ),
//                 const SizedBox(height: 9,),
//                 CustomTextFormField(
//                   label: 'Valor promedio de KG comercializado en pesos/año', 
//                   keyType: TextInputType.number,
//                   initalValueData: farmService.promKgComercializateValue != '' ? farmService.promKgComercializateValue : null,  
//                   onChanged: (value){
//                     farmService.promKgComercializateValue = value;
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