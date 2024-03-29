
import 'package:flutter/material.dart';

import '../../../auth/domain/domain.dart';

class ProjectsProvider extends ChangeNotifier{

  List<ProjectByUser> _projectsList = [];

  List<ProjectByUser> get dataProjectsList => _projectsList;

  void setAddItemProjectList(List<ProjectByUser> value){
    _projectsList = value;
    notifyListeners();
  }

}