class Farm {
  final int? idFarm;
  final String firstName; 
  final String? secondName;
  final String firstSurname; 
  final String? secondSurname; 
  final String nitProducer; 
  final String expedition; 
  final String birthdate;
  final String? ethnicity; 
  final String celphone1; 
  final String? celphone2; 
  final String? email; 
  final String? gender; 
  final String? scholarLevel; 
  final String? organization; 
  final String? maritalStatus;
  final String? fullnameSpouse; 
  final String? nitSpouse; 
  final String? expeditionSpouse; 
  final String? dateSpouse; 
  final String? celphoneSpouse;        
  final String? emailSpouse; 
  final String nameFarm; 
  final String municipality; 
  final String? corregimiento; 
  final String vereda; 
  final String? possession;       
  final String totalExtension; 
  final String cropsArea; 
  final String freeArea; 
  final String conservationArea; 
  final String? currentProjects;
  final String? agrochemical; 
  final String? bestPractices; 
  final String? otherAreas; 
  final String? afluentes; 
  final String? vocationAndLandUse;
  final String productiveLine; 
  final String? certificationType; 
  final String purlieuNorth; 
  final String purlieuSouth; 
  final String purlieuEast;
  final String purlieuWest; 
  final String? altura; 
  final String latitudeLongitude; 
  final String? anosPropiedad; 
  final String? productiveLine1; 
  final String? productiveLine2;
  final String? productiveLine3; 
  final String? knowProductiveLine1; 
  final String? knowProductiveLine2; 
  final String? knowPeoductiveLine3;
  final String? comercializationType; 
  final String? biopreparadosProduction; 
  final String? waterAvailable; 
  final String? accessRoads;
  final String? electricityAvailability; 
  final String? ComunicationAvailable; 
  final String? projectParticipation; 
  final String? cropTools;
  final String? firstAidKit; 
  final String? fumigateKit; 
  final String? irrigationSystem; 
  final String? machines; 
  final String? ParticipateInProyects;
  final String? workingCapital; 
  final String? implementationTecnologyLevel; 
  final String? productLine1; 
  final String? variety1; 
  final String? cantPlants1;        
  final String? sowingDistance1; 
  final String? ageCrop1; 
  final String? stageCrop1; 
  final String? cantKgProducedByYear1; 
  final String? cropStatus1; 
  final String? aproxArea1;
  final String? coordenates1;
  final String? useType; 
  final String? promKgComercializateValue; 
  final String? productLine2; 
  final String? variety2; 
  final String? cantPlants2;
  final String? sowingDistance2; 
  final String? ageCrop2; 
  final String? stageCrop2; 
  final String? cantKgProducedByYear2; 
  final String? cropStatus2; 
  final String? aproxArea2;
  final String? coordenates2; 
  final String? useType2; 
  final String? promKgComercializateValu2; 
  final String? productLine3; 
  final String? variety3; 
  final String? cantPlants3;
  final String? sowingDistance3; 
  final String? ageCrop3; 
  final String? stageCrop3; 
  final String? cantKgProducedByYear3; 
  final String? cropStatus3; 
  final String? aproxArea3; 
  final String? coordenates3;
  final String? useType3; 
  final String? promKgComercializateValu3;
  final String? productLine4Pecuaria; 
  final String? breed; 
  final String? cantAnimals;
  final String? numberPlaces; 
  final String? ageAverageAnimals; 
  final String? ageCrop4;
  final String? cantKgProducedByYear4; 
  final String? cropStatus4;
  final String? aproxArea4; 
  final String? coordenates4; 
  final String? nutritionType;
  final String? promKgComercializateValu4; 
  final String? productLine5Pecuaria; 
  final String? breed5;
  final String? cantAnimals5; 
  final String? numberPlaces5; 
  final String? ageAverageAnimals5;
  final String? ageCrop5; 
  final String? cantKgProducedByYear5; 
  final String? cropStatus5;
  final String? aproxArea5; 
  final String? coordenates5; 
  final String? nutritionType5; 
  final String? promKgComercializateValu5;

  Farm({
    this.idFarm, 
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
    this.possession, 
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
    this.ComunicationAvailable, 
    this.projectParticipation, 
    this.cropTools, 
    this.firstAidKit, 
    this.fumigateKit, 
    this.irrigationSystem, 
    this.machines, 
    this.ParticipateInProyects, 
    this.workingCapital, 
    this.implementationTecnologyLevel, 
    this.productLine1, 
    this.variety1, 
    this.cantPlants1, 
    this.sowingDistance1, 
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
    this.sowingDistance2, 
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
    this.sowingDistance3, 
    this.ageCrop3, 
    this.stageCrop3, 
    this.cantKgProducedByYear3, 
    this.cropStatus3, 
    this.aproxArea3, 
    this.coordenates3, 
    this.useType3, 
    this.promKgComercializateValu3, 
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
    this.promKgComercializateValu5
  });

}