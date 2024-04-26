
import 'package:fundacion_aip_mobile/features/farm/domain/entities/farm.dart';

abstract class FarmDatasource{

  Future<Farm?> createNewFarmInCloud(Farm farm); 
  Future<List<Farm>?> getFarmsCharacterization(int userId, int projecId);
}