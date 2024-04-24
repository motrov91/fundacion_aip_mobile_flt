import 'package:fundacion_aip_mobile/features/auth/domain/domain.dart';
import 'package:fundacion_aip_mobile/features/auth/infrastructure/mappers/projectsByUser_mapper.dart';

class UserMapper {
    final DataSignin dataSignin;

    UserMapper({
        required this.dataSignin,
    });

    factory UserMapper.fromJson(Map<String, dynamic> json) => UserMapper(
        dataSignin: DataSignin.fromJson(json["dataSignin"]),
    );

    Map<String, dynamic> toJson() => {
        "dataSignin": dataSignin.toJson(),
    };

    static User userJsonToEntity(Map<String,dynamic> json) => User(
      token: json['dataSignin']['token'], 
      id: json['dataSignin']['id'], 
      username: json['dataSignin']['username'], 
      name: json['dataSignin']['name'], 
      nit: json['dataSignin']['nit'], 
      cellphone: json['dataSignin']['cellphone'], 
      rol: json['dataSignin']['rol'], 
      //projectByUser: ProjectByUser()
      projectByUser: List<ProjectByUser>.from(json['dataSignin']['projectsByUser']
        .map((item) => ProjectByUser(
          idProjectHasUser: item['id_project_has_user'], 
          projectId: item['project_id'], 
          userId: item['user_id'], 
          userNom: item['user_nom'], 
          projectNom: item['project_nom']
        )))
    );

    
}

 

class DataSignin {
    final String token;
    final int id;
    final String username;
    final String name;
    final int nit;
    final String cellphone;
    final int rol;
    final List<ProjectsByUser> projectsByUser;

    DataSignin({
        required this.token,
        required this.id,
        required this.username,
        required this.name,
        required this.nit,
        required this.cellphone,
        required this.rol,
        required this.projectsByUser,
    });

    factory DataSignin.fromJson(Map<String, dynamic> json) => DataSignin(
        token: json["token"],
        id: json["id"],
        username: json["username"],
        name: json["name"],
        nit: json["nit"],
        cellphone: json["cellphone"],
        rol: json["rol"],
        projectsByUser: List<ProjectsByUser>.from(json["projectsByUser"].map((x) => ProjectsByUser.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "token": token,
        "id": id,
        "username": username,
        "name": name,
        "nit": nit,
        "cellphone": cellphone,
        "rol": rol,
        "projectsByUser": List<dynamic>.from(projectsByUser.map((x) => x.toJson())),
    };

    @override
    String toString() {
    return 'user { token : $token } - {id : $id} - {username : $username';
  }
}