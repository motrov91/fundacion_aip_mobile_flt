// To parse this JSON data, do
//
//     final farmResponse = farmResponseFromJson(jsonString);

import 'dart:convert';

import 'package:fundacion_aip_mobile/features/farm/domain/entities/farm.dart';

FarmResponse farmResponseFromJson(String str) => FarmResponse.fromJson(json.decode(str));

String farmResponseToJson(FarmResponse data) => json.encode(data.toJson());

class FarmResponse {
    final List<Resultado> resultado;

    FarmResponse({
        required this.resultado,
    });

    factory FarmResponse.fromJson(Map<String, dynamic> json) => FarmResponse(
        resultado: List<Resultado>.from(json["resultado"].map((x) => Resultado.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "resultado": List<dynamic>.from(resultado.map((x) => x.toJson())),
    };

    static Future<List<Farm>> farmJsonToEntity(Map<String, dynamic> json) async{
      List<Farm> farmListCharacterization = [];

      await json["resultado"].forEach((item){

        final itemFarm = Farm(
          idFarm: item['idFarm'],
          imgBeneficiario: item['img_beneficiario'], 
          firstName: item['firstName'], 
          secondName: item['secondName'], 
          firstSurname: item['firstSurname'], 
          secondSurname: item['secondSurname'], 
          nitProducer: item['nitProducer'], 
          expedition: item['expedition'], 
          birthdate: item['birthdate'], 
          ethnicity: item['ethnicity'], 
          celphone1: item['celphone1'], 
          celphone2: item['celphone2'], 
          email: item['email'], 
          gender: item['gender'], 
          scholarLevel: item['scholarLevel'], 
          organization: item['organization'], 
          maritalStatus: item['maritalStatus'], 
          fullnameSpouse: item['fullnameSpouse'], 
          nitSpouse: item['nitSpouse'], 
          expeditionSpouse: item['expeditionSpouse'], 
          dateSpouse: item['dateSpouse'], 
          celphoneSpouse: item['celphoneSpouse'], 
          emailSpouse: item['emailSpouse'], 
          nameFarm: item['nameFarm'], 
          municipality: item['municipality'], 
          corregimiento: item['corregimiento'], 
          vereda: item['vereda'], 
          possession: item['possession'], 
          totalExtension: item['totalExtension'], 
          cropsArea: item['cropsArea'], 
          freeArea: item['freeArea'], 
          conservationArea: item['conservationArea'], 
          currentProjects: item['currentProjects'], 
          agrochemical: item['agrochemical'], 
          bestPractices: item['bestPractices'], 
          otherAreas: item['otherAreas'], 
          afluentes: item['afluentes'], 
          vocationAndLandUse: item['vocationAndLandUse'], 
          productiveLine: item['productiveLine'], 
          certificationType: item['certificationType'], 
          purlieuNorth: item['purlieuNorth'], 
          purlieuSouth: item['purlieuSouth'], 
          purlieuEast: item['purlieuEast'], 
          purlieuWest: item['purlieuWest'], 
          altura: item['altura'], 
          latitudeLongitude: item['latitudeLongitude'], 
          anosPropiedad: item['anosPropiedad'], 
          productiveLine1: item['productiveLine1'], 
          productiveLine2: item['productiveLine2'], 
          productiveLine3: item['productiveLine3'], 
          knowProductiveLine1: item['knowProductiveLine1'], 
          knowProductiveLine2: item['knowProductiveLine2'], 
          knowPeoductiveLine3: item['knowPeoductiveLine3'], 
          comercializationType: item['comercializationType'], 
          biopreparadosProduction: item['biopreparadosProduction'], 
          waterAvailable: item['waterAvailable'], 
          accessRoads: item['accessRoads'], 
          electricityAvailability: item['electricityAvailability'], 
          comunicationAvailable: item['comunicationAvailable'], 
          projectParticipation: item['projectParticipation'], 
          cropTools: item['cropTools'], 
          firstAidKit: item['firstAidKit'], 
          fumigateKit: item['fumigateKit'], 
          irrigationSystem: item['irrigationSystem'], 
          machines: item['machines'], 
          participateInProyects: item['participateInProyects'], 
          workingCapital: item['workingCapital'], 
          implementationTecnologyLevel: item['implementationTecnologyLevel'], 
          productLine1: item['productLine1'], 
          variety1: item['variety1'], 
          cantPlants1: item['cantPlants1'], 
          ageCrop1: item['ageCrop1'], 
          stageCrop1: item['stageCrop1'], 
          cantKgProducedByYear1: item['cantKgProducedByYear1'], 
          cropStatus1: item['cropStatus1'], 
          aproxArea1: item['aproxArea1'], 
          coordenates1: item['coordenates1'], 
          useType: item['useType'], 
          promKgComercializateValue: item['promKgComercializateValue'], 
          productLine2: item['productLine2'], 
          variety2: item['variety2'], 
          cantPlants2: item['cantPlants2'], 
          ageCrop2: item['ageCrop2'], 
          stageCrop2: item['stageCrop2'], 
          cantKgProducedByYear2: item['cantKgProducedByYear2'], 
          cropStatus2: item['cropStatus2'], 
          aproxArea2: item['aproxArea2'], 
          coordenates2: item['coordenates2'], 
          useType2: item['useType2'], 
          promKgComercializateValu2: item['promKgComercializateValu2'], 
          productLine3: item['productLine3'], 
          variety3: item['variety3'], 
          cantPlants3: item['cantPlants3'], 
          ageCrop3: item['ageCrop3'], 
          stageCrop3: item['stageCrop3'], 
          cantKgProducedByYear3: item['cantKgProducedByYear3'], 
          cropStatus3: item['cropStatus3'], 
          aproxArea3: item['aproxArea3'], 
          coordenates3: item['coordenates3'], 
          useType3: item['useType3'], 
          promKgComercializateValu3: item['promKgComercializateValu3'], 
          projectId: item['projectId'], 
          productLine4Pecuaria: item['productLine4Pecuaria'], 
          breed: item['breed'], 
          cantAnimals: item['cantAnimals'], 
          numberPlaces: item['numberPlaces'], 
          ageAverageAnimals: item['ageAverageAnimals'], 
          ageCrop4: item['ageCrop4'], 
          cantKgProducedByYear4: item['cantKgProducedByYear4'], 
          cropStatus4: item['cropStatus4'], 
          aproxArea4: item['aproxArea4'], 
          coordenates4: item['coordenates4'], 
          nutritionType: item['nutritionType'], 
          promKgComercializateValu4: item['promKgComercializateValu4'], 
          productLine5Pecuaria: item['productLine5Pecuaria'], 
          breed5: item['breed5'], 
          cantAnimals5: item['cantAnimals5'], 
          numberPlaces5: item['numberPlaces5'], 
          ageAverageAnimals5: item['ageAverageAnimals5'], 
          ageCrop5: item['ageCrop5'], 
          cantKgProducedByYear5: item['cantKgProducedByYear5'], 
          cropStatus5: item['cropStatus5'], 
          aproxArea5: item['aproxArea5'], 
          coordenates5: item['coordenates5'], 
          nutritionType5: item['nutritionType5'], 
          promKgComercializateValu5: item['promKgComercializateValu5'], 
          productiveLine4: item['productiveLine4'], 
          productiveLine5: item['productiveLine5'], 
          imgSignature: item['imgSignature'], 
          creationDate: item['creationDate'], 
          userId: item['userId'], 
          comments: item['comments'], 
          plantsDistance1: item['plantsDistance1'], 
          groovesDistance1: item['groovesDistance1'], 
          plantsDistance2: item['plantsDistance2'], 
          groovesDistance2: item['groovesDistance2'], 
          plantsDistance3: item['plantsDistance3'], 
          groovesDistance3: item['groovesDistance3'], 
          knowProductiveLine4: item['knowProductiveLine4'], 
          knowProductiveLine5: item['knowProductiveLine5'], 
          cantKgByYearLote4: item['cantKgByYearLote4'], 
          priceKgSoldLote4: item['priceKgSoldLote4'], 
          cantKgByYearLote5: item['cantKgByYearLote5'], 
          priceKgSoldLote5: item['priceKgSoldLote5'], 
          timeCreation: item['timeCreation'], 
          typeofanimal: item['typeofanimal'], 
          typeofanimal5: item['typeofanimal5'], 
        );

        farmListCharacterization.add(itemFarm);
        
      });

      return farmListCharacterization;

    }
}

class Resultado {
    final int idFarm;
    final String imgBeneficiario;
    final String firstName;
    final String secondName;
    final String firstSurname;
    final dynamic secondSurname;
    final String nitProducer;
    final String expedition;
    final String birthdate;
    final String ethnicity;
    final String celphone1;
    final dynamic celphone2;
    final dynamic email;
    final String gender;
    final String scholarLevel;
    final dynamic organization;
    final String maritalStatus;
    final dynamic fullnameSpouse;
    final dynamic nitSpouse;
    final dynamic expeditionSpouse;
    final dynamic dateSpouse;
    final dynamic celphoneSpouse;
    final dynamic emailSpouse;
    final String nameFarm;
    final String municipality;
    final dynamic corregimiento;
    final String vereda;
    final String possession;
    final String totalExtension;
    final String cropsArea;
    final String freeArea;
    final String conservationArea;
    final dynamic currentProjects;
    final String agrochemical;
    final String bestPractices;
    final dynamic otherAreas;
    final dynamic afluentes;
    final String vocationAndLandUse;
    final String productiveLine;
    final dynamic certificationType;
    final String purlieuNorth;
    final String purlieuSouth;
    final String purlieuEast;
    final String purlieuWest;
    final dynamic altura;
    final String latitudeLongitude;
    final String anosPropiedad;
    final String productiveLine1;
    final dynamic productiveLine2;
    final dynamic productiveLine3;
    final String knowProductiveLine1;
    final String knowProductiveLine2;
    final String knowPeoductiveLine3;
    final String comercializationType;
    final String biopreparadosProduction;
    final String waterAvailable;
    final String accessRoads;
    final String electricityAvailability;
    final String comunicationAvailable;
    final String projectParticipation;
    final String cropTools;
    final String firstAidKit;
    final String fumigateKit;
    final String irrigationSystem;
    final String machines;
    final String participateInProyects;
    final String workingCapital;
    final String implementationTecnologyLevel;
    final String productLine1;
    final dynamic variety1;
    final dynamic cantPlants1;
    final dynamic ageCrop1;
    final String stageCrop1;
    final dynamic cantKgProducedByYear1;
    final String cropStatus1;
    final dynamic aproxArea1;
    final String coordenates1;
    final String useType;
    final dynamic promKgComercializateValue;
    final dynamic productLine2;
    final dynamic variety2;
    final dynamic cantPlants2;
    final dynamic ageCrop2;
    final String stageCrop2;
    final dynamic cantKgProducedByYear2;
    final String cropStatus2;
    final dynamic aproxArea2;
    final String coordenates2;
    final String useType2;
    final dynamic promKgComercializateValu2;
    final dynamic productLine3;
    final dynamic variety3;
    final dynamic cantPlants3;
    final dynamic ageCrop3;
    final String stageCrop3;
    final dynamic cantKgProducedByYear3;
    final String cropStatus3;
    final dynamic aproxArea3;
    final String coordenates3;
    final String useType3;
    final dynamic promKgComercializateValu3;
    final int projectId;
    final dynamic productLine4Pecuaria;
    final dynamic breed;
    final dynamic cantAnimals;
    final dynamic numberPlaces;
    final dynamic ageAverageAnimals;
    final dynamic ageCrop4;
    final dynamic cantKgProducedByYear4;
    final dynamic cropStatus4;
    final dynamic aproxArea4;
    final String coordenates4;
    final dynamic nutritionType;
    final dynamic promKgComercializateValu4;
    final dynamic productLine5Pecuaria;
    final dynamic breed5;
    final dynamic cantAnimals5;
    final dynamic numberPlaces5;
    final dynamic ageAverageAnimals5;
    final dynamic ageCrop5;
    final dynamic cantKgProducedByYear5;
    final dynamic cropStatus5;
    final dynamic aproxArea5;
    final String coordenates5;
    final dynamic nutritionType5;
    final dynamic promKgComercializateValu5;
    final dynamic productiveLine4;
    final dynamic productiveLine5;
    final String imgSignature;
    final String creationDate;
    final int userId;
    final dynamic comments;
    final dynamic plantsDistance1;
    final dynamic groovesDistance1;
    final dynamic plantsDistance2;
    final dynamic groovesDistance2;
    final dynamic plantsDistance3;
    final dynamic groovesDistance3;
    final String knowProductiveLine4;
    final String knowProductiveLine5;
    final dynamic cantKgByYearLote4;
    final dynamic priceKgSoldLote4;
    final dynamic cantKgByYearLote5;
    final dynamic priceKgSoldLote5;
    final DateTime timeCreation;
    final dynamic typeofanimal;
    final dynamic typeofanimal5;

    Resultado({
        required this.idFarm,
        required this.imgBeneficiario,
        required this.firstName,
        required this.secondName,
        required this.firstSurname,
        required this.secondSurname,
        required this.nitProducer,
        required this.expedition,
        required this.birthdate,
        required this.ethnicity,
        required this.celphone1,
        required this.celphone2,
        required this.email,
        required this.gender,
        required this.scholarLevel,
        required this.organization,
        required this.maritalStatus,
        required this.fullnameSpouse,
        required this.nitSpouse,
        required this.expeditionSpouse,
        required this.dateSpouse,
        required this.celphoneSpouse,
        required this.emailSpouse,
        required this.nameFarm,
        required this.municipality,
        required this.corregimiento,
        required this.vereda,
        required this.possession,
        required this.totalExtension,
        required this.cropsArea,
        required this.freeArea,
        required this.conservationArea,
        required this.currentProjects,
        required this.agrochemical,
        required this.bestPractices,
        required this.otherAreas,
        required this.afluentes,
        required this.vocationAndLandUse,
        required this.productiveLine,
        required this.certificationType,
        required this.purlieuNorth,
        required this.purlieuSouth,
        required this.purlieuEast,
        required this.purlieuWest,
        required this.altura,
        required this.latitudeLongitude,
        required this.anosPropiedad,
        required this.productiveLine1,
        required this.productiveLine2,
        required this.productiveLine3,
        required this.knowProductiveLine1,
        required this.knowProductiveLine2,
        required this.knowPeoductiveLine3,
        required this.comercializationType,
        required this.biopreparadosProduction,
        required this.waterAvailable,
        required this.accessRoads,
        required this.electricityAvailability,
        required this.comunicationAvailable,
        required this.projectParticipation,
        required this.cropTools,
        required this.firstAidKit,
        required this.fumigateKit,
        required this.irrigationSystem,
        required this.machines,
        required this.participateInProyects,
        required this.workingCapital,
        required this.implementationTecnologyLevel,
        required this.productLine1,
        required this.variety1,
        required this.cantPlants1,
        required this.ageCrop1,
        required this.stageCrop1,
        required this.cantKgProducedByYear1,
        required this.cropStatus1,
        required this.aproxArea1,
        required this.coordenates1,
        required this.useType,
        required this.promKgComercializateValue,
        required this.productLine2,
        required this.variety2,
        required this.cantPlants2,
        required this.ageCrop2,
        required this.stageCrop2,
        required this.cantKgProducedByYear2,
        required this.cropStatus2,
        required this.aproxArea2,
        required this.coordenates2,
        required this.useType2,
        required this.promKgComercializateValu2,
        required this.productLine3,
        required this.variety3,
        required this.cantPlants3,
        required this.ageCrop3,
        required this.stageCrop3,
        required this.cantKgProducedByYear3,
        required this.cropStatus3,
        required this.aproxArea3,
        required this.coordenates3,
        required this.useType3,
        required this.promKgComercializateValu3,
        required this.projectId,
        required this.productLine4Pecuaria,
        required this.breed,
        required this.cantAnimals,
        required this.numberPlaces,
        required this.ageAverageAnimals,
        required this.ageCrop4,
        required this.cantKgProducedByYear4,
        required this.cropStatus4,
        required this.aproxArea4,
        required this.coordenates4,
        required this.nutritionType,
        required this.promKgComercializateValu4,
        required this.productLine5Pecuaria,
        required this.breed5,
        required this.cantAnimals5,
        required this.numberPlaces5,
        required this.ageAverageAnimals5,
        required this.ageCrop5,
        required this.cantKgProducedByYear5,
        required this.cropStatus5,
        required this.aproxArea5,
        required this.coordenates5,
        required this.nutritionType5,
        required this.promKgComercializateValu5,
        required this.productiveLine4,
        required this.productiveLine5,
        required this.imgSignature,
        required this.creationDate,
        required this.userId,
        required this.comments,
        required this.plantsDistance1,
        required this.groovesDistance1,
        required this.plantsDistance2,
        required this.groovesDistance2,
        required this.plantsDistance3,
        required this.groovesDistance3,
        required this.knowProductiveLine4,
        required this.knowProductiveLine5,
        required this.cantKgByYearLote4,
        required this.priceKgSoldLote4,
        required this.cantKgByYearLote5,
        required this.priceKgSoldLote5,
        required this.timeCreation,
        required this.typeofanimal,
        required this.typeofanimal5,
    });

    factory Resultado.fromJson(Map<String, dynamic> json) => Resultado(
        idFarm: json["id_farm"],
        imgBeneficiario: json["img_beneficiario"],
        firstName: json["firstName"],
        secondName: json["secondName"],
        firstSurname: json["firstSurname"],
        secondSurname: json["secondSurname"],
        nitProducer: json["nitProducer"],
        expedition: json["expedition"],
        birthdate: json["birthdate"],
        ethnicity: json["ethnicity"],
        celphone1: json["celphone1"],
        celphone2: json["celphone2"],
        email: json["email"],
        gender: json["gender"],
        scholarLevel: json["scholarLevel"],
        organization: json["organization"],
        maritalStatus: json["maritalStatus"],
        fullnameSpouse: json["fullnameSpouse"],
        nitSpouse: json["nitSpouse"],
        expeditionSpouse: json["expeditionSpouse"],
        dateSpouse: json["dateSpouse"],
        celphoneSpouse: json["celphoneSpouse"],
        emailSpouse: json["emailSpouse"],
        nameFarm: json["nameFarm"],
        municipality: json["municipality"],
        corregimiento: json["corregimiento"],
        vereda: json["vereda"],
        possession: json["possession"],
        totalExtension: json["totalExtension"],
        cropsArea: json["cropsArea"],
        freeArea: json["freeArea"],
        conservationArea: json["conservationArea"],
        currentProjects: json["currentProjects"],
        agrochemical: json["agrochemical"],
        bestPractices: json["bestPractices"],
        otherAreas: json["otherAreas"],
        afluentes: json["afluentes"],
        vocationAndLandUse: json["vocationAndLandUse"],
        productiveLine: json["productiveLine"],
        certificationType: json["certificationType"],
        purlieuNorth: json["purlieuNorth"],
        purlieuSouth: json["purlieuSouth"],
        purlieuEast: json["purlieuEast"],
        purlieuWest: json["purlieuWest"],
        altura: json["altura"],
        latitudeLongitude: json["latitudeLongitude"],
        anosPropiedad: json["anosPropiedad"],
        productiveLine1: json["productiveLine1"],
        productiveLine2: json["productiveLine2"],
        productiveLine3: json["productiveLine3"],
        knowProductiveLine1: json["knowProductiveLine1"],
        knowProductiveLine2: json["knowProductiveLine2"],
        knowPeoductiveLine3: json["knowPeoductiveLine3"],
        comercializationType: json["comercializationType"],
        biopreparadosProduction: json["biopreparadosProduction"],
        waterAvailable: json["waterAvailable"],
        accessRoads: json["accessRoads"],
        electricityAvailability: json["electricityAvailability"],
        comunicationAvailable: json["ComunicationAvailable"],
        projectParticipation: json["projectParticipation"],
        cropTools: json["cropTools"],
        firstAidKit: json["firstAidKit"],
        fumigateKit: json["fumigateKit"],
        irrigationSystem: json["irrigationSystem"],
        machines: json["machines"],
        participateInProyects: json["ParticipateInProyects"],
        workingCapital: json["workingCapital"],
        implementationTecnologyLevel: json["implementationTecnologyLevel"],
        productLine1: json["productLine1"],
        variety1: json["variety1"],
        cantPlants1: json["cantPlants1"],
        ageCrop1: json["ageCrop1"],
        stageCrop1: json["stageCrop1"],
        cantKgProducedByYear1: json["cantKgProducedByYear1"],
        cropStatus1: json["cropStatus1"],
        aproxArea1: json["aproxArea1"],
        coordenates1: json["coordenates1"],
        useType: json["useType"],
        promKgComercializateValue: json["promKgComercializateValue"],
        productLine2: json["productLine2"],
        variety2: json["variety2"],
        cantPlants2: json["cantPlants2"],
        ageCrop2: json["ageCrop2"],
        stageCrop2: json["stageCrop2"],
        cantKgProducedByYear2: json["cantKgProducedByYear2"],
        cropStatus2: json["cropStatus2"],
        aproxArea2: json["aproxArea2"],
        coordenates2: json["coordenates2"],
        useType2: json["useType2"],
        promKgComercializateValu2: json["promKgComercializateValu2"],
        productLine3: json["productLine3"],
        variety3: json["variety3"],
        cantPlants3: json["cantPlants3"],
        ageCrop3: json["ageCrop3"],
        stageCrop3: json["stageCrop3"],
        cantKgProducedByYear3: json["cantKgProducedByYear3"],
        cropStatus3: json["cropStatus3"],
        aproxArea3: json["aproxArea3"],
        coordenates3: json["coordenates3"],
        useType3: json["useType3"],
        promKgComercializateValu3: json["promKgComercializateValu3"],
        projectId: json["projectId"],
        productLine4Pecuaria: json["productLine4Pecuaria"],
        breed: json["breed"],
        cantAnimals: json["cantAnimals"],
        numberPlaces: json["numberPlaces"],
        ageAverageAnimals: json["ageAverageAnimals"],
        ageCrop4: json["ageCrop4"],
        cantKgProducedByYear4: json["cantKgProducedByYear4"],
        cropStatus4: json["cropStatus4"],
        aproxArea4: json["aproxArea4"],
        coordenates4: json["coordenates4"],
        nutritionType: json["nutritionType"],
        promKgComercializateValu4: json["promKgComercializateValu4"],
        productLine5Pecuaria: json["productLine5Pecuaria"],
        breed5: json["breed5"],
        cantAnimals5: json["cantAnimals5"],
        numberPlaces5: json["numberPlaces5"],
        ageAverageAnimals5: json["ageAverageAnimals5"],
        ageCrop5: json["ageCrop5"],
        cantKgProducedByYear5: json["cantKgProducedByYear5"],
        cropStatus5: json["cropStatus5"],
        aproxArea5: json["aproxArea5"],
        coordenates5: json["coordenates5"],
        nutritionType5: json["nutritionType5"],
        promKgComercializateValu5: json["promKgComercializateValu5"],
        productiveLine4: json["productiveLine4"],
        productiveLine5: json["productiveLine5"],
        imgSignature: json["imgSignature"],
        creationDate: json["creationDate"],
        userId: json["userId"],
        comments: json["comments"],
        plantsDistance1: json["plantsDistance1"],
        groovesDistance1: json["groovesDistance1"],
        plantsDistance2: json["plantsDistance2"],
        groovesDistance2: json["groovesDistance2"],
        plantsDistance3: json["plantsDistance3"],
        groovesDistance3: json["groovesDistance3"],
        knowProductiveLine4: json["knowProductiveLine4"],
        knowProductiveLine5: json["knowProductiveLine5"],
        cantKgByYearLote4: json["cant_kg_by_year_lote4"],
        priceKgSoldLote4: json["price_kg_sold_lote4"],
        cantKgByYearLote5: json["cant_kg_by_year_lote5"],
        priceKgSoldLote5: json["price_kg_sold_lote5"],
        timeCreation: DateTime.parse(json["time_creation"]),
        typeofanimal: json["typeofanimal"],
        typeofanimal5: json["typeofanimal5"],
    );

    Map<String, dynamic> toJson() => {
        "id_farm": idFarm,
        "img_beneficiario": imgBeneficiario,
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
        "ComunicationAvailable": comunicationAvailable,
        "projectParticipation": projectParticipation,
        "cropTools": cropTools,
        "firstAidKit": firstAidKit,
        "fumigateKit": fumigateKit,
        "irrigationSystem": irrigationSystem,
        "machines": machines,
        "ParticipateInProyects": participateInProyects,
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
        "cant_kg_by_year_lote4": cantKgByYearLote4,
        "price_kg_sold_lote4": priceKgSoldLote4,
        "cant_kg_by_year_lote5": cantKgByYearLote5,
        "price_kg_sold_lote5": priceKgSoldLote5,
        "time_creation": timeCreation.toIso8601String(),
        "typeofanimal": typeofanimal,
        "typeofanimal5": typeofanimal5,
    };
}
