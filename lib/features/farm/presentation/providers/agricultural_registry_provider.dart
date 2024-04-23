
import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:fundacion_aip_mobile/features/farm/domain/entities/agricultural_registry.dart';
import 'package:fundacion_aip_mobile/features/farm/domain/repositories/local_agricultural_registry_repository.dart';

import '../../domain/entities/farm.dart';

class AgriculturalRegistryProvider extends ChangeNotifier{

  GlobalKey<FormState> formkeyAgricultural = GlobalKey<FormState>();

  final Map<String, String?> _selectedOptions = {};

  LocalAgriculturalRepository _localAgricultural;

  AgriculturalRegistryProvider(this._localAgricultural);

  Map<String, String?> get selectedOptions => _selectedOptions;

  void setSelectedOption(String index, String? option) {
    _selectedOptions[index] = option;
    notifyListeners();
  }

  bool isValidForm(){
    //Verifica que en el Map _selecetedOptions lleguen todas las respuestas.
    //en caso de que no lo haga retorna falso
    for(int i = 1; i <= 45; i++){
      if(!_selectedOptions.containsKey('respuesta$i')) return false;
      if(!_selectedOptions.containsKey('comment$i')) return false;
    }
    
    return true;
  }

  Future<bool> addAgriculturalRegistry(Farm data) async {
    AgriculturalRegistry agriculturalRegistry = AgriculturalRegistry();

    const storage = FlutterSecureStorage();
    final user = await storage.read(key: 'userId');
    final project= await storage.read(key: 'projectId');
    agriculturalRegistry.userId = int.parse(user!);
    agriculturalRegistry.projectId =  int.parse(project!);
    agriculturalRegistry.farmFK.value = data;
    agriculturalRegistry.respuesta1  = _selectedOptions['respuesta1'];
    agriculturalRegistry.respuesta2  = _selectedOptions['respuesta2'];
    agriculturalRegistry.respuesta3  = _selectedOptions['respuesta3'];
    agriculturalRegistry.respuesta4  = _selectedOptions['respuesta4'];
    agriculturalRegistry.respuesta5  = _selectedOptions['respuesta5'];
    agriculturalRegistry.respuesta6  = _selectedOptions['respuesta6'];
    agriculturalRegistry.respuesta7  = _selectedOptions['respuesta7'];
    agriculturalRegistry.respuesta8  = _selectedOptions['respuesta8'];
    agriculturalRegistry.respuesta9  = _selectedOptions['respuesta9'];
    agriculturalRegistry.respuesta10 = _selectedOptions['respuesta10'];
    agriculturalRegistry.respuesta11 = _selectedOptions['respuesta11'];
    agriculturalRegistry.respuesta12 = _selectedOptions['respuesta12'];
    agriculturalRegistry.respuesta13 = _selectedOptions['respuesta13'];
    agriculturalRegistry.respuesta14 = _selectedOptions['respuesta14'];
    agriculturalRegistry.respuesta15 = _selectedOptions['respuesta15'];
    agriculturalRegistry.respuesta16 = _selectedOptions['respuesta16'];
    agriculturalRegistry.respuesta17 = _selectedOptions['respuesta17'];
    agriculturalRegistry.respuesta18 = _selectedOptions['respuesta18'];
    agriculturalRegistry.respuesta19 = _selectedOptions['respuesta19'];
    agriculturalRegistry.respuesta20 = _selectedOptions['respuesta20'];
    agriculturalRegistry.respuesta21 = _selectedOptions['respuesta21'];
    agriculturalRegistry.respuesta22 = _selectedOptions['respuesta22'];
    agriculturalRegistry.respuesta23 = _selectedOptions['respuesta23'];
    agriculturalRegistry.respuesta24 = _selectedOptions['respuesta24'];
    agriculturalRegistry.respuesta25 = _selectedOptions['respuesta25'];
    agriculturalRegistry.respuesta26 = _selectedOptions['respuesta26'];
    agriculturalRegistry.respuesta27 = _selectedOptions['respuesta27'];
    agriculturalRegistry.respuesta28 = _selectedOptions['respuesta28'];
    agriculturalRegistry.respuesta29 = _selectedOptions['respuesta29'];
    agriculturalRegistry.respuesta30 = _selectedOptions['respuesta30'];
    agriculturalRegistry.respuesta31 = _selectedOptions['respuesta31'];
    agriculturalRegistry.respuesta32 = _selectedOptions['respuesta32'];
    agriculturalRegistry.respuesta33 = _selectedOptions['respuesta33'];
    agriculturalRegistry.respuesta34 = _selectedOptions['respuesta34'];
    agriculturalRegistry.respuesta35 = _selectedOptions['respuesta35'];
    agriculturalRegistry.respuesta36 = _selectedOptions['respuesta36'];
    agriculturalRegistry.respuesta37 = _selectedOptions['respuesta37'];
    agriculturalRegistry.respuesta38 = _selectedOptions['respuesta38'];
    agriculturalRegistry.respuesta39 = _selectedOptions['respuesta39'];
    agriculturalRegistry.respuesta40 = _selectedOptions['respuesta40'];
    agriculturalRegistry.respuesta41 = _selectedOptions['respuesta41'];
    agriculturalRegistry.respuesta42 = _selectedOptions['respuesta42'];
    agriculturalRegistry.respuesta43 = _selectedOptions['respuesta43'];
    agriculturalRegistry.respuesta44 = _selectedOptions['respuesta44'];
    agriculturalRegistry.respuesta45 = _selectedOptions['respuesta45'];
    agriculturalRegistry.comment1  = _selectedOptions['comment1'];
    agriculturalRegistry.comment2  = _selectedOptions['comment2'];
    agriculturalRegistry.comment3  = _selectedOptions['comment3'];
    agriculturalRegistry.comment4  = _selectedOptions['comment4'];
    agriculturalRegistry.comment5  = _selectedOptions['comment5'];
    agriculturalRegistry.comment6  = _selectedOptions['comment6'];
    agriculturalRegistry.comment7  = _selectedOptions['comment7'];
    agriculturalRegistry.comment8  = _selectedOptions['comment8'];
    agriculturalRegistry.comment9  = _selectedOptions['comment9'];
    agriculturalRegistry.comment10 = _selectedOptions['comment10'];
    agriculturalRegistry.comment11 = _selectedOptions['comment11'];
    agriculturalRegistry.comment12 = _selectedOptions['comment12'];
    agriculturalRegistry.comment13 = _selectedOptions['comment13'];
    agriculturalRegistry.comment14 = _selectedOptions['comment14'];
    agriculturalRegistry.comment15 = _selectedOptions['comment15'];
    agriculturalRegistry.comment16 = _selectedOptions['comment16'];
    agriculturalRegistry.comment17 = _selectedOptions['comment17'];
    agriculturalRegistry.comment18 = _selectedOptions['comment18'];
    agriculturalRegistry.comment19 = _selectedOptions['comment19'];
    agriculturalRegistry.comment20 = _selectedOptions['comment20'];
    agriculturalRegistry.comment21 = _selectedOptions['comment21'];
    agriculturalRegistry.comment22 = _selectedOptions['comment22'];
    agriculturalRegistry.comment23 = _selectedOptions['comment23'];
    agriculturalRegistry.comment24 = _selectedOptions['comment24'];
    agriculturalRegistry.comment25 = _selectedOptions['comment25'];
    agriculturalRegistry.comment26 = _selectedOptions['comment26'];
    agriculturalRegistry.comment27 = _selectedOptions['comment27'];
    agriculturalRegistry.comment28 = _selectedOptions['comment28'];
    agriculturalRegistry.comment29 = _selectedOptions['comment29'];
    agriculturalRegistry.comment30 = _selectedOptions['comment30'];
    agriculturalRegistry.comment31 = _selectedOptions['comment31'];
    agriculturalRegistry.comment32 = _selectedOptions['comment32'];
    agriculturalRegistry.comment33 = _selectedOptions['comment33'];
    agriculturalRegistry.comment34 = _selectedOptions['comment34'];
    agriculturalRegistry.comment35 = _selectedOptions['comment35'];
    agriculturalRegistry.comment36 = _selectedOptions['comment36'];
    agriculturalRegistry.comment37 = _selectedOptions['comment37'];
    agriculturalRegistry.comment38 = _selectedOptions['comment38'];
    agriculturalRegistry.comment39 = _selectedOptions['comment39'];
    agriculturalRegistry.comment40 = _selectedOptions['comment40'];
    agriculturalRegistry.comment41 = _selectedOptions['comment41'];
    agriculturalRegistry.comment42 = _selectedOptions['comment42'];
    agriculturalRegistry.comment43 = _selectedOptions['comment43'];
    agriculturalRegistry.comment44 = _selectedOptions['comment44'];
    agriculturalRegistry.comment45 = _selectedOptions['comment45'];

    final response = await _localAgricultural.createNewAgriculturalRegistry(agriculturalRegistry);

    if(response == null){
      return false;
    }else{
      _selectedOptions.clear();
      return true;
    }  
  }

}