import '../entities/farm.dart';

abstract class FarmRepository{

  Future<Farm?> createNewFarmInCloud(Farm farm); 
  Future<List<Farm>?> getFarmsCharacterization(int userId, int projectId);
}