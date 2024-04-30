import 'package:fundacion_aip_mobile/features/farm/domain/datasources/local_agricultural_registry_datasource.dart';
import 'package:fundacion_aip_mobile/features/farm/domain/entities/agricultural_registry.dart';
import 'package:isar/isar.dart';
import 'package:path_provider/path_provider.dart';

import '../../domain/entities/farm.dart';

class LocalAgriculturalRegistryDatasourceImpl
    extends LocalAgriculturalDatasource {
  late Future<Isar> db;

  LocalAgriculturalRegistryDatasourceImpl() {
    db = openDB();
  }

  Future<Isar> openDB() async {
    final dir = await getApplicationDocumentsDirectory();

    if (Isar.instanceNames.isEmpty) {
      return Isar.open([AgriculturalRegistrySchema, FarmSchema],
          directory: dir.path);
    }

    return Future.value(Isar.getInstance());
  }

  @override
  Future<AgriculturalRegistry?> createNewAgriculturalRegistry(
      AgriculturalRegistry value) async {
    //Creamos una instancia de la bd
    final isar = await db;

    //  AgriculturalRegistry? ExistAgriculturalRegistry = await isar.agriculturalRegistrys
    //   .filter()
    //   .farmFK((q){
    //     return q.id_farmEqualTo(value.farm_id);
    //   }).findFirst();
    final result = await isar.writeTxnSync(() async {
      try {
        isar.agriculturalRegistrys.putSync(value);
        return value;
      } catch (e) {
        print('Error al crear un nuevo registro agricola: $e');
        return null;
      }
    });

    return result;
  }

  @override
  Future<AgriculturalRegistry?> getAgriculturalRegistryOfFarm(
      int isarId) async {
    final isar = await db;

    AgriculturalRegistry? registry = await isar.agriculturalRegistrys
        .where()
        .filter()
        .predioEqualTo(isarId)
        .findFirst();

    return registry;
  }

  @override
  Future<AgriculturalRegistry> deleteAgricultureRegistry() {
    // TODO: implement deleteAgricultureRegistry
    throw UnimplementedError();
  }
}
