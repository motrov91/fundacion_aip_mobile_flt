

import '../entities/farm.dart';

abstract class LocalStorageRepository{
  Future<Farm?> createFarm( Farm farm );
  //Para paginacion podemos pasar como parametros {int limit = 10, offset = 0}
  Future<List<Farm>> loadFarms();
  Future<void> editFarm( int id);
}