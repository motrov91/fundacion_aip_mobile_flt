

import '../entities/farm.dart';

abstract class LocalStorageRepository{
  Future<void> createFarm( Farm farm );
  //Para paginacion podemos pasar como parametros {int limit = 10, offset = 0}
  Future<List<Farm>> loadFarms();
  Future<void> editFarm( int id);
}