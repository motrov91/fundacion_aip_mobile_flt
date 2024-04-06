
import 'package:isar/isar.dart';

part 'farm.g.dart';

@collection
class Farm {

  Id isarId = Isar.autoIncrement; // you can also use id = null to auto increment

  int? id_farm;
  String imgBeneficiario;
  String firstName;
  String? secondName;
  String firstSurname;
  String? secondSurname;
  String nitProducer;
  String expedition;
  String birthdate;
  String? ethnicity;
  String celphone1;
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
  String nameFarm;
  String municipality;
  String? corregimiento;
  String vereda;
  String possession;
  String totalExtension;
  String cropsArea;
  String freeArea;
  String conservationArea;
  String? currentProjects;
  String? agrochemical;
  String? bestPractices;
  String? otherAreas;
  String? afluentes;
  String? vocationAndLandUse;
  String productiveLine;
  String? certificationType;
  String purlieuNorth;
  String purlieuSouth;
  String purlieuEast;
  String purlieuWest;
  String? altura;
  String latitudeLongitude;
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
  int projectId;
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
  int userId;
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

  Farm({
    this.id_farm, 
    required this.imgBeneficiario, 
    required this.firstName, 
    this.secondName, 
    required this.firstSurname, 
    this.secondSurname, 
    required this.nitProducer, 
    required this.expedition, 
    required this.birthdate, 
    this.ethnicity, 
    required this.celphone1, 
    this.celphone2, 
    this.email, 
    this.gender, 
    this.scholarLevel, 
    this.organization, 
    this.maritalStatus, 
    this.fullnameSpouse, 
    this.nitSpouse, 
    this.expeditionSpouse, 
    this.dateSpouse, 
    this.celphoneSpouse, 
    this.emailSpouse, 
    required this.nameFarm, 
    required this.municipality, 
    this.corregimiento, 
    required this.vereda, 
    required this.possession, 
    required this.totalExtension, 
    required this.cropsArea, 
    required this.freeArea, 
    required this.conservationArea, 
    this.currentProjects, 
    this.agrochemical, 
    this.bestPractices, 
    this.otherAreas, 
    this.afluentes, 
    this.vocationAndLandUse, 
    required this.productiveLine, 
    this.certificationType, 
    required this.purlieuNorth, 
    required this.purlieuSouth, 
    required this.purlieuEast, 
    required this.purlieuWest, 
    this.altura, 
    required this.latitudeLongitude, 
    this.anosPropiedad, 
    this.productiveLine1, 
    this.productiveLine2, 
    this.productiveLine3, 
    this.knowProductiveLine1, 
    this.knowProductiveLine2, 
    this.knowPeoductiveLine3, 
    this.comercializationType, 
    this.biopreparadosProduction, 
    this.waterAvailable, 
    this.accessRoads, 
    this.electricityAvailability, 
    this.comunicationAvailable, 
    this.projectParticipation, 
    this.cropTools, 
    this.firstAidKit, 
    this.fumigateKit, 
    this.irrigationSystem, 
    this.machines, 
    this.participateInProyects, 
    this.workingCapital, 
    this.implementationTecnologyLevel, 
    this.productLine1, 
    this.variety1, 
    this.cantPlants1, 
    this.ageCrop1, 
    this.stageCrop1, 
    this.cantKgProducedByYear1, 
    this.cropStatus1, 
    this.aproxArea1, 
    this.coordenates1, 
    this.useType, 
    this.promKgComercializateValue, 
    this.productLine2, 
    this.variety2, 
    this.cantPlants2, 
    this.ageCrop2, 
    this.stageCrop2, 
    this.cantKgProducedByYear2, 
    this.cropStatus2, 
    this.aproxArea2, 
    this.coordenates2, 
    this.useType2, 
    this.promKgComercializateValu2, 
    this.productLine3, 
    this.variety3, 
    this.cantPlants3, 
    this.ageCrop3, 
    this.stageCrop3, 
    this.cantKgProducedByYear3, 
    this.cropStatus3, 
    this.aproxArea3, 
    this.coordenates3, 
    this.useType3, 
    this.promKgComercializateValu3, 
    required this.projectId, 
    this.productLine4Pecuaria, 
    this.breed, 
    this.cantAnimals, 
    this.numberPlaces, 
    this.ageAverageAnimals, 
    this.ageCrop4, 
    this.cantKgProducedByYear4, 
    this.cropStatus4, 
    this.aproxArea4, 
    this.coordenates4, 
    this.nutritionType, 
    this.promKgComercializateValu4, 
    this.productLine5Pecuaria, 
    this.breed5, 
    this.cantAnimals5, 
    this.numberPlaces5, 
    this.ageAverageAnimals5, 
    this.ageCrop5, 
    this.cantKgProducedByYear5, 
    this.cropStatus5, 
    this.aproxArea5, 
    this.coordenates5, 
    this.nutritionType5, 
    this.promKgComercializateValu5, 
    this.productiveLine4, 
    this.productiveLine5, 
    this.imgSignature, 
    this.creationDate, 
    required this.userId, 
    this.comments, 
    this.plantsDistance1, 
    this.groovesDistance1, 
    this.plantsDistance2, 
    this.groovesDistance2, 
    this.plantsDistance3, 
    this.groovesDistance3, 
    this.knowProductiveLine4, 
    this.knowProductiveLine5, 
    this.cantKgByYearLote4, 
    this.priceKgSoldLote4, 
    this.cantKgByYearLote5, 
    this.priceKgSoldLote5, 
    this.timeCreation, 
    this.typeofanimal, 
    this.typeofanimal5,
    this.isModified
  });

  Map<String, dynamic> toMap() {
    return {
      "id_farm": id_farm,
      "imgBeneficiario": imgBeneficiario,
      "firstName": firstName,
      "secondName": secondName,
      "firstSurname": firstSurname,
      "secondSurname": secondSurname,
      "nitProducer": nitProducer,
      "expedition": expedition,
      "birthdate": birthdate,
      "ethnicity": ethnicity,
      "celphone1": celphone1,
      "celphone2": celphone2,
      "email": email,
      "gender": gender,
      "scholarLevel": scholarLevel,
      "organization": organization,
      "maritalStatus": maritalStatus,
      "fullnameSpouse": fullnameSpouse,
      "nitSpouse": nitSpouse,
      "expeditionSpouse": expeditionSpouse,
      "dateSpouse": dateSpouse,
      "celphoneSpouse": celphoneSpouse,
      "emailSpouse": emailSpouse,
      "nameFarm": nameFarm,
      "municipality": municipality,
      "corregimiento": corregimiento,
      "vereda": vereda,
      "possession": possession,
      "totalExtension": totalExtension,
      "cropsArea": cropsArea,
      "freeArea": freeArea,
      "conservationArea": conservationArea,
      "currentProjects": currentProjects,
      "agrochemical": agrochemical,
      "bestPractices": bestPractices,
      "otherAreas": otherAreas,
      "afluentes": afluentes,
      "vocationAndLandUse": vocationAndLandUse,
      "productiveLine": productiveLine,
      "certificationType": certificationType,
      "purlieuNorth": purlieuNorth,
      "purlieuSouth": purlieuSouth,
      "purlieuEast": purlieuEast,
      "purlieuWest": purlieuWest,
      "altura": altura,
      "latitudeLongitude": latitudeLongitude,
      "anosPropiedad": anosPropiedad,
      "productiveLine1": productiveLine1,
      "productiveLine2": productiveLine2,
      "productiveLine3": productiveLine3,
      "knowProductiveLine1": knowProductiveLine1,
      "knowProductiveLine2": knowProductiveLine2,
      "knowPeoductiveLine3": knowPeoductiveLine3,
      "comercializationType": comercializationType,
      "biopreparadosProduction": biopreparadosProduction,
      "waterAvailable": waterAvailable,
      "accessRoads": accessRoads,
      "electricityAvailability": electricityAvailability,
      "comunicationAvailable": comunicationAvailable,
      "projectParticipation": projectParticipation,
      "cropTools": cropTools,
      "firstAidKit": firstAidKit,
      "fumigateKit": fumigateKit,
      "irrigationSystem": irrigationSystem,
      "machines": machines,
      "participateInProyects": participateInProyects,
      "workingCapital": workingCapital,
      "implementationTecnologyLevel": implementationTecnologyLevel,
      "productLine1": productLine1,
      "variety1": variety1,
      "cantPlants1": cantPlants1,
      "ageCrop1": ageCrop1,
      "stageCrop1": stageCrop1,
      "cantKgProducedByYear1": cantKgProducedByYear1,
      "cropStatus1": cropStatus1,
      "aproxArea1": aproxArea1,
      "coordenates1": coordenates1,
      "useType": useType,
      "promKgComercializateValue": promKgComercializateValue,
      "productLine2": productLine2,
      "variety2": variety2,
      "cantPlants2": cantPlants2,
      "ageCrop2": ageCrop2,
      "stageCrop2": stageCrop2,
      "cantKgProducedByYear2": cantKgProducedByYear2,
      "cropStatus2": cropStatus2,
      "aproxArea2": aproxArea2,
      "coordenates2": coordenates2,
      "useType2": useType2,
      "promKgComercializateValu2": promKgComercializateValu2,
      "productLine3": productLine3,
      "variety3": variety3,
      "cantPlants3": cantPlants3,
      "ageCrop3": ageCrop3,
      "stageCrop3": stageCrop3,
      "cantKgProducedByYear3": cantKgProducedByYear3,
      "cropStatus3": cropStatus3,
      "aproxArea3": aproxArea3,
      "coordenates3": coordenates3,
      "useType3": useType3,
      "promKgComercializateValu3": promKgComercializateValu3,
      "projectId": projectId,
      "productLine4Pecuaria": productLine4Pecuaria,
      "breed": breed,
      "cantAnimals": cantAnimals,
      "numberPlaces": numberPlaces,
      "ageAverageAnimals": ageAverageAnimals,
      "ageCrop4": ageCrop4,
      "cantKgProducedByYear4": cantKgProducedByYear4,
      "cropStatus4": cropStatus4,
      "aproxArea4": aproxArea4,
      "coordenates4": coordenates4,
      "nutritionType": nutritionType,
      "promKgComercializateValu4": promKgComercializateValu4,
      "productLine5Pecuaria": productLine5Pecuaria,
      "breed5": breed5,
      "cantAnimals5": cantAnimals5,
      "numberPlaces5": numberPlaces5,
      "ageAverageAnimals5": ageAverageAnimals5,
      "ageCrop5": ageCrop5,
      "cantKgProducedByYear5": cantKgProducedByYear5,
      "cropStatus5": cropStatus5,
      "aproxArea5": aproxArea5,
      "coordenates5": coordenates5,
      "nutritionType5": nutritionType5,
      "promKgComercializateValu5": promKgComercializateValu5,
      "productiveLine4": productiveLine4,
      "productiveLine5": productiveLine5,
      "imgSignature": imgSignature,
      "creationDate": creationDate,
      "userId": userId,
      "comments": comments,
      "plantsDistance1": plantsDistance1,
      "groovesDistance1": groovesDistance1,
      "plantsDistance2": plantsDistance2,
      "groovesDistance2": groovesDistance2,
      "plantsDistance3": plantsDistance3,
      "groovesDistance3": groovesDistance3,
      "knowProductiveLine4": knowProductiveLine4,
      "knowProductiveLine5": knowProductiveLine5,
      "cantKgByYearLote4": cantKgByYearLote4,
      "priceKgSoldLote4": priceKgSoldLote4,
      "cantKgByYearLote5": cantKgByYearLote5,
      "priceKgSoldLote5": priceKgSoldLote5,
      "timeCreation": timeCreation,
      "typeofanimal": typeofanimal,
      "typeofanimal5": typeofanimal5,
      "isModified": isModified,   
    };
  }

  @override
  String toString() {
    return 'Farm { id_farm : $id_farm, imgBeneficiario : $imgBeneficiario, firstName : $firstName, secondName : $secondName, firstSurname : $firstSurname, secondSurname : $secondSurname, nitProducer : $nitProducer, expedition : $expedition, birthdate : $birthdate, ethnicity : $ethnicity, celphone1 : $celphone1, celphone2 : $celphone2, email : $email, gender : $gender, scholarLevel : $scholarLevel, organization : $organization, maritalStatus : $maritalStatus, fullnameSpouse : $fullnameSpouse, nitSpouse : $nitSpouse, expeditionSpouse : $expeditionSpouse, dateSpouse : $dateSpouse, celphoneSpouse : $celphoneSpouse, emailSpouse : $emailSpouse, nameFarm : $nameFarm, municipality : $municipality, corregimiento : $corregimiento, vereda : $vereda, possession : $possession, totalExtension : $totalExtension, cropsArea : $cropsArea, freeArea : $freeArea, conservationArea : $conservationArea, currentProjects : $currentProjects, agrochemical : $agrochemical, bestPractices : $bestPractices, otherAreas : $otherAreas, afluentes : $afluentes, vocationAndLandUse : $vocationAndLandUse, productiveLine : $productiveLine, certificationType : $certificationType, purlieuNorth : $purlieuNorth, purlieuSouth : $purlieuSouth, purlieuEast : $purlieuEast, purlieuWest : $purlieuWest, altura : $altura, latitudeLongitude : $latitudeLongitude, anosPropiedad : $anosPropiedad, productiveLine1 : $productiveLine1, productiveLine2 : $productiveLine2, productiveLine3 : $productiveLine3, knowProductiveLine1 : $knowProductiveLine1, knowProductiveLine2 : $knowProductiveLine2, knowPeoductiveLine3 : $knowPeoductiveLine3, comercializationType : $comercializationType, biopreparadosProduction : $biopreparadosProduction, waterAvailable : $waterAvailable, accessRoads : $accessRoads, electricityAvailability : $electricityAvailability, comunicationAvailable : $comunicationAvailable, projectParticipation : $projectParticipation, cropTools : $cropTools, firstAidKit : $firstAidKit, fumigateKit : $fumigateKit, irrigationSystem : $irrigationSystem, machines : $machines, participateInProyects : $participateInProyects, workingCapital : $workingCapital, implementationTecnologyLevel : $implementationTecnologyLevel, productLine1 : $productLine1, variety1 : $variety1, cantPlants1 : $cantPlants1, ageCrop1 : $ageCrop1, stageCrop1 : $stageCrop1, cantKgProducedByYear1 : $cantKgProducedByYear1, cropStatus1 : $cropStatus1, aproxArea1 : $aproxArea1, coordenates1 : $coordenates1, useType : $useType, promKgComercializateValue : $promKgComercializateValue, productLine2 : $productLine2, variety2 : $variety2, cantPlants2 : $cantPlants2, ageCrop2 : $ageCrop2, stageCrop2 : $stageCrop2, cantKgProducedByYear2 : $cantKgProducedByYear2, cropStatus2 : $cropStatus2, aproxArea2 : $aproxArea2, coordenates2 : $coordenates2, useType2 : $useType2, promKgComercializateValu2 : $promKgComercializateValu2, productLine3 : $productLine3, variety3 : $variety3, cantPlants3 : $cantPlants3, ageCrop3 : $ageCrop3, stageCrop3 : $stageCrop3, cantKgProducedByYear3 : $cantKgProducedByYear3, cropStatus3 : $cropStatus3, aproxArea3 : $aproxArea3, coordenates3 : $coordenates3, useType3 : $useType3, promKgComercializateValu3 : $promKgComercializateValu3, projectId : $projectId, productLine4Pecuaria : $productLine4Pecuaria, breed : $breed, cantAnimals : $cantAnimals, numberPlaces : $numberPlaces, ageAverageAnimals : $ageAverageAnimals, ageCrop4 : $ageCrop4, cantKgProducedByYear4 : $cantKgProducedByYear4, cropStatus4 : $cropStatus4, aproxArea4 : $aproxArea4, coordenates4 : $coordenates4, nutritionType : $nutritionType, promKgComercializateValu4 : $promKgComercializateValu4, productLine5Pecuaria : $productLine5Pecuaria, breed5 : $breed5, cantAnimals5 : $cantAnimals5, numberPlaces5 : $numberPlaces5, ageAverageAnimals5 : $ageAverageAnimals5, ageCrop5 : $ageCrop5, cantKgProducedByYear5 : $cantKgProducedByYear5, cropStatus5 : $cropStatus5, aproxArea5 : $aproxArea5, coordenates5 : $coordenates5, nutritionType5 : $nutritionType5, promKgComercializateValu5 : $promKgComercializateValu5, productiveLine4 : $productiveLine4, productiveLine5 : $productiveLine5, imgSignature : $imgSignature, creationDate : $creationDate, userId : $userId, comments : $comments, plantsDistance1 : $plantsDistance1, groovesDistance1 : $groovesDistance1, plantsDistance2 : $plantsDistance2, groovesDistance2 : $groovesDistance2, plantsDistance3 : $plantsDistance3, groovesDistance3 : $groovesDistance3, knowProductiveLine4 : $knowProductiveLine4, knowProductiveLine5 : $knowProductiveLine5, cantKgByYearLote4 : $cantKgByYearLote4, priceKgSoldLote4 : $priceKgSoldLote4, cantKgByYearLote5 : $cantKgByYearLote5, priceKgSoldLote5 : $priceKgSoldLote5, timeCreation : $timeCreation, typeofanimal : $typeofanimal, typeofanimal5 : $typeofanimal5, isModified : $isModified }';
  }

  static void extractAsignations(Farm exist, Farm farm){
    //* Funciona pero tengo me crea una nueva instancia de Farm
    // existProps.forEach((key, value){
    //   if(farmProps.containsKey(key)){
    //     if(existProps[key] == farmProps[key]){
    //       existProps[key] = farmProps[key];
    //     }
    //   }
    // });
    exist.id_farm = farm.id_farm;
    exist.imgBeneficiario = farm.imgBeneficiario;
    exist.firstName = farm.firstName;
    exist.secondName = farm.secondName;
    exist.firstSurname = farm.firstSurname;
    exist.secondSurname = farm.secondSurname;
    exist.nitProducer = farm.nitProducer;
    exist.expedition = farm.expedition;
    exist.birthdate = farm.birthdate;
    exist.ethnicity = farm.ethnicity;
    exist.celphone1 = farm.celphone1;
    exist.celphone2 = farm.celphone2;
    exist.email = farm.email;
    exist.gender = farm.gender;
    exist.scholarLevel = farm.scholarLevel;
    exist.organization = farm.organization;
    exist.maritalStatus = farm.maritalStatus;
    exist.fullnameSpouse = farm.fullnameSpouse;
    exist.nitSpouse = farm.nitSpouse;
    exist.expeditionSpouse = farm.expeditionSpouse;
    exist.dateSpouse = farm.dateSpouse;
    exist.celphoneSpouse = farm.celphoneSpouse;
    exist.emailSpouse = farm.emailSpouse;
    exist.nameFarm = farm.nameFarm;
    exist.municipality = farm.municipality;
    exist.corregimiento = farm.corregimiento;
    exist.vereda = farm.vereda;
    exist.possession = farm.possession;
    exist.totalExtension = farm.totalExtension;
    exist.cropsArea = farm.cropsArea;
    exist.freeArea = farm.freeArea;
    exist.conservationArea = farm.conservationArea;
    exist.currentProjects = farm.currentProjects;
    exist.agrochemical = farm.agrochemical;
    exist.bestPractices = farm.bestPractices;
    exist.otherAreas = farm.otherAreas;
    exist.afluentes = farm.afluentes;
    exist.vocationAndLandUse = farm.vocationAndLandUse;
    exist.productiveLine = farm.productiveLine;
    exist.certificationType = farm.certificationType;
    exist.purlieuNorth = farm.purlieuNorth;
    exist.purlieuSouth = farm.purlieuSouth;
    exist.purlieuEast = farm.purlieuEast;
    exist.purlieuWest = farm.purlieuWest;
    exist.altura = farm.altura;
    exist.latitudeLongitude = farm.latitudeLongitude;
    exist.anosPropiedad = farm.anosPropiedad;
    exist.productLine1 = farm.productLine1;
    exist.productLine2 = farm.productLine2;
    exist.productLine3 = farm.productLine3;
    exist.knowProductiveLine1 = farm.knowProductiveLine1;
    exist.knowProductiveLine2 = farm.knowProductiveLine2;
    exist.knowPeoductiveLine3 = farm.knowPeoductiveLine3;
    exist.comercializationType = farm.comercializationType;
    exist.biopreparadosProduction = farm.biopreparadosProduction;
    exist.waterAvailable = farm.waterAvailable;
    exist.accessRoads = farm.accessRoads;
    exist.electricityAvailability = farm.electricityAvailability;
    exist.comunicationAvailable = farm.comunicationAvailable;
    exist.projectParticipation = farm.projectParticipation;
    exist.cropTools = farm.cropTools;
    exist.firstAidKit = farm.firstAidKit;
    exist.fumigateKit = farm.fumigateKit;
    exist.irrigationSystem = farm.irrigationSystem;
    exist.machines = farm.machines;
    exist.participateInProyects = farm.participateInProyects;
    exist.workingCapital = farm.workingCapital;
    exist.implementationTecnologyLevel = farm.implementationTecnologyLevel;
    exist.productLine1 = farm.productLine1;
    exist.variety1 = farm.variety1;
    exist.cantPlants1 = farm.cantPlants1;
    exist.ageCrop1 = farm.ageCrop1;
    exist.stageCrop1 = farm.stageCrop1;
    exist.cantKgProducedByYear1 = farm.cantKgProducedByYear1;
    exist.cropStatus1 = farm.cropStatus1;
    exist.aproxArea1 = farm.aproxArea1;
    exist.coordenates1 = farm.coordenates1;
    exist.useType = farm.useType;
    exist.promKgComercializateValue = farm.promKgComercializateValue;
    exist.productLine2 = farm.productLine2;
    exist.variety2 = farm.variety2;
    exist.cantPlants2 = farm.cantPlants2;
    exist.ageCrop2 = farm.ageCrop2;
    exist.stageCrop2 = farm.stageCrop2;
    exist.cantKgProducedByYear2 = farm.cantKgProducedByYear2;
    exist.cropStatus2 = farm.cropStatus2;
    exist.aproxArea2 = farm.aproxArea2;
    exist.coordenates2 = farm.coordenates2;
    exist.useType2 = farm.useType2;
    exist.promKgComercializateValu2 = farm.promKgComercializateValu2;
    exist.productLine3 = farm.productLine3;
    exist.variety3 = farm.variety3;
    exist.cantPlants3 = farm.cantPlants3;
    exist.ageCrop3 = farm.ageCrop3;
    exist.stageCrop3 = farm.stageCrop3;
    exist.cantKgProducedByYear3 = farm.cantKgProducedByYear3;
    exist.cropStatus3 = farm.cropStatus3;
    exist.aproxArea3 = farm.aproxArea3;
    exist.coordenates3 = farm.coordenates3;
    exist.useType3 = farm.useType3;
    exist.promKgComercializateValu3 = farm.promKgComercializateValu3;
    exist.projectId = farm.projectId;
    exist.productLine4Pecuaria = farm.productLine4Pecuaria;
    exist.breed = farm.breed;
    exist.cantAnimals = farm.cantAnimals;
    exist.numberPlaces = farm.numberPlaces;
    exist.ageAverageAnimals = farm.ageAverageAnimals;
    exist.ageCrop4 = farm.ageCrop4;
    exist.cantKgProducedByYear4 = farm.cantKgProducedByYear4;
    exist.cropStatus4 = farm.cropStatus4;
    exist.aproxArea4 = farm.aproxArea4;
    exist.coordenates4 = farm.coordenates4;
    exist.nutritionType = farm.nutritionType;
    exist.promKgComercializateValu4 = farm.promKgComercializateValu4;
    exist.productLine5Pecuaria = farm.productLine5Pecuaria;
    exist.breed5 = farm.breed5;
    exist.cantAnimals5 = farm.cantAnimals5;
    exist.numberPlaces5 = farm.numberPlaces5;
    exist.ageAverageAnimals5 = farm.ageAverageAnimals5;
    exist.ageCrop5 = farm.ageCrop5;
    exist.cantKgProducedByYear5 = farm.cantKgProducedByYear5;
    exist.cropStatus5 = farm.cropStatus5;
    exist.aproxArea5 = farm.aproxArea5;
    exist.coordenates5 = farm.coordenates5;
    exist.nutritionType5 = farm.nutritionType5;
    exist.promKgComercializateValu5 = farm.promKgComercializateValu5;
    exist.productiveLine4 = farm.productiveLine4;
    exist.productiveLine5 = farm.productiveLine5;
    exist.imgSignature = farm.imgSignature;
    exist.creationDate = farm.creationDate;
    exist.userId = farm.userId;
    exist.comments = farm.comments;
    exist.plantsDistance1 = farm.plantsDistance1;
    exist.groovesDistance1 = farm.groovesDistance1;
    exist.plantsDistance2 = farm.plantsDistance2;
    exist.groovesDistance2 = farm.groovesDistance2;
    exist.plantsDistance3 = farm.plantsDistance3;
    exist.groovesDistance3 = farm.groovesDistance3;
    exist.knowProductiveLine4 = farm.knowProductiveLine4;
    exist.knowProductiveLine5 = farm.knowProductiveLine5;
    exist.cantKgByYearLote4 = farm.cantKgByYearLote4;
    exist.priceKgSoldLote4 = farm.priceKgSoldLote4;
    exist.cantKgByYearLote5 = farm.cantKgByYearLote5;
    exist.priceKgSoldLote5 = farm.priceKgSoldLote5;
    exist.timeCreation = farm.timeCreation;
    exist.typeofanimal = farm.typeofanimal;
    exist.typeofanimal5 = farm.typeofanimal5;

  }

}