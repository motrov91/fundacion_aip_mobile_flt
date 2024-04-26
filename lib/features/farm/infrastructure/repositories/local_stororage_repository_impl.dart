
import 'package:fundacion_aip_mobile/features/farm/domain/datasources/local_storage_datasource.dart';
import 'package:fundacion_aip_mobile/features/farm/domain/entities/farm.dart';
import 'package:fundacion_aip_mobile/features/farm/domain/repositories/local_storage_repository.dart';

class LocalStorageRepositoryImpl extends LocalStorageRepository{

  final LocalStorageDatasource datasource;

  LocalStorageRepositoryImpl({required this.datasource});

  @override
  Future<Farm?> createFarm(Farm farm) {
    return datasource.createFarm(farm);
  }

  @override
  Future<Farm?> editFarm(Farm farm, TypeEdit editType) {
    return datasource.editFarm(farm, editType);
  }

  @override
  Future<List<Farm>> loadFarms() {
    return datasource.loadFarms();
  }
  
  @override
  Future<List<Farm>> getSinchronizationPending() {
    return datasource.getSinchronizationPending();
  }

}