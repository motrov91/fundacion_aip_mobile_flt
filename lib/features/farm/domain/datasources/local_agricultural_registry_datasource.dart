import '../entities/agricultural_registry.dart';

abstract class LocalAgriculturalDatasource {
  Future<AgriculturalRegistry?> createNewAgriculturalRegistry(
      AgriculturalRegistry value);
  Future<AgriculturalRegistry?> getAgriculturalRegistryOfFarm(int isarId);
  Future<AgriculturalRegistry> deleteAgricultureRegistry();
}
