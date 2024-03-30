import 'package:dio/dio.dart';
import 'package:fundacion_aip_mobile/config/dio/dioConfig.dart';
import 'package:fundacion_aip_mobile/features/auth/infrastructure/errors/auth_errors.dart';
import 'package:fundacion_aip_mobile/features/auth/infrastructure/mappers/user_mapper.dart';
import '../../domain/domain.dart';

class AuthDatasourceImpl extends AuthDatasource{


  @override
  Future<User> checkAuthStatus(String token) {
    // TODO: implement checkAuthStatus
    throw UnimplementedError();
  }

  @override
  Future<User> login(String username, String password) async {

    Map<String, String> data = {
      'username': username,
      'password': password
    };

    try{
      final response = await DioConfig.httpPost('/signin', data);

      //print('RESPONSE despues del response ${response.data}');

      final user = UserMapper.userJsonToEntity(response.data);

      return user;

    } on DioException catch(e){
      if(e.response?.statusCode == 401) throw WrongCredentials();
      if(e.type == DioExceptionType.connectionTimeout) throw ConnectionTimeout();
      throw CustomError('Sucedio algo inesperado');
    }catch (e){
      throw CustomError('Sucedio algo inesperado');
    }
  }

}