
import 'package:fundacion_aip_mobile/features/farm/domain/entities/farm.dart';

enum TypeEdit{
  editFromUpdateToCloud,
  editFromLocal
}

abstract class LocalStorageDatasource{

  Future<Farm?> createFarm( Farm farm );
  //Para paginacion podemos pasar como parametros {int limit = 10, offset = 0}
  Future<List<Farm>> loadFarms();
  Future<List<Farm>> getSinchronizationPending();
  Future<Farm?> editFarm(Farm farm, TypeEdit editType);
}