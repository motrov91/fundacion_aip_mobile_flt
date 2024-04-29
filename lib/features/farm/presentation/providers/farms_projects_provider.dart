import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:fundacion_aip_mobile/features/farm/domain/datasources/local_storage_datasource.dart';
import 'package:fundacion_aip_mobile/features/farm/domain/repositories/farm_Repository.dart';
import 'package:fundacion_aip_mobile/features/farm/domain/repositories/local_storage_repository.dart';
import 'package:fundacion_aip_mobile/features/internetConnection/infrastructure/datasources/internet_connection_datasource_impl.dart';

import '../../../internetConnection/presentation/providers/connection_status_provider.dart';
import '../../domain/entities/farm.dart';

class FarmsProjectProvider extends ChangeNotifier {
  final FarmRepository _farmRepository;
  //Instancia de la base de datos local
  final LocalStorageRepository _isarRepository;

  //Instancia del provider de connectionStatus
  ConnectionStatusProvider _connection;

  final storage = const FlutterSecureStorage();

  List<Farm> farmCharacterizationList = [];
  List<Farm> localstorageFarmsList = [];
  List<Farm> sinchronizationPendingFarmsList = [];

  int? projectId;
  bool isLoading = false;

  //Constructor
  FarmsProjectProvider(
      this._farmRepository, this._isarRepository, this._connection);

  int? get getProjectId => projectId;

  set setProjectId(int value) {
    projectId = value;
    notifyListeners();
  }

  Future<Farm?> uploadFarmToCloud(Farm farm) async {
    isLoading = true;
    notifyListeners();

    final response = await _farmRepository.createNewFarmInCloud(farm);
    if (response != null) {
      /*Le pasamos el isarId que tenemos en local para que al momento de enviar a editar 
        el registro almacenado en local pueda buscarlo y saber que predio editar */
      response.isarId = farm.isarId;

      final farmEdited = await _isarRepository.editFarm(
          response, TypeEdit.editFromUpdateToCloud);

      localstorageFarmsList = localstorageFarmsList.map((e) {
        if (e.isarId != response.isarId) return e;

        e.isModified = false;
        e.id_farm = response.id_farm;

        return e;
      }).toList();

      localstorageFarmsList
          .removeWhere((element) => element.isarId == response.isarId);
      notifyListeners();

      isLoading = false;
      notifyListeners();

      return farmEdited;
    } else {
      return null;
    }
  }

  //Agregar un nuevo predio a la lista que se visualiza en la lista de predios caracterizados
  void addNewFarmLocalStorageCharacterization(Farm farm) {
    localstorageFarmsList.add(farm);
    notifyListeners();

    return;
  }

  //Almacena el proyecto que se selecciona desde la vista de seleccion de proyectos y lo almacena en el secure storage
  Future<void> saveSelectedProject() async {
    await storage.write(key: 'projectId', value: projectId.toString());
  }

  Future<List<Farm>>? getCharaterizarionFarmsList() async {
    try {
      isLoading = true;
      notifyListeners();

      final user = await storage.read(key: 'userId');
      final project = await storage.read(key: 'projectId');

      if (_connection.status == ConnectionStatus.online) {
        final response = await _farmRepository.getFarmsCharacterization(
            int.parse(user!), int.parse(project!));

        farmCharacterizationList = response!;

        for (var farm in farmCharacterizationList) {
          await _isarRepository.createFarm(farm);
        }

        localstorageFarmsList = await _isarRepository.loadFarms();

        isLoading = false;
        notifyListeners();

        return farmCharacterizationList;
      } else {
        isLoading = true;
        notifyListeners();

        localstorageFarmsList = await _isarRepository.loadFarms();

        isLoading = false;
        notifyListeners();

        return farmCharacterizationList;
      }
    } catch (e) {
      throw e;
    }
  }

  Future updateFarmInList(Farm farm) async {
    localstorageFarmsList = localstorageFarmsList.map((e) {
      if (e.isarId != farm.isarId) return e;

      Farm.extractAsignations(e, farm);

      return e;
    }).toList();

    notifyListeners();

    return;
  }

  Future<List<Farm>> pendingSinchronization() async {
    sinchronizationPendingFarmsList =
        await _isarRepository.getSinchronizationPending();
    notifyListeners();

    return sinchronizationPendingFarmsList;
  }
}
