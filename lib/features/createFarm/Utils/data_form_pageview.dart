import 'package:flutter/material.dart';
import 'package:fundacion_aip_mobile/features/createFarm/createFarm.dart';

class DataPageViewProvider{

  static List<Widget> pageList(){
    return  [
      const DatosContactoTitular(),
      const DatosPredio(),
      const DatosAprendizaje(),
      const DatosLote1(),
      const DatosLote2(),
      const DatosLote3(),
      const DatosLote4(),
      const DatosLote5(),
      DatosVisita()
    ];
  }
}