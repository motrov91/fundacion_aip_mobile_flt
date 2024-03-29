import 'package:flutter/material.dart';
import 'package:fundacion_aip_mobile/features/auth/domain/domain.dart';
import 'package:fundacion_aip_mobile/features/auth/infrastructure/errors/auth_errors.dart';

class AuthProvider extends ChangeNotifier{

  final AuthRepository _authRepository;
  //Creamos una instancia de ProjectsProvider para poder consumir la lista vacia y pasarle datos
  User? user;
  bool isLoading = false;

  String? _username;
  String? _password;
  List<ProjectByUser> projectsList = [];
  String? errorMesage;

  //Constructor
  AuthProvider(this._authRepository);

  String? get getUsername => _username;
  String? get getPassword => _password;

  set setUsername(String value) {
    _username = value;
    notifyListeners();
  }

  set setPassword(String value){
    _password = value;
    notifyListeners();
  }

  Future<void> loginUser( String username, String password) async {
    try{
      isLoading = true;
      notifyListeners();
      user = await _authRepository.login(username, password);

      /**
        * Una vez se ha obtenido el usuario obtenemos los proyectos que tiene vinculados
        * y los pasamos a otro provider en este caso ProjectsProvider a una nueva lista.
        * esto con el fin de mostrarlos en el dropdown de seleccionar el proyecto.
      */
      projectsList = user!.projectByUser;
      isLoading = false;

      notifyListeners();
    } on WrongCredentials {
      logout('Las credenciales no son correctas');
    } catch(e){
      logout('Error no controlado');
    }
  }

  bool isValidForm(){

    if(_username == null) return false;
    if(_password == null) return false;

    notifyListeners();

    return true;
  }

  Future<void> logout([String? errorMesage]) async{
    //TODO: Limpiar el token que se almeca persistentemente
  }

}