
import 'package:fundacion_aip_mobile/features/farm/domain/datasources/local_storage_datasource.dart';
import 'package:fundacion_aip_mobile/features/farm/domain/entities/farm.dart';
import 'package:isar/isar.dart';
import 'package:path_provider/path_provider.dart';

class IsarDatasourceImpl extends LocalStorageDatasource{

  late Future<Isar> db;

  IsarDatasourceImpl(){
    db = openDB();
  }
  
  Future<Isar> openDB() async {

    final dir = await getApplicationDocumentsDirectory();

    if(Isar.instanceNames.isEmpty){
      return await Isar.open([FarmSchema], directory: dir.path);
    }

    return Future.value(Isar.getInstance());
  }

  @override
  Future<void> createFarm(Farm farm) async{
    
    final isar = await db;
    Farm? existFarm = await isar.farms
      .filter()
      .id_farmEqualTo(farm.id_farm)
      .findFirst();

    if( existFarm != null ){
      //Actualizar 
      isar.writeTxnSync(() async {
        /* 
          si existe el predio ya en la base de datos local se envia junto con 
          el predio que llega al mometo de crear la farm, en la clase Farm se   
          hacen las asignaciones de los nuevos valores y se le pasa a la actualizacion
          de isar.
        
        */
        Farm.extractAsignations(existFarm, farm);
        
        isar.farms.putSync(existFarm);
        return;
      });
      return;
    }

    //Insertar
    isar.writeTxnSync(() => isar.farms.putSync(farm));
    return;
  }

  @override
  Future<void> editFarm(int id) {
    // TODO: implement editFarm
    throw UnimplementedError();
  }

  @override
  Future<List<Farm>> loadFarms() {
    // TODO: implement loadFarms
    throw UnimplementedError();
  }

}