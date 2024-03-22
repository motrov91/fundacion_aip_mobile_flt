import 'package:flutter/material.dart';
import 'package:fundacion_aip_mobile/features/shared/infrastructure/inputs/inputs.dart';

import '../../Utils/data_dropdown.dart';

class DatosContactoTitular extends StatelessWidget {
  const DatosContactoTitular({super.key});

  @override
  Widget build(BuildContext context) {

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
        
            CustomTextFormField(label: 'Primer Nombre'),
            sizedBox,
            CustomTextFormField(label: 'Segundo Nombre'),
            sizedBox,
            CustomTextFormField(label: 'Primer Apellido'),
            sizedBox,
            CustomTextFormField(label: 'Segundo Apellido'),
            sizedBox,
            CustomTextFormField(label: 'Cedula', keyType: TextInputType.number,),
            sizedBox,
            CustomTextFormField(label: 'Lugar de Expedición'),
            sizedBox,
            CustomDropdownField(
              labelText: 'Etnia',
              dropdownItems: DropdownOptionsProvider.getDropdownsEtnia()
            ),
            sizedBox,
            CustomTextFormField(label: 'Celular 1', keyType: TextInputType.number,),
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