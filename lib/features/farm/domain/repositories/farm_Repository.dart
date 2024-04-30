import '../entities/agricultural_registry.dart';
import '../entities/farm.dart';

abstract class FarmRepository {
  Future<Farm?> createNewFarmInCloud(Farm farm);
  Future<bool> createAgriculturalRegistryInCloud(AgriculturalRegistry registry);
  Future<List<Farm>?> getFarmsCharacterization(int userId, int projectId);
}
