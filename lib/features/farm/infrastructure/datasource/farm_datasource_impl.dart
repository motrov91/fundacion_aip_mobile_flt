import 'dart:convert';
import 'dart:typed_data';

import 'package:dio/dio.dart';
import 'package:fundacion_aip_mobile/config/dio/dioConfig.dart';
import 'package:fundacion_aip_mobile/features/farm/domain/datasources/farm_datasource.dart';
import 'package:fundacion_aip_mobile/features/farm/domain/entities/agricultural_registry.dart';
import 'package:fundacion_aip_mobile/features/farm/domain/entities/farm.dart';

import '../mappers/farmsCharacterizationList.dart';

class FarmDatasourceImpl extends FarmDatasource {
  @override
  Future<List<Farm>?> getFarmsCharacterization(
      int userId, int projectId) async {
    Map<String, int> data = {'userId': userId, 'projectId': projectId};

    try {
      final response =
          await DioConfig.httpPost('/characterizationListByUser', data);

      final dataListFarms = await FarmResponse.farmJsonToEntity(response.data);

      /*
      * Obtenemos la lista de predios, y con la url del predio almacenada en la base de datos
      * hacemos una poticion get para obtener la imagen y la convertimos a base64
      * para posteriormente guardarla en la base de datos en formato base64, 
      * esto se realiza tanto con la imagen del predio como con la imagen de la firma
      */

      for (Farm farm in dataListFarms) {
        Response imageResponse = await Dio().get(farm.imgBeneficiario!,
            options: Options(responseType: ResponseType.bytes));

        Response imageSignatureResponse = await Dio().get(farm.imgSignature!,
            options: Options(responseType: ResponseType.bytes));

        if (imageResponse.statusCode == 200) {
          Uint8List bytes = Uint8List.fromList(imageResponse.data);
          String base64Image = base64Encode(bytes);
          farm.imgBeneficiario = base64Image;
          print('Imagen obtenida y convertida correctamente');
        } else {
          print('Error al obtener la imagen para la granja ${farm.id_farm}');
        }

        if (imageResponse.statusCode == 200) {
          Uint8List bytes = Uint8List.fromList(imageSignatureResponse.data);
          String base64Image = base64Encode(bytes);
          farm.imgSignature = base64Image;
          print('Imagen obtenida y convertida correctamente');
        } else {
          print('Error al obtener la imagen para la granja ${farm.id_farm}');
        }
      }

      return dataListFarms;
    } catch (e) {
      throw e;
    }
  }

  @override
  Future<Farm?> createNewFarmInCloud(Farm farm) async {
    try {
      Map<String, String> data = {
        "img_beneficiario": farm.imgBeneficiario ?? '',
        "firstName": farm.firstName!,
        "secondName": farm.secondName ?? '',
        "firstSurname": farm.firstSurname ?? '',
        "secondSurname": farm.secondSurname ?? '',
        "nitProducer": farm.nitProducer ?? '',
        "expedition": farm.expedition ?? '',
        "birthdate": farm.birthdate ?? '',
        "ethnicity": farm.ethnicity ?? '',
        "celphone1": farm.celphone1 ?? '',
        "celphone2": farm.celphone2 ?? '',
        "email": farm.email ?? '',
        "gender": farm.gender ?? '',
        "scholarLevel": farm.scholarLevel ?? '',
        "organization": farm.organization ?? '',
        "maritalStatus": farm.maritalStatus ?? '',
        "fullnameSpouse": farm.fullnameSpouse ?? '',
        "nitSpouse": farm.nitSpouse ?? '',
        "expeditionSpouse": farm.expeditionSpouse ?? '',
        "dateSpouse": farm.dateSpouse ?? '',
        "celphoneSpouse": farm.celphoneSpouse ?? '',
        "emailSpouse": farm.emailSpouse ?? '',
        "nameFarm": farm.nameFarm ?? '',
        "municipality": farm.municipality ?? '',
        "corregimiento": farm.corregimiento ?? '',
        "vereda": farm.vereda ?? '',
        "possession": farm.possession ?? '',
        "totalExtension": farm.totalExtension ?? '',
        "cropsArea": farm.cropsArea ?? '',
        "freeArea": farm.freeArea ?? '',
        "conservationArea": farm.conservationArea ?? '',
        "currentProjects": farm.currentProjects ?? '',
        "agrochemical": farm.agrochemical ?? '',
        "bestPractices": farm.bestPractices ?? '',
        "otherAreas": farm.otherAreas ?? '',
        "afluentes": farm.afluentes ?? '',
        "vocationAndLandUse": farm.vocationAndLandUse ?? '',
        "productiveLine": farm.productiveLine ?? '',
        "certificationType": farm.certificationType ?? '',
        "purlieuNorth": farm.purlieuNorth ?? '',
        "purlieuSouth": farm.purlieuSouth ?? '',
        "purlieuEast": farm.purlieuEast ?? '',
        "purlieuWest": farm.purlieuWest ?? '',
        "altura": farm.altura ?? '',
        "latitudeLongitude": farm.latitudeLongitude ?? '',
        "anosPropiedad": farm.anosPropiedad ?? '',
        "productiveLine1": farm.productiveLine1 ?? '',
        "productiveLine2": farm.productiveLine2 ?? '',
        "productiveLine3": farm.productiveLine3 ?? '',
        "productiveLine4": farm.productiveLine4 ?? '',
        "productiveLine5": farm.productiveLine5 ?? '',
        "knowProductiveLine1": farm.knowProductiveLine1 ?? '',
        "knowProductiveLine2": farm.knowProductiveLine2 ?? '',
        "knowPeoductiveLine3": farm.knowPeoductiveLine3 ?? '',
        "comercializationType": farm.comercializationType ?? '',
        "biopreparadosProduction": farm.biopreparadosProduction ?? '',
        "waterAvailable": farm.waterAvailable ?? '',
        "accessRoads": farm.accessRoads ?? '',
        "electricityAvailability": farm.electricityAvailability ?? '',
        "ComunicationAvailable": farm.comunicationAvailable ?? '',
        "projectParticipation": farm.projectParticipation ?? '',
        "cropTools": farm.cropTools ?? '',
        "firstAidKit": farm.firstAidKit ?? '',
        "fumigateKit": farm.fumigateKit ?? '',
        "irrigationSystem": farm.irrigationSystem ?? '',
        "machines": farm.machines ?? '',
        "ParticipateInProyects": farm.participateInProyects ?? '',
        "workingCapital": farm.workingCapital ?? '',
        "implementationTecnologyLevel": farm.implementationTecnologyLevel ?? '',
        "productLine1": farm.productLine1 ?? '',
        "variety1": farm.variety1 ?? '',
        "cantPlants1": farm.cantPlants1 ?? '',
        "ageCrop1": farm.ageCrop1 ?? '',
        "stageCrop1": farm.stageCrop1 ?? '',
        "cantKgProducedByYear1": farm.cantKgProducedByYear1 ?? '',
        "cropStatus1": farm.cropStatus1 ?? '',
        "aproxArea1": farm.aproxArea1 ?? '',
        "coordenates1": farm.coordenates1 ?? '',
        "useType": farm.useType ?? '',
        "promKgComercializateValue": farm.promKgComercializateValue ?? '',
        "productLine2": farm.productLine2 ?? '',
        "variety2": farm.variety2 ?? '',
        "cantPlants2": farm.cantPlants2 ?? '',
        "ageCrop2": farm.ageCrop2 ?? '',
        "stageCrop2": farm.stageCrop2 ?? '',
        "cantKgProducedByYear2": farm.cantKgProducedByYear2 ?? '',
        "cropStatus2": farm.cropStatus2 ?? '',
        "aproxArea2": farm.aproxArea2 ?? '',
        "coordenates2": farm.coordenates2 ?? '',
        "useType2": farm.useType2 ?? '',
        "promKgComercializateValu2": farm.promKgComercializateValu2 ?? '',
        "productLine3": farm.productLine3 ?? '',
        "variety3": farm.variety3 ?? '',
        "cantPlants3": farm.cantPlants3 ?? '',
        "ageCrop3": farm.ageCrop3 ?? '',
        "stageCrop3": farm.stageCrop3 ?? '',
        "cantKgProducedByYear3": farm.cantKgProducedByYear3 ?? '',
        "cropStatus3": farm.cropStatus3 ?? '',
        "aproxArea3": farm.aproxArea3 ?? '',
        "coordenates3": farm.coordenates3 ?? '',
        "useType3": farm.useType3 ?? '',
        "promKgComercializateValu3": farm.promKgComercializateValu3 ?? '',
        "projectId": farm.projectId.toString(),
        "productLine4Pecuaria": farm.productLine4Pecuaria ?? '',
        "breed": farm.breed ?? '',
        "cantAnimals": farm.cantAnimals ?? '',
        "numberPlaces": farm.numberPlaces ?? '',
        "ageAverageAnimals": farm.ageAverageAnimals ?? '',
        "ageCrop4": farm.ageCrop4 ?? '',
        "cantKgProducedByYear4": farm.cantKgProducedByYear4 ?? '',
        "cropStatus4": farm.cropStatus4 ?? '',
        "aproxArea4": farm.aproxArea4 ?? '',
        "coordenates4": farm.coordenates4 ?? '',
        "nutritionType": farm.nutritionType ?? '',
        "promKgComercializateValu4": farm.promKgComercializateValu4 ?? '',
        "productLine5Pecuaria": farm.productLine5Pecuaria ?? '',
        "breed5": farm.breed5 ?? '',
        "cantAnimals5": farm.cantAnimals5 ?? '',
        "numberPlaces5": farm.numberPlaces5 ?? '',
        "ageAverageAnimals5": farm.ageAverageAnimals5 ?? '',
        "ageCrop5": farm.ageCrop5 ?? '',
        "cantKgProducedByYear5": farm.cantKgProducedByYear5 ?? '',
        "cropStatus5": farm.cropStatus5 ?? '',
        "aproxArea5": farm.aproxArea5 ?? '',
        "coordenates5": farm.coordenates5 ?? '',
        "nutritionType5": farm.nutritionType5 ?? '',
        "promKgComercializateValu5": farm.promKgComercializateValu5 ?? '',
        "imgSignature": farm.imgSignature ?? '',
        "creationDate": farm.creationDate ?? '',
        "userId": farm.userId.toString(),
        "comments": farm.comments ?? '',
        "plantsDistance1": farm.plantsDistance1 ?? '',
        "groovesDistance1": farm.groovesDistance1 ?? '',
        "plantsDistance2": farm.plantsDistance2 ?? '',
        "groovesDistance2": farm.groovesDistance2 ?? '',
        "plantsDistance3": farm.plantsDistance3 ?? '',
        "groovesDistance3": farm.groovesDistance3 ?? '',
        "knowProductiveLine4": farm.knowProductiveLine4 ?? '',
        "knowProductiveLine5": farm.knowProductiveLine5 ?? '',
        "cant_kg_by_year_lote4": farm.cantKgProducedByYear4 ?? '',
        "cant_kg_by_year_lote5": farm.cantKgProducedByYear5 ?? '',
        "price_kg_sold_lote4": farm.priceKgSoldLote4 ?? '',
        "price_kg_sold_lote5": farm.priceKgSoldLote5 ?? '',
        "typeofanimal": farm.typeofanimal ?? '',
        "typeofanimal5": farm.typeofanimal5 ?? '',
      };

      final response = await DioConfig.httpPost('/newFarm', data);

      final dataResult = Farm.fromJson(response.data);

      return dataResult;
    } catch (e) {
      return throw e;
    }
  }

  /*
    * Creamos el metodo para enviar la información al servidor, haciendo uso de la clase AgriculturalRegistry
    * lo que hicimos fue crear un campo llamado predio, ya que tuvimos problemas con las claves foraneas de isar
    * entonces con este campo sabiamos cual registro debiamos subir, luego creamos un mapa con la estructura 
    * necesaria para y llamamos dio para enviar la peticion POST, el servidor responde con un mensaje en caso 
    * de que todo salga bien, nosotros con un try/catch estamos verificando si retorna null enviamos false
    * en caso contrario mandamos true.
  */
  @override
  Future<bool> createAgriculturalRegistryInCloud(
      AgriculturalRegistry registry) async {
    try {
      Map<String, String> data = {
        "farm_id": registry.predio.toString(),
        "respuesta1": registry.respuesta1 ?? '',
        "respuesta2": registry.respuesta2 ?? '',
        "respuesta3": registry.respuesta3 ?? '',
        "respuesta4": registry.respuesta4 ?? '',
        "respuesta5": registry.respuesta5 ?? '',
        "respuesta6": registry.respuesta6 ?? '',
        "respuesta7": registry.respuesta7 ?? '',
        "respuesta8": registry.respuesta8 ?? '',
        "respuesta9": registry.respuesta9 ?? '',
        "respuesta10": registry.respuesta10 ?? '',
        "respuesta11": registry.respuesta11 ?? '',
        "respuesta12": registry.respuesta12 ?? '',
        "respuesta13": registry.respuesta13 ?? '',
        "respuesta14": registry.respuesta14 ?? '',
        "respuesta15": registry.respuesta15 ?? '',
        "respuesta16": registry.respuesta16 ?? '',
        "respuesta17": registry.respuesta17 ?? '',
        "respuesta18": registry.respuesta18 ?? '',
        "respuesta19": registry.respuesta19 ?? '',
        "respuesta20": registry.respuesta20 ?? '',
        "respuesta21": registry.respuesta21 ?? '',
        "respuesta22": registry.respuesta22 ?? '',
        "respuesta23": registry.respuesta23 ?? '',
        "respuesta24": registry.respuesta24 ?? '',
        "respuesta25": registry.respuesta25 ?? '',
        "respuesta26": registry.respuesta26 ?? '',
        "respuesta27": registry.respuesta27 ?? '',
        "respuesta28": registry.respuesta28 ?? '',
        "respuesta29": registry.respuesta29 ?? '',
        "respuesta30": registry.respuesta30 ?? '',
        "respuesta31": registry.respuesta31 ?? '',
        "respuesta32": registry.respuesta32 ?? '',
        "respuesta33": registry.respuesta33 ?? '',
        "respuesta34": registry.respuesta34 ?? '',
        "respuesta35": registry.respuesta35 ?? '',
        "respuesta36": registry.respuesta36 ?? '',
        "respuesta37": registry.respuesta37 ?? '',
        "respuesta38": registry.respuesta38 ?? '',
        "respuesta39": registry.respuesta39 ?? '',
        "respuesta40": registry.respuesta40 ?? '',
        "respuesta41": registry.respuesta41 ?? '',
        "respuesta42": registry.respuesta42 ?? '',
        "respuesta43": registry.respuesta43 ?? '',
        "respuesta44": registry.respuesta44 ?? '',
        "respuesta45": registry.respuesta45 ?? '',
        "comments": registry.comments ?? '',
        "comment1": registry.comment1 ?? '',
        "comment2": registry.comment2 ?? '',
        "comment3": registry.comment3 ?? '',
        "comment4": registry.comment4 ?? '',
        "comment5": registry.comment5 ?? '',
        "comment6": registry.comment6 ?? '',
        "comment7": registry.comment7 ?? '',
        "comment8": registry.comment8 ?? '',
        "comment9": registry.comment9 ?? '',
        "comment10": registry.comment10 ?? '',
        "comment11": registry.comment11 ?? '',
        "comment12": registry.comment12 ?? '',
        "comment13": registry.comment13 ?? '',
        "comment14": registry.comment14 ?? '',
        "comment15": registry.comment15 ?? '',
        "comment16": registry.comment16 ?? '',
        "comment17": registry.comment17 ?? '',
        "comment18": registry.comment18 ?? '',
        "comment19": registry.comment19 ?? '',
        "comment20": registry.comment20 ?? '',
        "comment21": registry.comment21 ?? '',
        "comment22": registry.comment22 ?? '',
        "comment23": registry.comment23 ?? '',
        "comment24": registry.comment24 ?? '',
        "comment25": registry.comment25 ?? '',
        "comment26": registry.comment26 ?? '',
        "comment27": registry.comment27 ?? '',
        "comment28": registry.comment28 ?? '',
        "comment29": registry.comment29 ?? '',
        "comment30": registry.comment30 ?? '',
        "comment31": registry.comment31 ?? '',
        "comment32": registry.comment32 ?? '',
        "comment33": registry.comment33 ?? '',
        "comment34": registry.comment34 ?? '',
        "comment35": registry.comment35 ?? '',
        "comment36": registry.comment36 ?? '',
        "comment37": registry.comment37 ?? '',
        "comment38": registry.comment38 ?? '',
        "comment39": registry.comment39 ?? '',
        "comment40": registry.comment40 ?? '',
        "comment41": registry.comment41 ?? '',
        "comment42": registry.comment42 ?? '',
        "comment43": registry.comment43 ?? '',
        "comment44": registry.comment44 ?? '',
        "comment45": registry.comment45 ?? '',
        "user_id": registry.userId.toString(),
        "projectId": registry.projectId.toString(),
      };

      await DioConfig.httpPost('/questionsProducer/${registry.predio}', data);

      return true;
    } catch (e) {
      return false;
    }
  }
}
