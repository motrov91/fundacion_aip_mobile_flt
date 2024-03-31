
import 'package:flutter/material.dart';
import 'package:fundacion_aip_mobile/features/farm/domain/repositories/farm_Repository.dart';

import '../../domain/entities/farm.dart';

class FarmsProjectProvider extends ChangeNotifier{

  final FarmRepository _farmRepository;

  List<Farm> farmCharacterizationList = [];

  int? _userId;
  int? _projectId;
  bool isLoading = false;

  //Constructor
  FarmsProjectProvider(this._farmRepository);

  int? get getUserId => _userId;
  int? get getProjectId => _projectId;

  set setUserId(int value) {
    _userId = value;
    notifyListeners();
  }

  set setProjectId(int value) {
    _projectId = value;
    notifyListeners();
  }

  Future<List<Farm>>? getCharaterizarionFarmsList(int userId, int projectId) async{
    try{ 
      isLoading = true;
      notifyListeners();

      final response = await _farmRepository.getFarmsCharacterization(userId, projectId);
      
      farmCharacterizationList = response!;
      isLoading = false;
      notifyListeners();

      return farmCharacterizationList;

    } catch(e){
      throw e;
    }
  }

}