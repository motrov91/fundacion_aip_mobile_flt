
import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:fundacion_aip_mobile/features/farm/domain/repositories/farm_Repository.dart';
import 'package:fundacion_aip_mobile/features/farm/domain/repositories/local_storage_repository.dart';

import '../../domain/entities/farm.dart';

class FarmsProjectProvider extends ChangeNotifier{

  final FarmRepository _farmRepository;
  //Instancia de la base de datos local
  final LocalStorageRepository _isarRepository;

  List<Farm> farmCharacterizationList = [];
  List<Farm> localstorageFarmsList = [];

  int? _projectId;
  bool isLoading = false;

  //Constructor
  FarmsProjectProvider(this._farmRepository, this._isarRepository);

  int? get getProjectId => _projectId;

  set setProjectId(int value) {
    _projectId = value;
    notifyListeners();
  }

  //Agregar un nuevo predio a la lista que se visualiza en la lista de predios caracterizados
  void addNewFarmLocalStorageCharacterization(Farm farm){

    localstorageFarmsList.add(farm);
    notifyListeners();

    return;

  }


  Future<List<Farm>>? getCharaterizarionFarmsList(int userId, int projectId) async{
    try{ 
      isLoading = true;
      notifyListeners();

      const storage = FlutterSecureStorage();
      await storage.write(key: 'projectId', value: projectId.toString());

      final response = await _farmRepository.getFarmsCharacterization(userId, projectId);
      
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

}