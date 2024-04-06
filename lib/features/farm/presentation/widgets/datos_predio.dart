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
            CustomTextFormField(
              label: 'Corregimiento',
              initalValueData: farmService.corregimiento != '' ? farmService.corregimiento : null,
              onChanged: (value){
                farmService.corregimiento = value;
              },
            ),
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
            CustomDropdownField(
              dropdownItems: DropdownOptionsProvider.getTitulos(), 
              initialValue: farmService.possession != '' ? farmService.possession : null,
              labelText: 'Titulo de posesión',
              onChanged: (value){
                farmService.possession = value!;
              },
            ),
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
            CustomTextFormField(
              label: 'Área de otros usos (m²)',
              initalValueData: farmService.otherAreas != '' ? farmService.otherAreas : null,
              keyType: TextInputType.number,
              onChanged: (value){
                farmService.otherAreas = value;
              },
            ),
            sizedBox,
            CustomTextFormField(
              label: 'Metros lineales de afluentes',
              initalValueData: farmService.afluentes != '' ? farmService.afluentes : null,
              keyType: TextInputType.number,
              onChanged: (value){
                farmService.afluentes = value;
              },  
            ),
            sizedBox,
            CustomDropdownField(
              dropdownItems: DropdownOptionsProvider.usoSuelo(), 
              initialValue: farmService.vocationAndLandUse != '' ? farmService.vocationAndLandUse : null,
              labelText: 'Uso de suelo y vocación',
              onChanged: (value){
                farmService.vocationAndLandUse = value;
              },
            ),
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
            CustomTextFormField(
              label: 'Tipo de certificación sobre el manejo del predio',
              initalValueData: farmService.certificationType != '' ? farmService.certificationType : null, 
              onChanged: (value){
                farmService.certificationType = value;
              },
            ),
            sizedBox,
            CustomTextFormField(
              label: 'Presencia de proyectos actuales',
              initalValueData: farmService.currentProjects != '' ? farmService.currentProjects : null, 
              onChanged: (value){
                farmService.currentProjects = value;
              },  
            ),
            sizedBox,
            CustomDropdownField(
              dropdownItems: DropdownOptionsProvider.getSiNo(), 
              initialValue: farmService.agrochemical != '' ? farmService.agrochemical : null, 
              labelText: 'Manejo de químicos',
              onChanged: (value){
                farmService.agrochemical = value;
              },
            ),
            sizedBox,
            CustomDropdownField(
              dropdownItems: DropdownOptionsProvider.buenasPracticas(), 
              initialValue: farmService.bestPractices != '' ? farmService.bestPractices : null,
              labelText: 'Implementación de buenas prácticas',
              onChanged: (value){
                farmService.bestPractices = value;
              },
            ),
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
            CustomTextFormField(
              label: 'Lindero al altura MSNM',
              initalValueData: farmService.altura != '' ? farmService.altura : null,
              onChanged: (value){
                farmService.altura = value;
              }, 
            ),
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
            CustomTextFormField(
              label: 'Años en la propiedad', keyType: TextInputType.number,
              initalValueData: farmService.anosPropiedad != '' ? farmService.anosPropiedad : null,
              onChanged: (value){
                farmService.anosPropiedad = value;
              },
            ),
            sizedBox,
            CustomTextFormField(
              label: 'Linea productiva 1',
              initalValueData: farmService.productiveLine1 != '' ? farmService.productiveLine1 : null,
              onChanged: (value){
                farmService.productiveLine1 = value;
              },
            ),
            sizedBox,
            CustomTextFormField(
              initalValueData: farmService.productiveLine2 != '' ? farmService.productiveLine2 : null,
              label: 'Linea productiva 2',
              onChanged: (value){
                farmService.productiveLine2 = value;
              },
            ),
            sizedBox,
            CustomTextFormField(
              initalValueData: farmService.productiveLine3 != '' ? farmService.productLine3 : null,
              label: 'Linea productiva 3',
              onChanged: (value){
                farmService.productiveLine3 = value;
              },
            ),
            sizedBox,
            CustomTextFormField(
              initalValueData: farmService.productiveLine4 != '' ? farmService.productiveLine4 : null,
              label: 'Linea productiva 4',
              onChanged: (value){
                farmService.productiveLine4 = value;
              },
            ),
            sizedBox,
            CustomTextFormField(
              initalValueData: farmService.productiveLine5 != '' ? farmService.productiveLine5 : null, 
              label: 'Linea productiva 5',
              onChanged: (value){
                farmService.productiveLine5 = value;
              },
            ),
            sizedBox,
          ],
        ),
      ),
    );
  }
}