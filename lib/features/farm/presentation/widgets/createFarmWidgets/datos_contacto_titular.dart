import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:fundacion_aip_mobile/features/farm/farm.dart';
import 'package:fundacion_aip_mobile/features/shared/infrastructure/inputs/inputs.dart';
import '../../../Utils/data_dropdown.dart';

class DatosContactoTitular extends StatelessWidget {
  const DatosContactoTitular({super.key});

  @override
  Widget build(BuildContext context) {
    final farmService = Provider.of<CreateFarmProvider>(context);

    final txtText = Theme.of(context).textTheme.bodyMedium!.copyWith(
        fontWeight: FontWeight.w500,
        color: Theme.of(context).colorScheme.primary);

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
                    child:
                        Text('Datos del titular del predio', style: txtText))),
            CustomTextFormField(
              label: 'Primer Nombre',
              initalValueData: farmService.createNewFarm.firstName,
              onChanged: (value) {
                farmService.createNewFarm.firstName = value;
              },
              validator: (value) {
                return (value != null && value != '')
                    ? null
                    : 'Este campo no puede estar vacío';
              },
              isValidator: true,
            ),
            sizedBox,
            CustomTextFormField(
              label: 'Segundo Nombre',
              initalValueData: farmService.createNewFarm.secondName,
              onChanged: (value) {
                farmService.createNewFarm.secondName = value;
              },
            ),
            sizedBox,
            CustomTextFormField(
              label: 'Primer Apellido',
              initalValueData: farmService.createNewFarm.firstSurname,
              onChanged: (value) {
                farmService.createNewFarm.firstSurname = value;
              },
              validator: (value) {
                return (value != null && value != '')
                    ? null
                    : 'Este campo no puede estar vacío';
              },
              isValidator: true,
            ),
            sizedBox,
            CustomTextFormField(
              label: 'Segundo Apellido',
              initalValueData: farmService.createNewFarm.secondSurname,
              onChanged: (value) {
                farmService.createNewFarm.secondSurname = value;
              },
            ),
            sizedBox,
            CustomTextFormField(
              label: 'Cedula',
              keyType: TextInputType.number,
              initalValueData: farmService.createNewFarm.nitProducer,
              onChanged: (value) {
                farmService.createNewFarm.nitProducer = value;
              },
              validator: (value) {
                return (value != null && value != '')
                    ? null
                    : 'Este campo no puede estar vacío';
              },
              isValidator: true,
            ),
            sizedBox,
            CustomTextFormField(
              label: 'Lugar de Expedición',
              initalValueData: farmService.createNewFarm.expedition,
              onChanged: (value) {
                farmService.createNewFarm.expedition = value;
              },
              validator: (value) {
                return (value != null && value != '')
                    ? null
                    : 'Este campo no puede estar vacío';
              },
              isValidator: true,
            ),
            sizedBox,
            CustomTextFormField(
              label: 'Fecha de nacimiento',
              initalValueData: farmService.createNewFarm.birthdate,
              onChanged: (value) {
                farmService.createNewFarm.birthdate = value;
              },
              validator: (value) {
                return (value != null && value != '')
                    ? null
                    : 'Este campo no puede estar vacío';
              },
              isValidator: true,
            ),
            sizedBox,
            CustomDropdownField(
              labelText: 'Etnia',
              initialValue: farmService.createNewFarm.ethnicity,
              dropdownItems: DropdownOptionsProvider.getDropdownsEtnia(),
              onChanged: (value) {
                farmService.createNewFarm.ethnicity = value;
              },
            ),
            sizedBox,
            CustomTextFormField(
              label: 'Celular 1',
              keyType: TextInputType.number,
              initalValueData: farmService.createNewFarm.celphone1,
              onChanged: (value) {
                farmService.createNewFarm.celphone1 = value;
              },
              validator: (value) {
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
              initalValueData: farmService.createNewFarm.celphone2,
              onChanged: (value) {
                farmService.createNewFarm.celphone2 = value;
              },
            ),
            sizedBox,
            CustomTextFormField(
              label: 'Correo Electrónico',
              initalValueData: farmService.createNewFarm.email,
              onChanged: (value) {
                farmService.createNewFarm.email = value;
              },
            ),
            sizedBox,
            CustomDropdownField(
              labelText: 'Genero',
              initialValue: farmService.createNewFarm.gender,
              dropdownItems: DropdownOptionsProvider.getGender(),
              onChanged: (value) {
                farmService.createNewFarm.gender = value;
              },
            ),
            sizedBox,
            CustomDropdownField(
              labelText: 'Estudios',
              initialValue: farmService.createNewFarm.scholarLevel,
              dropdownItems: DropdownOptionsProvider.getDataStudies(),
              onChanged: (value) {
                farmService.createNewFarm.scholarLevel = value;
              },
            ),
            sizedBox,
            CustomTextFormField(
              label: 'Organización',
              initalValueData: farmService.createNewFarm.organization,
              onChanged: (value) {
                farmService.createNewFarm.organization = value;
              },
            ),
            sizedBox,
            CustomDropdownField(
              labelText: 'Estado Civil',
              initialValue: farmService.createNewFarm.maritalStatus,
              dropdownItems: DropdownOptionsProvider.getStatusMaried(),
              onChanged: (value) {
                farmService.createNewFarm.maritalStatus = value;
              },
            ),
            sizedBox,
            CustomTextFormField(
              label: 'Nombres y apellidos del conyuge',
              initalValueData: farmService.createNewFarm.fullnameSpouse,
              onChanged: (value) {
                farmService.createNewFarm.fullnameSpouse = value;
              },
            ),
            sizedBox,
            CustomTextFormField(
              label: 'Cedula conyuge',
              keyType: TextInputType.number,
              initalValueData: farmService.createNewFarm.nitSpouse,
              onChanged: (value) {
                farmService.createNewFarm.nitSpouse = value;
              },
            ),
            sizedBox,
            CustomTextFormField(
              label: 'Lugar de expedición',
              initalValueData: farmService.createNewFarm.expeditionSpouse,
              onChanged: (value) {
                farmService.createNewFarm.expeditionSpouse = value;
              },
            ),
            sizedBox,
            CustomTextFormField(
              label: 'Fecha de nacimiento del conyuge',
              initalValueData: farmService.createNewFarm.dateSpouse,
              onChanged: (value) {
                farmService.createNewFarm.dateSpouse = value;
              },
            ),
            sizedBox,
            CustomTextFormField(
              label: 'Celular',
              keyType: TextInputType.number,
              initalValueData: farmService.createNewFarm.celphoneSpouse,
              onChanged: (value) {
                farmService.createNewFarm.celphoneSpouse = value;
              },
            ),
            sizedBox,
            CustomTextFormField(
              label: 'Correo Electrónico',
              initalValueData: farmService.createNewFarm.emailSpouse,
              onChanged: (value) {
                farmService.createNewFarm.emailSpouse = value;
              },
            ),
            sizedBox,
          ],
        ),
      ),
    );
  }
}
