import '../entities/agricultural_registry.dart';

abstract class LocalAgriculturalRepository{
  Future<AgriculturalRegistry?> createNewAgriculturalRegistry(AgriculturalRegistry value);
  Future<List<AgriculturalRegistry>?> getAgriculturalRegistry(int projectId, int userId);
  Future<AgriculturalRegistry> deleteAgricultureRegistry();
}