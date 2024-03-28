
class ProjectByUser{
  final int idProjectHasUser;
  final int projectId;
  final int userId;
  final String userNom;
  final String projectNom;

  ProjectByUser({
    required this.idProjectHasUser, 
    required this.projectId, 
    required this.userId, 
    required this.userNom, 
    required this.projectNom
  });
}