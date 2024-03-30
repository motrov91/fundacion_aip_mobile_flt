import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';


class ControlDotsPageviesProvider extends ChangeNotifier{


  PageController _pageController = PageController(initialPage: 0);
  int _currentPage = 0;

  PageController get getPageController => _pageController;
  int get getCurrentPage => _currentPage;

  void onPageChanged(int index){
    _currentPage = index;
    notifyListeners();
  }

  void dispose(){
    _pageController.dispose();
    super.dispose();
  }
}