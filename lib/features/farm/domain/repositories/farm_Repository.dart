import '../entities/farm.dart';

abstract class FarmRepository{

  Future<Farm> createNewFarm(); 
  Future<List<Farm>?> getFarmsCharacterization(int userId, int projectId);
}