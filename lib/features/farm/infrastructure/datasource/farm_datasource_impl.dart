

import 'package:fundacion_aip_mobile/config/dio/dioConfig.dart';
import 'package:fundacion_aip_mobile/features/farm/domain/datasources/farm_datasource.dart';
import 'package:fundacion_aip_mobile/features/farm/domain/entities/farm.dart';

import '../mappers/farmsCharacterizationList.dart';

class FarmDatasourceImpl extends FarmDatasource{

  @override
  Future<List<Farm>?> getFarmsCharacterization(int userId, int projectId) async{
    
    Map<String, int> data = {
      'userId' : userId,
      'projectId' : projectId
    };

    try{

      final response = await DioConfig.httpPost('/characterizationListByUser', data);

      final dataListFarms = await FarmResponse.farmJsonToEntity(response.data);

      return dataListFarms;

    } catch (e){
      throw e;
    }

  }
  
  @override
  Future<Farm> createNewFarm() {
    // TODO: implement createNewFarm
    throw UnimplementedError();
  }

}