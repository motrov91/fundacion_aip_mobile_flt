import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:fundacion_aip_mobile/features/farm/farm.dart';
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
            CustomTextFormField(
              label: 'Segundo Nombre',
              initalValueData: farmService.secondName != '' ? farmService.secondName : null,
              onChanged: (value){
                farmService.secondName = value;
              },
            ),
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
            CustomTextFormField(
              label: 'Segundo Apellido',
              initalValueData: farmService.secondSurname != '' ? farmService.secondSurname : null,
              onChanged: (value){
                farmService.secondSurname = value;
              },
            ),
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
              initalValueData: farmService.birthdate != '' ? farmService.birthdate : null,  
              onChanged: (value){
                farmService.birthdate = value;
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
              initialValue: farmService.ethnicity != '' ? farmService.ethnicity : null,
              dropdownItems: DropdownOptionsProvider.getDropdownsEtnia(),
              onChanged: (value){
                farmService.ethnicity = value;
              },
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
            CustomTextFormField(
              label: 'Celular 2', 
              keyType: TextInputType.number,
              initalValueData: farmService.celphone2 != '' ? farmService.celphone2 : null,
              onChanged: (value){
                farmService.celphone2 = value;
              },
            ),
            sizedBox,
            CustomTextFormField(
              label: 'Correo Electrónico',
              initalValueData: farmService.email != '' ? farmService.email : null,
              onChanged: (value){
                farmService.email = value;
              },
            ),
            sizedBox,
            CustomDropdownField(
              labelText: 'Genero',
              initialValue: farmService.gender != '' ? farmService.gender : null,
              dropdownItems: DropdownOptionsProvider.getGender(),
              onChanged: (value){
                farmService.gender = value;
              },
            ),
            sizedBox,
            CustomDropdownField(
              labelText: 'Estudios',
              initialValue: farmService.scholarLevel != '' ? farmService.scholarLevel : null,
              dropdownItems: DropdownOptionsProvider.getDataStudies(),
              onChanged: (value){
                farmService.scholarLevel = value;
              },
            ),
            sizedBox,
            CustomTextFormField(
              label: 'Organización',
              initalValueData: farmService.organization != '' ? farmService.organization : null,
              onChanged: (value){
                farmService.organization = value;
              },
            ),
            sizedBox,
            CustomDropdownField(
              labelText: 'Estado Civil',
              initialValue: farmService.maritalStatus != '' ? farmService.maritalStatus : null,
              dropdownItems: DropdownOptionsProvider.getStatusMaried(),
              onChanged: (value){
                farmService.maritalStatus = value;
              },
            ),
            sizedBox,
            CustomTextFormField(
              label: 'Nombres y apellidos del conyuge',
              initalValueData: farmService.fullnameSpouse != '' ? farmService.fullnameSpouse : null,
              onChanged: (value){
                farmService.fullnameSpouse = value;
              },
            ),
            sizedBox,
            CustomTextFormField(
              label: 'Lugar de expedición',
              initalValueData: farmService.expeditionSpouse != '' ? farmService.expeditionSpouse : null,
              onChanged: (value){
                farmService.expeditionSpouse = value;
              },
            ),
            sizedBox,
            CustomTextFormField(
              label: 'Cedula conyuge', 
              keyType: TextInputType.number,
              initalValueData: farmService.nitSpouse != '' ? farmService.nitSpouse : null,
              onChanged: (value){
                farmService.nitSpouse = value;
              },
            ),
            sizedBox,
            CustomTextFormField(
              label: 'Fecha de nacimiento del conyuge',
              initalValueData: farmService.dateSpouse != '' ? farmService.dateSpouse : null,
              onChanged: (value){
                farmService.dateSpouse = value;
              },
            ),
            sizedBox,
            CustomTextFormField(
              label: 'Celular', 
              keyType: TextInputType.number,
              initalValueData: farmService.celphoneSpouse != '' ? farmService.celphoneSpouse : null,
              onChanged: (value){
                farmService.celphoneSpouse = value;
              },
            ),
            sizedBox,
            CustomTextFormField(
              label: 'Correo Electrónico',
              initalValueData: farmService.emailSpouse != '' ? farmService.emailSpouse : null,
              onChanged: (value){
                farmService.emailSpouse = value;
              },
            ),
            sizedBox,
          ],
        ),
      ),
    );
  }
}