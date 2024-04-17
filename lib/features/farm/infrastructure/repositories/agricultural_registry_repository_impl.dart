

import 'package:fundacion_aip_mobile/features/farm/domain/datasources/agricultural_registry_datasource.dart';
import 'package:fundacion_aip_mobile/features/farm/domain/entities/agricultural_registry.dart';
import 'package:fundacion_aip_mobile/features/farm/domain/repositories/agricultural_registry_repository.dart';

class AgriculturalRepositoryImpl extends AgriculturalRepository{

  final AgriculturalDatasource datasource;

  AgriculturalRepositoryImpl({
    required this.datasource
  });

  @override
  Future<AgriculturalRegistry> createNewAgriculturalRegistry() {
    return datasource.createNewAgriculturalRegistry();
  }

  @override
  Future<AgriculturalRegistry> deleteAgricultureRegistry() {
    return datasource.deleteAgricultureRegistry();
  }

  @override
  Future<List<AgriculturalRegistry>?> getAgriculturalRegistry(int projectId, int userId) {
    return datasource.getAgriculturalRegistry(projectId, userId);
  }

}