import 'package:flutter/material.dart';
import 'package:fundacion_aip_mobile/features/farm/Utils/data_dropdown.dart';
import 'package:fundacion_aip_mobile/features/farm/farm.dart';
import 'package:fundacion_aip_mobile/features/shared/infrastructure/inputs/inputs.dart';
import 'package:provider/provider.dart';

class DatosPredio extends StatelessWidget {
  const DatosPredio({super.key});

  @override
  Widget build(BuildContext context) {

    final txtText = Theme.of(context).textTheme.bodyMedium!.copyWith(
      fontWeight: FontWeight.w500,
      color: Theme.of(context).colorScheme.primary
    );

    final farmService = Provider.of<CreateFarmProvider>(context);

    const sizedBox = SizedBox(height: 9);

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
                child: Text('Datos del predio a registrar', style: txtText))),
        
            CustomTextFormField(
              label: 'Nombre de la finca',
              initalValueData: farmService.nombreFinca != '' ? farmService.nombreFinca : null,  
              onChanged: (value){
                farmService.nombreFinca = value;
              },
              validator: (value){
                return (value != null && value != '') 
                  ? null 
                  : 'Este campo no puede estar vacío';
              }, 
              isValidator: true,   
            ),
            sizedBox,
            CustomTextFormField(
              label: 'Municipio',
              initalValueData: farmService.municipioFinca != '' ? farmService.municipioFinca : null,  
              onChanged: (value){
                farmService.municipioFinca = value;
              },
              validator: (value){
                return (value != null && value != '') 
                  ? null 
                  : 'Este campo no puede estar vacío';
              }, 
              isValidator: true,     
            ),
            sizedBox,
            CustomTextFormField(label: 'Corregimiento',),
            sizedBox,
            CustomTextFormField(
              label: 'Vereda',
              initalValueData: farmService.veredaFinca != '' ? farmService.veredaFinca : null,  
              onChanged: (value){
                farmService.veredaFinca = value;
              },
              validator: (value){
                return (value != null && value != '') 
                  ? null 
                  : 'Este campo no puede estar vacío';
              }, 
              isValidator: true,     
            ),
            sizedBox,
            CustomDropdownField(dropdownItems: DropdownOptionsProvider.getTitulos(), labelText: 'Titulo de posesión'),
            sizedBox,
            CustomTextFormField(
              label: 'Extención total (m²)', 
              keyType: TextInputType.number,
              initalValueData: farmService.extensionTotal != '' ? farmService.extensionTotal : null,  
              onChanged: (value){
                farmService.extensionTotal = value;
              },
              validator: (value){
                return (value != null && value != '') 
                  ? null 
                  : 'Este campo no puede estar vacío';
              }, 
              isValidator: true,     
            ),
            sizedBox,
            CustomTextFormField(
              label: 'Área en cultivos actualmente (m²)',
              keyType: TextInputType.number,
              initalValueData: farmService.areaCultivadaActualmente != '' ? farmService.areaCultivadaActualmente : null,  
              onChanged: (value){
                farmService.areaCultivadaActualmente = value;
              },
              validator: (value){
                return (value != null && value != '') 
                  ? null 
                  : 'Este campo no puede estar vacío';
              }, 
              isValidator: true,     
            ),
            sizedBox,
            CustomTextFormField(
              label: 'Área de libre destinación (m²)',
              keyType: TextInputType.number,
              initalValueData: farmService.areaLibreDestinacion != '' ? farmService.areaLibreDestinacion : null,  
              onChanged: (value){
                farmService.areaLibreDestinacion = value;
              },
              validator: (value){
                return (value != null && value != '') 
                  ? null 
                  : 'Este campo no puede estar vacío';
              }, 
              isValidator: true,   
            ),
            sizedBox,
            CustomTextFormField(
              label: 'Área de conservación (m²)',
              keyType: TextInputType.number,
              initalValueData: farmService.areaConservacion != '' ? farmService.areaConservacion : null,  
              onChanged: (value){
                farmService.areaConservacion = value;
              },
              validator: (value){
                return (value != null && value != '') 
                  ? null 
                  : 'Este campo no puede estar vacío';
              }, 
              isValidator: true,   
            ),
            sizedBox,
            CustomTextFormField(label: 'Área de otros usos (m²)',keyType: TextInputType.number,),
            sizedBox,
            CustomTextFormField(label: 'Metros lineales de afluentes',keyType: TextInputType.number,),
            sizedBox,
            CustomDropdownField(dropdownItems: DropdownOptionsProvider.usoSuelo(), labelText: 'Uso de suelo y vocación'),
            sizedBox,
            CustomTextFormField(
              label: 'Linea productiva mas implementada',
              initalValueData: farmService.lineaProduccionMasImplementanda != '' ? farmService.lineaProduccionMasImplementanda : null,  
              onChanged: (value){
                farmService.lineaProduccionMasImplementanda = value;
              },
              validator: (value){
                return (value != null && value != '') 
                  ? null 
                  : 'Este campo no puede estar vacío';
              }, 
              isValidator: true,   
            ),
            sizedBox,
            CustomTextFormField(label: 'Tipo de certificación sobre el manejo del predio',),
            sizedBox,
            CustomTextFormField(label: 'Presencia de proyectos actuales',),
            sizedBox,
            CustomDropdownField(dropdownItems: DropdownOptionsProvider.getSiNo(), labelText: 'Manejo de químicos'),
            sizedBox,
            CustomDropdownField(dropdownItems: DropdownOptionsProvider.buenasPracticas(), labelText: 'Implementación de buenas prácticas'),
            sizedBox,
            CustomTextFormField(
              label: 'Lindero al Norte',
              initalValueData: farmService.linderoNorte != '' ? farmService.linderoNorte : null,  
              onChanged: (value){
                farmService.linderoNorte = value;
              },
              validator: (value){
                return (value != null && value != '') 
                  ? null 
                  : 'Este campo no puede estar vacío';
              }, 
              isValidator: true,  
            ),
            sizedBox,
            CustomTextFormField(
              label: 'Lindero al Sur',
              initalValueData: farmService.linderoSur != '' ? farmService.linderoSur : null,  
              onChanged: (value){
                farmService.linderoSur = value;
              },
              validator: (value){
                return (value != null && value != '') 
                  ? null 
                  : 'Este campo no puede estar vacío';
              }, 
              isValidator: true,  
            ),
            sizedBox,
            CustomTextFormField(
              label: 'Lindero al Oriente',
              initalValueData: farmService.linderoOriente != '' ? farmService.linderoOriente : null,  
              onChanged: (value){
                farmService.linderoOriente = value;
              },
              validator: (value){
                return (value != null && value != '') 
                  ? null 
                  : 'Este campo no puede estar vacío';
              }, 
              isValidator: true,  
            ),
            sizedBox,
            CustomTextFormField(
              label: 'Lindero al Occidente',
              initalValueData: farmService.linderoOccidente != '' ? farmService.linderoOccidente : null,  
              onChanged: (value){
                farmService.linderoOccidente = value;
              },
              validator: (value){
                return (value != null && value != '') 
                  ? null 
                  : 'Este campo no puede estar vacío';
              }, 
              isValidator: true,  
            ),
            sizedBox,
            CustomTextFormField(label: 'Lindero al altura MSNM',),
            sizedBox,
            CustomTextFormField(
              label: 'Latitud',
              initalValueData: farmService.latitudPredio != '' ? farmService.latitudPredio : null,  
              onChanged: (value){
                farmService.latitudPredio = value;
              },
              validator: (value){
                return (value != null && value != '') 
                  ? null 
                  : 'Este campo no puede estar vacío';
              }, 
              isValidator: true,  
            ),
            sizedBox,
            CustomTextFormField(
              label: 'Longitud',
              initalValueData: farmService.longitudPredio != '' ? farmService.longitudPredio : null,  
              onChanged: (value){
                farmService.longitudPredio = value;
              },
              validator: (value){
                return (value != null && value != '') 
                  ? null 
                  : 'Este campo no puede estar vacío';
              }, 
              isValidator: true,  
            ),
            sizedBox,
            CustomTextFormField(label: 'Años en la propiedad', keyType: TextInputType.number,),
            sizedBox,
            CustomTextFormField(label: 'Linea productiva 1',),
            sizedBox,
            CustomTextFormField(label: 'Linea productiva 2',),
            sizedBox,
            CustomTextFormField(label: 'Linea productiva 3',),
            sizedBox,
            CustomTextFormField(label: 'Linea productiva 4',),
            sizedBox,
            CustomTextFormField(label: 'Linea productiva 5',),
            sizedBox,
            
          ],
        ),
      ),
    );
  }
}