
import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:fundacion_aip_mobile/features/farm/domain/repositories/farm_Repository.dart';
import 'package:fundacion_aip_mobile/features/farm/domain/repositories/local_storage_repository.dart';

import '../../domain/entities/farm.dart';

class FarmsProjectProvider extends ChangeNotifier{

  final FarmRepository _farmRepository;
  //Instancia de la base de datos local
  final LocalStorageRepository _isarRepository;

  final storage = FlutterSecureStorage();

  List<Farm> farmCharacterizationList = [];
  List<Farm> localstorageFarmsList = [];
  List<Farm> sinchronizationPendingFarmsList = [];

  int? projectId;
  bool isLoading = false;

  //Constructor
  FarmsProjectProvider(this._farmRepository, this._isarRepository);

  int? get getProjectId => projectId;

  set setProjectId(int value) {
    projectId = value;
    notifyListeners();
  }

  //Agregar un nuevo predio a la lista que se visualiza en la lista de predios caracterizados
  void addNewFarmLocalStorageCharacterization(Farm farm){

    localstorageFarmsList.add(farm);
    notifyListeners();

    return;
  }

  Future<void> saveSelectedProject()async{
    await storage.write(key: 'projectId', value: projectId.toString());
  }


  Future<List<Farm>>? getCharaterizarionFarmsList() async{
    try{ 
      isLoading = true;
      notifyListeners();

      final user = await storage.read(key: 'userId');
      final project = await storage.read(key: 'projectId');

      print('user $user');
      print('project $project');

      // await storage.write(key: 'projectId', value: projectId.toString());

      final response = await _farmRepository.getFarmsCharacterization(int.parse(user!), int.parse(project!));
      
      farmCharacterizationList = response!;

      for(var farm in farmCharacterizationList){
         await _isarRepository.createFarm(farm);
      }

      localstorageFarmsList = await _isarRepository.loadFarms();

      isLoading = false;
      notifyListeners();

      return farmCharacterizationList;

    } catch(e){
      throw e;
    }
  }

  Future updateFarmInList(Farm farm) async{
    localstorageFarmsList = localstorageFarmsList.map(
      (e){
        if(e.isarId != farm.isarId) return e;

        Farm.extractAsignations(e, farm);

        return e;
      }).toList();

      notifyListeners();

      return;
  }

  Future<List<Farm>> pendingSinchronization() async{
    
    sinchronizationPendingFarmsList = await _isarRepository.getSinchronizationPending();
    notifyListeners();

    return sinchronizationPendingFarmsList;
  }

}