
import 'package:fundacion_aip_mobile/features/farm/domain/datasources/farm_datasource.dart';
import 'package:fundacion_aip_mobile/features/farm/domain/entities/farm.dart';
import 'package:fundacion_aip_mobile/features/farm/domain/repositories/farm_Repository.dart';
import 'package:fundacion_aip_mobile/features/farm/infrastructure/datasource/farm_datasource_impl.dart';

class FarmRepositoryImpl extends FarmRepository{

  final FarmDatasource datasource;

  FarmRepositoryImpl({
    FarmDatasource? datasource
  }): datasource = datasource ?? FarmDatasourceImpl();


  @override
  Future<List<Farm>?> getFarmsCharacterization(int userId, int projectId) {
    return datasource.getFarmsCharacterization(userId, projectId);
  }
  
  @override
  Future<Farm?> createNewFarmInCloud(Farm farm) {
    return datasource.createNewFarmInCloud(farm);
  }

}