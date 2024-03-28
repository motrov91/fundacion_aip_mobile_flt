import 'package:dio/dio.dart';
import 'package:fundacion_aip_mobile/features/auth/infrastructure/errors/auth_errors.dart';
import 'package:fundacion_aip_mobile/features/auth/infrastructure/mappers/user_mapper.dart';

import '../../../../config/constants/enviroment.dart';
import '../../domain/domain.dart';

class AuthDatasourceImpl extends AuthDatasource{

  final dio = Dio(
    BaseOptions(
      baseUrl: Enviroment.aipUrl
    )
  );


  @override
  Future<User> checkAuthStatus(String token) {
    // TODO: implement checkAuthStatus
    throw UnimplementedError();
  }

  @override
  Future<User> login(String username, String password) async {
    try{
      final response = await dio.post('/signin', data: {
        'username': username,
        'password': password
      });

      print('RESPONSE despues del response ${response.data}');

      final user = UserMapper.userJsonToEntity(response.data);

      return user;

    }catch(e){
      print('IMPRIMIENDO EL ERROR $e');
      throw WrongCredentials();
    }
  }

}