import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:fundacion_aip_mobile/features/createFarm/createFarm.dart';
import 'package:fundacion_aip_mobile/features/shared/infrastructure/inputs/inputs.dart';
import '../../Utils/data_dropdown.dart';

class DatosContactoTitular extends StatelessWidget {
  const DatosContactoTitular({super.key});

  @override
  Widget build(BuildContext context) {

    final farmService = Provider.of<CreateFarmProvider>(context);

    final txtText = Theme.of(context).textTheme.bodyMedium!.copyWith(
      fontWeight: FontWeight.w500,
      color: Theme.of(context).colorScheme.primary
    );

    const sizedBox = SizedBox(height: 9);

    return Container(
      margin: const EdgeInsets.all(5),
      width: double.infinity,
      height: double.infinity,
      child: SingleChildScrollView(
        child: Column(
          children: [
        
            Container(
              margin: const EdgeInsets.only(top: 5, bottom: 10),
              child: Center(
                child: Text('Datos del titular del predio', style: txtText))),
        
            CustomTextFormField(
              label: 'Primer Nombre',
              initalValueData: farmService.primerNombre != '' ? farmService.primerNombre : null, 
              onChanged: (value){
                farmService.primerNombre = value;
              },
              validator: (value){
                return (value != null && value != '') 
                  ? null 
                  : 'Este campo no puede estar vacío';
              }, 
              isValidator: true, 
            ),
            sizedBox,
            CustomTextFormField(label: 'Segundo Nombre'),
            sizedBox,
            CustomTextFormField(
              label: 'Primer Apellido', 
              initalValueData: farmService.primerApellido != '' ? farmService.primerApellido : null,  
              onChanged: (value){
                farmService.primerApellido = value;
              },
              validator: (value){
                return (value != null && value != '') 
                  ? null 
                  : 'Este campo no puede estar vacío';
              }, 
              isValidator: true, 
            ),
            sizedBox,
            CustomTextFormField(label: 'Segundo Apellido'),
            sizedBox,
            CustomTextFormField(
              label: 'Cedula', keyType: TextInputType.number,
              initalValueData: farmService.cedulaAgricultor != '' ? farmService.cedulaAgricultor : null,  
              onChanged: (value){
                farmService.cedulaAgricultor = value;
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
              label: 'Lugar de Expedición',
              initalValueData: farmService.lugarExpedicion != '' ? farmService.lugarExpedicion : null,  
              onChanged: (value){
                farmService.lugarExpedicion = value;
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
              label: 'Fecha de nacimiento',
              initalValueData: farmService.fechaExpedicion != '' ? farmService.fechaExpedicion : null,  
              onChanged: (value){
                farmService.fechaExpedicion = value;
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
              labelText: 'Etnia',
              dropdownItems: DropdownOptionsProvider.getDropdownsEtnia()
            ),
            sizedBox,
            CustomTextFormField(
              label: 'Celular 1', keyType: TextInputType.number,
              initalValueData: farmService.celularAgricultor != '' ? farmService.celularAgricultor : null,  
              onChanged: (value){
                farmService.celularAgricultor = value;
              },
              validator: (value){
                return (value != null && value != '') 
                  ? null 
                  : 'Este campo no puede estar vacío';
              }, 
              isValidator: true,     
            ),
            sizedBox,
            CustomTextFormField(label: 'Celular 2', keyType: TextInputType.number,),
            sizedBox,
            CustomTextFormField(label: 'Correo Electrónico'),
            sizedBox,
            CustomDropdownField(
              labelText: 'Genero',
              dropdownItems: DropdownOptionsProvider.getGender(),
            ),
            sizedBox,
            CustomDropdownField(
              labelText: 'Estudios',
              dropdownItems: DropdownOptionsProvider.getDataStudies(),
            ),
            sizedBox,
            CustomTextFormField(label: 'Organización'),
            sizedBox,
            CustomDropdownField(
              labelText: 'Estado Civil',
              dropdownItems: DropdownOptionsProvider.getStatusMaried(),
            ),
            sizedBox,
            CustomTextFormField(label: 'Nombres y apellidos del conyuge'),
            sizedBox,
            CustomTextFormField(label: 'Lugar de expedición'),
            sizedBox,
            CustomTextFormField(label: 'Cedula conyuge', keyType: TextInputType.number,),
            sizedBox,
            CustomTextFormField(label: 'Fecha de nacimiento del conyuge'),
            sizedBox,
            CustomTextFormField(label: 'Celular', keyType: TextInputType.number,),
            sizedBox,
            CustomTextFormField(label: 'Correo Electrónico'),
            sizedBox,
          ],
        ),
      ),
    );
  }
}