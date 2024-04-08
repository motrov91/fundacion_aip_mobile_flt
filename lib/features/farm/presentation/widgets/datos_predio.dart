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
              initalValueData: farmService.createNewFarm.nameFarm != '' ? farmService.createNewFarm.nameFarm : null,  
              onChanged: (value){
                farmService.createNewFarm.nameFarm = value;
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
              initalValueData: farmService.createNewFarm.municipality != '' ? farmService.createNewFarm.municipality : null,  
              onChanged: (value){
                farmService.createNewFarm.municipality = value;
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
              initalValueData: farmService.createNewFarm.corregimiento != '' ? farmService.createNewFarm.corregimiento : null,
              onChanged: (value){
                farmService.createNewFarm.corregimiento = value;
              },
            ),
            sizedBox,
            CustomTextFormField(
              label: 'Vereda',
              initalValueData: farmService.createNewFarm.vereda != '' ? farmService.createNewFarm.vereda : null,  
              onChanged: (value){
                farmService.createNewFarm.vereda = value;
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
              initialValue: farmService.createNewFarm.possession != '' ? farmService.createNewFarm.possession : null,
              labelText: 'Titulo de posesión',
              onChanged: (value){
                farmService.createNewFarm.possession = value!;
              },
            ),
            sizedBox,
            CustomTextFormField(
              label: 'Extención total (m²)', 
              keyType: TextInputType.number,
              initalValueData: farmService.createNewFarm.totalExtension != '' ? farmService.createNewFarm.totalExtension : null,  
              onChanged: (value){
                farmService.createNewFarm.totalExtension = value;
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
              initalValueData: farmService.createNewFarm.cropsArea != '' ? farmService.createNewFarm.cropsArea : null,  
              onChanged: (value){
                farmService.createNewFarm.cropsArea = value;
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
              initalValueData: farmService.createNewFarm.freeArea != '' ? farmService.createNewFarm.freeArea : null,  
              onChanged: (value){
                farmService.createNewFarm.freeArea = value;
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
              initalValueData: farmService.createNewFarm.conservationArea != '' ? farmService.createNewFarm.conservationArea : null,  
              onChanged: (value){
                farmService.createNewFarm.conservationArea = value;
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
              initalValueData: farmService.createNewFarm.otherAreas != '' ? farmService.createNewFarm.otherAreas : null,
              keyType: TextInputType.number,
              onChanged: (value){
                farmService.createNewFarm.otherAreas = value;
              },
            ),
            sizedBox,
            CustomTextFormField(
              label: 'Metros lineales de afluentes',
              initalValueData: farmService.createNewFarm.afluentes != '' ? farmService.createNewFarm.afluentes : null,
              keyType: TextInputType.number,
              onChanged: (value){
                farmService.createNewFarm.afluentes = value;
              },  
            ),
            sizedBox,
            CustomDropdownField(
              dropdownItems: DropdownOptionsProvider.usoSuelo(), 
              initialValue: farmService.createNewFarm.vocationAndLandUse != '' ? farmService.createNewFarm.vocationAndLandUse : null,
              labelText: 'Uso de suelo y vocación',
              onChanged: (value){
                farmService.createNewFarm.vocationAndLandUse = value;
              },
            ),
            sizedBox,
            CustomTextFormField(
              label: 'Linea productiva mas implementada',
              initalValueData: farmService.createNewFarm.productiveLine != '' ? farmService.createNewFarm.productiveLine : null,  
              onChanged: (value){
                farmService.createNewFarm.productiveLine = value;
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
              initalValueData: farmService.createNewFarm.certificationType != '' ? farmService.createNewFarm.certificationType : null, 
              onChanged: (value){
                farmService.createNewFarm.certificationType = value;
              },
            ),
            sizedBox,
            CustomTextFormField(
              label: 'Presencia de proyectos actuales',
              initalValueData: farmService.createNewFarm.currentProjects != '' ? farmService.createNewFarm.currentProjects : null, 
              onChanged: (value){
                farmService.createNewFarm.currentProjects = value;
              },  
            ),
            sizedBox,
            CustomDropdownField(
              dropdownItems: DropdownOptionsProvider.getSiNo(), 
              initialValue: farmService.createNewFarm.agrochemical != '' ? farmService.createNewFarm.agrochemical : null, 
              labelText: 'Manejo de químicos',
              onChanged: (value){
                farmService.createNewFarm.agrochemical = value;
              },
            ),
            sizedBox,
            CustomDropdownField(
              dropdownItems: DropdownOptionsProvider.buenasPracticas(), 
              initialValue: farmService.createNewFarm.bestPractices != '' ? farmService.createNewFarm.bestPractices : null,
              labelText: 'Implementación de buenas prácticas',
              onChanged: (value){
                farmService.createNewFarm.bestPractices = value;
              },
            ),
            sizedBox,
            CustomTextFormField(
              label: 'Lindero al Norte',
              initalValueData: farmService.createNewFarm.purlieuNorth != '' ? farmService.createNewFarm.purlieuNorth : null,  
              onChanged: (value){
                farmService.createNewFarm.purlieuNorth = value;
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
              initalValueData: farmService.createNewFarm.purlieuSouth != '' ? farmService.createNewFarm.purlieuSouth : null,  
              onChanged: (value){
                farmService.createNewFarm.purlieuSouth = value;
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
              initalValueData: farmService.createNewFarm.purlieuEast != '' ? farmService.createNewFarm.purlieuEast : null,  
              onChanged: (value){
                farmService.createNewFarm.purlieuEast = value;
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
              initalValueData: farmService.createNewFarm.purlieuWest != '' ? farmService.createNewFarm.purlieuWest : null,  
              onChanged: (value){
                farmService.createNewFarm.purlieuWest = value;
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
              initalValueData: farmService.createNewFarm.altura != '' ? farmService.createNewFarm.altura : null,
              onChanged: (value){
                farmService.createNewFarm.altura = value;
              }, 
            ),
            sizedBox,
            CustomTextFormField(
              label: 'Coordenadas predio',
              initalValueData: farmService.createNewFarm.latitudeLongitude != '' ? farmService.createNewFarm.latitudeLongitude : null,  
              onChanged: (value){
                farmService.createNewFarm.latitudeLongitude = value;
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
              initalValueData: farmService.createNewFarm.anosPropiedad != '' ? farmService.createNewFarm.anosPropiedad : null,
              onChanged: (value){
                farmService.createNewFarm.anosPropiedad = value;
              },
            ),
            sizedBox,
            CustomTextFormField(
              label: 'Linea productiva 1',
              initalValueData: farmService.createNewFarm.productiveLine1 != '' ? farmService.createNewFarm.productiveLine1 : null,
              onChanged: (value){
                farmService.createNewFarm.productiveLine1 = value;
              },
            ),
            sizedBox,
            CustomTextFormField(
              initalValueData: farmService.createNewFarm.productiveLine2 != '' ? farmService.createNewFarm.productiveLine2 : null,
              label: 'Linea productiva 2',
              onChanged: (value){
                farmService.createNewFarm.productiveLine2 = value;
              },
            ),
            sizedBox,
            CustomTextFormField(
              initalValueData: farmService.createNewFarm.productiveLine3 != '' ? farmService.createNewFarm.productiveLine3 : null,
              label: 'Linea productiva 3',
              onChanged: (value){
                farmService.createNewFarm.productiveLine3 = value;
              },
            ),
            sizedBox,
            CustomTextFormField(
              initalValueData: farmService.createNewFarm.productiveLine4 != '' ? farmService.createNewFarm.productiveLine4 : null,
              label: 'Linea productiva 4 (Pecuaria)',
              onChanged: (value){
                farmService.createNewFarm.productiveLine4 = value;
              },
            ),
            sizedBox,
            CustomTextFormField(
              initalValueData: farmService.createNewFarm.productiveLine5 != '' ? farmService.createNewFarm.productiveLine5 : null, 
              label: 'Linea productiva 5 (Pecuaria)',
              onChanged: (value){
                farmService.createNewFarm.productiveLine5 = value;
              },
            ),
            sizedBox,
          ],
        ),
      ),
    );
  }
}