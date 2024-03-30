import 'package:flutter/material.dart';
import 'dart:typed_data';

import 'package:flutter/widgets.dart';


class CreateFarmProvider extends ChangeNotifier{

  GlobalKey<FormState> formkey = GlobalKey<FormState>();

  Uint8List? _imageSignature;
  ImageProvider? _imageFarm; //* Almacena la firma del agricultor
  bool isLoading = false; //* se vuelve true cuando esta creando el predio y false cuando lo ha terminado de crear.

  String primerNombre = '';
  String primerApellido = '';
  String cedulaAgricultor = '';
  String lugarExpedicion = '';
  String fechaExpedicion = '';
  String celularAgricultor = '';
  String nombreFinca = '';
  String municipioFinca = '';
  String veredaFinca = '';
  String extensionTotal = '';
  String areaCultivadaActualmente = '';
  String areaLibreDestinacion = '';
  String areaConservacion = '';
  String lineaProduccionMasImplementanda = '';
  String linderoNorte = '';
  String linderoSur = '';
  String linderoOriente = '';
  String linderoOccidente = '';
  String latitudPredio = '';
  String longitudPredio = '';
  //String fotoVisita = '';
  //String comentarioVisita = '';

  //* Obtiene la imagen tomada desde el componente de la firma.
  Uint8List? get getImgSignature => _imageSignature;
  ImageProvider? get getImgFarm => _imageFarm;

  //* Asigna el valor obtenido de la firma, a la variable privada _imageSignature 
  set setImgSignature(Uint8List val) {
    _imageSignature = val;
    notifyListeners();
  }

  set setImgFarm(ImageProvider val){
    _imageFarm = val;
    notifyListeners();
  }

  //*Validación del formulario para crear un nuevo predio
  bool isValidForm(){

    //TODO: FALTA AGRREGAR LA FOTO DEL PREDIO

    if(primerNombre == '') return false;
    if(primerApellido == '') return false;
    if(cedulaAgricultor == '') return false;
    if(lugarExpedicion == '') return false;
    if(fechaExpedicion == '') return false;
    if(celularAgricultor == '') return false;
    if(nombreFinca == '') return false;
    if(municipioFinca == '') return false;
    if(veredaFinca == '') return false;
    if(extensionTotal == '') return false;
    if(areaCultivadaActualmente == '') return false;
    if(areaLibreDestinacion == '') return false;
    if(areaConservacion == '') return false;
    if(lineaProduccionMasImplementanda == '') return false;
    if(linderoNorte == '') return false;
    if(linderoSur == '') return false;
    if(linderoOriente == '') return false;
    if(linderoOccidente == '') return false;
    if(latitudPredio == '') return false;
    if(longitudPredio == '') return false;
    //if(comentarioVisita == '') return false;
    if(_imageSignature == null) return false;
    if(_imageFarm == null) return false;

    notifyListeners();

    return true;
  }
}