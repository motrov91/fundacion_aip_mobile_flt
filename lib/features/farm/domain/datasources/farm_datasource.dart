import 'package:fundacion_aip_mobile/features/farm/domain/entities/agricultural_registry.dart';
import 'package:fundacion_aip_mobile/features/farm/domain/entities/farm.dart';

abstract class FarmDatasource {
  Future<Farm?> createNewFarmInCloud(Farm farm);
  Future<bool> createAgriculturalRegistryInCloud(AgriculturalRegistry registry);
  Future<List<Farm>?> getFarmsCharacterization(int userId, int projecId);
}
