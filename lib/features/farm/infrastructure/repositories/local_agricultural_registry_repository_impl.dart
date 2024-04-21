

import 'package:fundacion_aip_mobile/features/farm/domain/datasources/local_agricultural_registry_datasource.dart';
import 'package:fundacion_aip_mobile/features/farm/domain/entities/agricultural_registry.dart';
import 'package:fundacion_aip_mobile/features/farm/domain/repositories/local_agricultural_registry_repository.dart';

class LocalAgriculturalRepositoryImpl extends LocalAgriculturalRepository{

  final LocalAgriculturalDatasource datasource;

  LocalAgriculturalRepositoryImpl({
    required this.datasource
  });

  @override
  Future<AgriculturalRegistry?> createNewAgriculturalRegistry(AgriculturalRegistry value) {
    return datasource.createNewAgriculturalRegistry(value);
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