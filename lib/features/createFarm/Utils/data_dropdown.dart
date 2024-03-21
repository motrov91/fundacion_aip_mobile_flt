import 'package:flutter/material.dart';

class DropdownOptionsProvider {
  static List<DropdownMenuItem<String>> getDropdownsEtnia() {
    return const[
      DropdownMenuItem(value: "Indigena", child: Text("Indigena")),
      DropdownMenuItem(value: "Afrocolombiano", child: Text("Afrocolombiano")),
      DropdownMenuItem(value: "Campesino", child: Text("Campesino")),
      DropdownMenuItem(value: "Raizal", child: Text("Raizal")),
      DropdownMenuItem(value: "Otro", child: Text("Otro")),
    ];
  }

  static List<DropdownMenuItem<String>> getGender() {
    return const[
      DropdownMenuItem(value: "Masculino", child: Text("Masculino")),
      DropdownMenuItem(value: "Femenino", child: Text("Femenino")),
    ];
  }

  static List<DropdownMenuItem<String>> getDataStudies() {
    return const[
      DropdownMenuItem(value: "Ninguno", child: Text("Ninguno")),
      DropdownMenuItem(value: "Primaria", child: Text("Primaria")),
      DropdownMenuItem(value: "Secundaria", child: Text("Secundaria")),
      DropdownMenuItem(value: "Técnico", child: Text("Técnico")),
      DropdownMenuItem(value: "Tecnólogo", child: Text("Tecnólogo")),
      DropdownMenuItem(value: "Universitario", child: Text("Universitario")),
    ];
  }
  static List<DropdownMenuItem<String>> getStatusMaried() {
    return const[
      DropdownMenuItem(value: "Soltero", child: Text("Soltero")),
      DropdownMenuItem(value: "Casado", child: Text("Casado")),
      DropdownMenuItem(value: "Unión Libre", child: Text("Unión Libre")),
    ];
  }
}