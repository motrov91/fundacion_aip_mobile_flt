import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:fundacion_aip_mobile/features/auth/domain/domain.dart';
import 'package:fundacion_aip_mobile/features/auth/infrastructure/errors/auth_errors.dart';


enum AuthStatus { checking, authenticated, notAuthenticated }

class AuthProvider extends ChangeNotifier{

  final AuthRepository authRepository;

  GlobalKey<FormState> formkeyLogin = GlobalKey<FormState>();

  AuthStatus authStatus;

  final storage = const FlutterSecureStorage();

  User? user;
  bool isLoading = false;

  String? _username;
  String? _password;
  List<ProjectByUser> projectsList = [];
  String? errorMesage;

  //Constructor
  AuthProvider({
    this.authStatus = AuthStatus.checking,
    required this.authRepository
  });

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
      user = await authRepository.login(username, password);

      /**
        * Una vez se ha obtenido el usuario obtenemos los proyectos que tiene vinculados
        * y los pasamos a otro provider en este caso ProjectsProvider a una nueva lista.
        * esto con el fin de mostrarlos en el dropdown de seleccionar el proyecto.
      */
      if(user != null){

        await storage.write(key: 'userId', value: user!.id.toString());
        await storage.write(key: 'token', value: user!.token.toString());

        projectsList = user!.projectByUser;
        isLoading = false;
        errorMesage = null;

        authStatus = AuthStatus.authenticated;
        notifyListeners();
      }else{
        errorMesage = 'No se ha podido obtener el usuario';
        notifyListeners();
      }
    } on WrongCredentials {
      errorMesage = "Las credenciales no son correctas";
      isLoading = false;
      logout('Las credenciales no son correctas');
      notifyListeners();
    } catch(e){
      logout('Error no controlado');
    }
  }

  bool isValidForm(){

    if(formkeyLogin.currentState!.validate()){
      return true;
    }else{
      return false;
    }
  }

  Future<void> logout([String? errorMesage]) async {
    await storage.delete(key: 'token');
    return;
  }

  Future<String> readToken() async {
    return await storage.read(key: 'token') ?? '';
  }

}