import 'package:fundacion_aip_mobile/features/auth/domain/domain.dart';

abstract class AuthRepository{
  Future<User> login( String usrename, String password );
  Future<User> checkAuthStatus( String token );
}