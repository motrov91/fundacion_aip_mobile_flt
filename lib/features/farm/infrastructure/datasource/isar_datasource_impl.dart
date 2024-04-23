
import 'package:fundacion_aip_mobile/features/farm/domain/datasources/local_storage_datasource.dart';
import 'package:fundacion_aip_mobile/features/farm/domain/entities/farm.dart';
import 'package:isar/isar.dart';
import 'package:path_provider/path_provider.dart';

import '../../domain/entities/agricultural_registry.dart';

class IsarDatasourceImpl extends LocalStorageDatasource{

  late Future<Isar> db;

  IsarDatasourceImpl(){
    db = openDB();
  }
  
  Future<Isar> openDB() async {

    final dir = await getApplicationDocumentsDirectory();

    if(Isar.instanceNames.isEmpty){
      return await Isar.open([FarmSchema, AgriculturalRegistrySchema], directory: dir.path);
    }

    return Future.value(Isar.getInstance());
  }

  @override
  Future<Farm?> createFarm(Farm farm) async{
    
    //Creamos una instancia de la base de datos
    final isar = await db;

    //Verificamos si el predio ingresado como parametro tiene algun registro similar con su id_farm en la bd local
    //si lo tiene retorna existFarm si no lo tiene retorna null.
    Farm? existFarm = await isar.farms
      .filter()
      .id_farmEqualTo(farm.id_farm)
      .findFirst();

    /*Si existFarm es difernte de null indica que encontro un predio con ese id_farm en la base de datos.
      en caso contrario el id_farm que viene desde la API no esta en la base de datos local entonces debera saltarse el if y 
      crear el predio. Cuando viene de la API siempre viene in farm_id, cuando se crea desde la aplicacion nunca trae el farm_id
      por eso cuando se hace la consulta desde una farm creada desde la aplicacion siempre retornara existFarm ya que habrá muchas sin farm_id,
      pero con el findFirst de la consulta obtenemos solo el primero, entonces ahora evaluamos, del existFarm obtenido desde el producto enviado desde la app
      nunca abra un farm_id lo que indica que el predio se deberá crear localmente. */
    if( existFarm?.id_farm != null){
      //* Ya sabemos que retorna un predio de la base de datos local
      //Actualizar 
      isar.writeTxnSync(() async {
        /* 
          si existe el predio ya en la base de datos local se envia junto con 
          el predio que llega al mometo de crear la farm, en la clase Farm se   
          hacen las asignaciones de los nuevos valores y se le pasa a la actualizacion
          de isar.
        */
        Farm.extractAsignations(existFarm!, farm);
        isar.farms.putSync(existFarm);
        return existFarm;
      });
    }else{

      final test;
      
      //Insertar
      if(farm.id_farm != null){
        farm.isModified = false;
        farm.haveAgriculturalRegistry = false;
        test = isar.writeTxnSync(() => isar.farms.putSync(farm));
      } else {
        test = isar.writeTxnSync(() => isar.farms.putSync(farm));
      }
       



      Farm? newFarmCreated = await isar.farms
      .filter()
      .isarIdEqualTo(test)
      .findFirst();

      if(newFarmCreated != null){
        return newFarmCreated;
      } else{
        return null;
      }
    }
    return farm;
  }

  @override
  Future<Farm?> editFarm(Farm farm) async{
    //Creamos una instancia de la base de datos
    final isar = await db;

    Farm? farmToEdit = await isar.farms
      .filter()
      .isarIdEqualTo(farm.isarId)
      .findFirst();

    if( farmToEdit?.isarId != null){

      isar.writeTxnSync(() async {

        Farm.extractAsignations(farmToEdit!, farm);
        farmToEdit.isModified = true;
        isar.farms.putSync(farmToEdit);
        return farmToEdit;

      });

      return null;

    }else{
      return null;
    }  
  }

  @override
  Future<List<Farm>> loadFarms() async {
    final isar = await db;

    final List<Farm> localDataList = await isar.farms.where().findAll();

    return localDataList;
  }
  
  @override
  Future<List<Farm>> getSinchronizationPending() async{
    //Creamos una instancia de la base de datos
    final isar = await db;

    List<Farm>? farmsPendings = await isar.farms
      .filter()
      .isModifiedEqualTo(true)
      .findAll();

    return farmsPendings;
  }

}