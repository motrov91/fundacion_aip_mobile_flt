

import '../datasources/local_storage_datasource.dart';
import '../entities/farm.dart';

abstract class LocalStorageRepository{
  Future<Farm?> createFarm( Farm farm );
  //Para paginacion podemos pasar como parametros {int limit = 10, offset = 0}
  Future<List<Farm>> loadFarms();
  Future<List<Farm>> getSinchronizationPending();
  Future<Farm?> editFarm(Farm farm, TypeEdit editType);
}