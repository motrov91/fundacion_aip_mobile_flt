
import 'package:fundacion_aip_mobile/features/farm/domain/entities/farm.dart';

abstract class LocalStorageDatasource{

  Future<void> createFarm( Farm farm );
  //Para paginacion podemos pasar como parametros {int limit = 10, offset = 0}
  Future<List<Farm>> loadFarms();
  Future<void> editFarm( int id);
}