import 'dart:convert';

import 'package:flutter/material.dart';
import 'dart:typed_data';

import 'package:flutter/widgets.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:fundacion_aip_mobile/features/farm/domain/entities/farm.dart';
import 'package:fundacion_aip_mobile/features/farm/domain/repositories/local_storage_repository.dart';


class CreateFarmProvider extends ChangeNotifier{

  GlobalKey<FormState> formkey = GlobalKey<FormState>();

  Uint8List? _imageSignature;
  ImageProvider? _imageFarm; //* Almacena la firma del agricultor
  bool isLoading = false; //* se vuelve true cuando esta creando el predio y false cuando lo ha terminado de crear.
  LocalStorageRepository _isarRepository;

  Farm createNewFarm = Farm();

  CreateFarmProvider(this._isarRepository);

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

    if(createNewFarm.firstName == null) return false;
    if(createNewFarm.firstSurname == null) return false;
    if(createNewFarm.nitProducer == null) return false;
    if(createNewFarm.expedition == null) return false;
    if(createNewFarm.birthdate == null) return false;
    if(createNewFarm.nitProducer == null) return false;
    if(createNewFarm.nameFarm == null) return false;
    if(createNewFarm.municipality == null) return false;
    if(createNewFarm.vereda == null) return false;
    if(createNewFarm.possession == null) return false;
    if(createNewFarm.totalExtension == null) return false;
    if(createNewFarm.cropsArea == null) return false;
    if(createNewFarm.freeArea == null) return false;
    if(createNewFarm.conservationArea == null) return false;
    if(createNewFarm.productiveLine == null) return false;
    if(createNewFarm.purlieuNorth == null) return false;
    if(createNewFarm.purlieuSouth == null) return false;
    if(createNewFarm.purlieuWest == null) return false;
    if(createNewFarm.purlieuEast == null) return false;
    if(createNewFarm.latitudeLongitude == null) return false;

    // if(comentarioVisita == '') return false;
    // if(_imageSignature == null) return false;
    // if(_imageFarm == null) return false;

    notifyListeners();

    return true;
  }

  Future<Farm?> saveFarm() async{

    const storage = FlutterSecureStorage();

    final user = await storage.read(key: 'userId');
    final project = await storage.read(key: 'projectId');

    if(_imageSignature != null){
      createNewFarm.imgSignature = base64Encode(_imageSignature!);
    }

    createNewFarm.projectId = int.parse(project!);
    createNewFarm.userId = int.parse(user!);
    createNewFarm.isarId = null;
    createNewFarm.isModified = true;

    final farm = await _isarRepository.createFarm(createNewFarm);

    createNewFarm = Farm();   

    return farm; 

  }
}