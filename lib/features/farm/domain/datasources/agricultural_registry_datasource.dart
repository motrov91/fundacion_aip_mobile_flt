

import '../entities/agricultural_registry.dart';

abstract class AgriculturalDatasource{
  Future<AgriculturalRegistry> createNewAgriculturalRegistry();
  Future<List<AgriculturalRegistry>?> getAgriculturalRegistry(int projectId, int userId);
  Future<AgriculturalRegistry> deleteAgricultureRegistry();
}