
import 'projectByUser.dart';

class User{
  final String token;
  final int id;
  final String username;
  final String name;
  final int nit;
  final String cellphone;
  final int rol;
  final List<ProjectByUser> projectByUser;

  User({
    required this.token, 
    required this.id, 
    required this.username, 
    required this.name, 
    required this.nit, 
    required this.cellphone, 
    required this.rol, 
    required this.projectByUser
  });
}