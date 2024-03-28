import 'package:fundacion_aip_mobile/features/auth/infrastructure/datasources/auth_datasource_impl.dart';

import '../../domain/domain.dart';

class AuthRepositoryImpl extends AuthRepository{

  final AuthDatasource datasource;

  AuthRepositoryImpl({
    AuthDatasource? datasource
  }) : datasource = datasource ?? AuthDatasourceImpl();

  @override
  Future<User> checkAuthStatus(String token) {
    return datasource.checkAuthStatus(token);
  }

  @override
  Future<User> login(String username, String password) {
    return datasource.login(username, password);
  }

}