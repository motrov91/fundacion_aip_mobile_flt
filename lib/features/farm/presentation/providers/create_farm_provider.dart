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
  String fotoVisita = '';
  String comentarioVisita = '';
  String? secondName;
  String? secondSurname;
  String? ethnicity;
  String? celphone2;
  String? email;
  String? gender;
  String? scholarLevel;
  String? organization;
  String? maritalStatus;
  String? fullnameSpouse;
  String? nitSpouse;
  String? expeditionSpouse;
  String? dateSpouse;
  String? celphoneSpouse;
  String? emailSpouse;
  String? corregimiento;
  String? currentProjects;
  String? agrochemical;
  String? bestPractices;
  String? otherAreas;
  String? afluentes;
  String? vocationAndLandUse;
  String? certificationType;
  String? altura;
  String? anosPropiedad;
  String? productiveLine1;
  String? productiveLine2;
  String? productiveLine3;
  String? knowProductiveLine1;
  String? knowProductiveLine2;
  String? knowPeoductiveLine3;
  String? comercializationType;
  String? biopreparadosProduction;
  String? waterAvailable;
  String? accessRoads;
  String? electricityAvailability;
  String? comunicationAvailable;
  String? projectParticipation;
  String? cropTools;
  String? firstAidKit;
  String? fumigateKit;
  String? irrigationSystem;
  String? machines;
  String? participateInProyects;
  String? workingCapital;
  String? implementationTecnologyLevel;
  String? productLine1;
  String? variety1;
  String? cantPlants1;
  String? ageCrop1;
  String? stageCrop1;
  String? cantKgProducedByYear1;
  String? cropStatus1;
  String? aproxArea1;
  String? coordenates1;
  String? useType;
  String? promKgComercializateValue;
  String? productLine2;
  String? variety2;
  String? cantPlants2;
  String? ageCrop2;
  String? stageCrop2;
  String? cantKgProducedByYear2;
  String? cropStatus2;
  String? aproxArea2;
  String? coordenates2;
  String? useType2;
  String? promKgComercializateValu2;
  String? productLine3;
  String? variety3;
  String? cantPlants3;
  String? ageCrop3;
  String? stageCrop3;
  String? cantKgProducedByYear3;
  String? cropStatus3;
  String? aproxArea3;
  String? coordenates3;
  String? useType3;
  String? promKgComercializateValu3;
  String? productLine4Pecuaria;
  String? breed;
  String? cantAnimals;
  String? numberPlaces;
  String? ageAverageAnimals;
  String? ageCrop4;
  String? cantKgProducedByYear4;
  String? cropStatus4;
  String? aproxArea4;
  String? coordenates4;
  String? nutritionType;
  String? promKgComercializateValu4;
  String? productLine5Pecuaria;
  String? breed5;
  String? cantAnimals5;
  String? numberPlaces5;
  String? ageAverageAnimals5;
  String? ageCrop5;
  String? cantKgProducedByYear5;
  String? cropStatus5;
  String? aproxArea5;
  String? coordenates5;
  String? nutritionType5;
  String? promKgComercializateValu5;
  String? productiveLine4;
  String? productiveLine5;
  String? imgSignature;
  String? creationDate;
  String? comments;
  String? plantsDistance1;
  String? groovesDistance1;
  String? plantsDistance2;
  String? groovesDistance2;
  String? plantsDistance3;
  String? groovesDistance3;
  String? knowProductiveLine4;
  String? knowProductiveLine5;
  String? cantKgByYearLote4;
  String? priceKgSoldLote4;
  String? cantKgByYearLote5;
  String? priceKgSoldLote5;
  String? timeCreation;
  String? typeofanimal;
  String? typeofanimal5;
  bool? isModified;

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

  Future<void> saveFarm(int userId,int projectId) async{

    const storage = FlutterSecureStorage();

    final user = await storage.read(key: 'userId');
    final project = await storage.read(key: 'projectId');

    final newFarm = Farm(
      imgBeneficiario: '', 
      firstName: primerNombre, 
      firstSurname: primerApellido, 
      nitProducer: cedulaAgricultor, 
      expedition: lugarExpedicion, 
      birthdate: '', 
      celphone1: celularAgricultor, 
      nameFarm: nombreFinca, 
      municipality: municipioFinca, 
      vereda: veredaFinca, 
      possession: '', 
      totalExtension: extensionTotal, 
      cropsArea: areaCultivadaActualmente, 
      freeArea: areaLibreDestinacion, 
      conservationArea: areaConservacion, 
      productiveLine: lineaProduccionMasImplementanda, 
      purlieuNorth: linderoNorte, 
      purlieuSouth: linderoSur, 
      purlieuEast: linderoOriente, 
      purlieuWest: linderoOccidente, 
      latitudeLongitude: latitudPredio, 
      projectId: int.parse(project!), 
      userId: int.parse(user!),
      secondName: secondName,
      secondSurname: secondSurname,
      ethnicity: ethnicity,
      celphone2: celphone2,
      email: email,
      gender: gender,
      scholarLevel: scholarLevel,
      organization: organization,
      maritalStatus: maritalStatus,
      fullnameSpouse: fullnameSpouse,
      nitSpouse: nitSpouse,
      expeditionSpouse: expeditionSpouse,
      dateSpouse: dateSpouse,
      celphoneSpouse: celphoneSpouse,
      emailSpouse: emailSpouse,
      corregimiento: corregimiento,
      currentProjects: currentProjects,
      agrochemical: agrochemical,
      bestPractices: bestPractices,
      otherAreas: otherAreas,
      afluentes: afluentes,
      vocationAndLandUse: vocationAndLandUse,
      certificationType: certificationType,
      altura: altura,
      anosPropiedad: anosPropiedad,
      productiveLine1: productiveLine1,
      productiveLine2: productiveLine2,
      productiveLine3: productiveLine3,
      knowProductiveLine1: knowProductiveLine1,
      knowProductiveLine2: knowProductiveLine2,
      knowPeoductiveLine3: knowPeoductiveLine3,
      comercializationType: comercializationType,
      biopreparadosProduction: biopreparadosProduction,
      waterAvailable: waterAvailable,
      accessRoads: accessRoads,
      electricityAvailability: electricityAvailability,
      comunicationAvailable: comunicationAvailable,
      projectParticipation: projectParticipation,
      cropTools: cropTools,
      firstAidKit: firstAidKit,
      fumigateKit: fumigateKit,
      irrigationSystem: irrigationSystem,
      machines: machines,
      participateInProyects: participateInProyects,
      workingCapital: workingCapital,
      implementationTecnologyLevel: implementationTecnologyLevel,
      productLine1: productLine1,
      variety1: variety1,
      cantPlants1: cantPlants1,
      ageCrop1: ageCrop1,
      stageCrop1: stageCrop1,
      cantKgProducedByYear1: cantKgProducedByYear1,
      cropStatus1: cropStatus1,
      aproxArea1: aproxArea1,
      coordenates1: coordenates1,
      useType: useType,
      promKgComercializateValue: promKgComercializateValue,
      productLine2: productLine2,
      variety2: variety2,
      cantPlants2: cantPlants2,
      ageCrop2: ageCrop2,
      stageCrop2: stageCrop2,
      cantKgProducedByYear2: cantKgProducedByYear2,
      cropStatus2: cropStatus2,
      aproxArea2: aproxArea2,
      coordenates2: coordenates2,
      useType2: useType2,
      promKgComercializateValu2: promKgComercializateValu2,
      productLine3: productLine3,
      variety3: variety3,
      cantPlants3: cantPlants3,
      ageCrop3: ageCrop3,
      stageCrop3: stageCrop3,
      cantKgProducedByYear3: cantKgProducedByYear3,
      cropStatus3: cropStatus3,
      aproxArea3: aproxArea3,
      coordenates3: coordenates3,
      useType3: useType3,
      promKgComercializateValu3: promKgComercializateValu3,
      productLine4Pecuaria: productLine4Pecuaria,
      breed: breed,
      cantAnimals: cantAnimals,
      numberPlaces: numberPlaces,
      ageAverageAnimals: ageAverageAnimals,
      ageCrop4: ageCrop4,
      cantKgProducedByYear4: cantKgProducedByYear4,
      cropStatus4: cropStatus4,
      aproxArea4: aproxArea4,
      coordenates4: coordenates4,
      nutritionType: nutritionType,
      promKgComercializateValu4: promKgComercializateValu4,
      productLine5Pecuaria: productLine5Pecuaria,
      breed5: breed5,
      cantAnimals5: cantAnimals5,
      numberPlaces5: numberPlaces5,
      ageAverageAnimals5: ageAverageAnimals5,
      ageCrop5: ageCrop5,
      cantKgProducedByYear5: cantKgProducedByYear5,
      cropStatus5: cropStatus5,
      aproxArea5: aproxArea5,
      coordenates5: coordenates5,
      nutritionType5: nutritionType5,
      promKgComercializateValu5: promKgComercializateValu5,
      productiveLine4: productiveLine4,
      productiveLine5: productiveLine5,
      imgSignature: imgSignature,
      creationDate: creationDate,
      comments: comments,
      plantsDistance1: plantsDistance1,
      groovesDistance1: groovesDistance1,
      plantsDistance2: plantsDistance2,
      groovesDistance2: groovesDistance2,
      plantsDistance3: plantsDistance3,
      groovesDistance3: groovesDistance3,
      knowProductiveLine4: knowProductiveLine4,
      knowProductiveLine5: knowProductiveLine5,
      cantKgByYearLote4: cantKgByYearLote4,
      priceKgSoldLote4: priceKgSoldLote4,
      cantKgByYearLote5: cantKgByYearLote5,
      priceKgSoldLote5: priceKgSoldLote5,
      timeCreation: timeCreation,
      typeofanimal: typeofanimal,
      typeofanimal5: typeofanimal5,
      isModified: true,
    );

    await _isarRepository.createFarm(newFarm);

  }
}