import 'package:flutter/material.dart';
import 'package:fundacion_aip_mobile/features/auth/domain/domain.dart';
import 'package:fundacion_aip_mobile/features/auth/infrastructure/errors/auth_errors.dart';

class AuthProvider extends ChangeNotifier{

  AuthRepository _authRepository;
  User? user;

  String? _username;
  String? _password;

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

  void loginUser( String username, String password) async {
    try{
      user = await _authRepository.login(username, password);
      print('USER DESDE EL PROVIDER ${user!.projectByUser[0].projectNom}');
      notifyListeners();
    } on WrongCredentials catch(e){
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