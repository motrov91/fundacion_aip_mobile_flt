
import 'package:fundacion_aip_mobile/features/farm/domain/entities/farm.dart';

abstract class FarmDatasource{

  Future<Farm> createNewFarm(); 
  Future<List<Farm>?> getFarmsCharacterization();
}