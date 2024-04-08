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
      DropdownMenuItem(value: "Unión_Libre", child: Text("Unión Libre")),
    ];
  }

  static List<DropdownMenuItem<String>> getTitulos() {
    return const[
      DropdownMenuItem(value: "Escrituras", child: Text("Escrituras públicas")),
      DropdownMenuItem(value: "Sana_posesión", child: Text("Sana posesión")),
      DropdownMenuItem(value: "Arrendamiento", child: Text("Arrendamiento")),
      DropdownMenuItem(value: "Comodato", child: Text("Comodato")),
      DropdownMenuItem(value: "Usufructo", child: Text("Usufructo")),
      DropdownMenuItem(value: "Colectiva", child: Text("Colectiva")),
      DropdownMenuItem(value: "Otro", child: Text("Otro")),
    ];
  }
  
  static List<DropdownMenuItem<String>> usoSuelo() {
    return const[
      DropdownMenuItem(value: "Agrícola", child: Text("Agrícola")),
      DropdownMenuItem(value: "Pecuario", child: Text("Pecuario")),
      DropdownMenuItem(value: "Forestal", child: Text("Forestal")),
      DropdownMenuItem(value: "Agrícola_pecuario", child: Text("Agrícola y pecuario")),
      DropdownMenuItem(value: "Otro", child: Text("Otro")),
    ];
  }
  static List<DropdownMenuItem<String>> getSiNo() {
    return const[
      DropdownMenuItem(value: "Si", child: Text("Si")),
      DropdownMenuItem(value: "No", child: Text("No")),
    ];
  }

  static List<DropdownMenuItem<String>> getCapital() {
    return const[
      DropdownMenuItem(value: "Estado", child: Text("Entidades estatales")),
      DropdownMenuItem(value: "Bancos", child: Text("Bancos")),
      DropdownMenuItem(value: "Agremiaciones", child: Text("Agremiaciones")),
      DropdownMenuItem(value: "Prestamistas", child: Text("Prestamistas")),
      DropdownMenuItem(value: "Reinversion_cultivos", child: Text("Reinversión de cultivos")),
    ];
  }

  static List<DropdownMenuItem<String>> geViasAccesot() {
    return const[
      DropdownMenuItem(value: "Via_primaria", child: Text("Via primaria")),
      DropdownMenuItem(value: "Via_secundaria", child: Text("Via secundaria")),
      DropdownMenuItem(value: "Via_Terciaria", child: Text("Via terciaria")),
      DropdownMenuItem(value: "Camino_herradura", child: Text("Camino de herradura")),
    ];
  }

  static List<DropdownMenuItem<String>> buenasPracticas() {
    return const[
      DropdownMenuItem(value: "Alto", child: Text("Alto")),
      DropdownMenuItem(value: "Medio", child: Text("Medio")),
      DropdownMenuItem(value: "Bajo", child: Text("Bajo")),
    ];
  }

  static List<DropdownMenuItem<String>> getTipoComercializacion() {
    return const[
      DropdownMenuItem(value: "A_consumidor_final", child: Text("Al consumidor final")),
      DropdownMenuItem(value: "En_plaza", child: Text("En la plaza")),
      DropdownMenuItem(value: "En_finca", child: Text("En finca")),
      DropdownMenuItem(value: "A_intermediario", child: Text("A intermediario")),
    ];
  }

  static List<DropdownMenuItem<String>> getEtapa() {
    return const[
      DropdownMenuItem(value: "Siembra", child: Text("Siembra")),
      DropdownMenuItem(value: "Crecimiento", child: Text("Crecimiento")),
      DropdownMenuItem(value: "Produccion", child: Text("Producción")),
      DropdownMenuItem(value: "Proximo_a_renovacion", child: Text("Proximo a renovación")),
    ];
  }

  static List<DropdownMenuItem<String>> getEstadoCultivo() {
    return const[
      DropdownMenuItem(value: "Excelente", child: Text("Excelente")),
      DropdownMenuItem(value: "Óptimo", child: Text("Óptimo")),
      DropdownMenuItem(value: "Regular", child: Text("Regular")),
      DropdownMenuItem(value: "Malo", child: Text("Malo")),
    ];
  }

  static List<DropdownMenuItem<String>> getTipoManejo() {
    return const[
      DropdownMenuItem(value: "Químico", child: Text("Químico")),
      DropdownMenuItem(value: "Orgánico", child: Text("Orgánico")),
      DropdownMenuItem(value: "Químico_y_Organico", child: Text("Químico y organico")),
      DropdownMenuItem(value: "Otro", child: Text("Otro")),
    ];
  }
}