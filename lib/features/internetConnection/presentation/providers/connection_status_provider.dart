
import 'dart:async';

import 'package:flutter/material.dart';
import 'package:fundacion_aip_mobile/features/internetConnection/infrastructure/datasources/internet_connection_datasource_impl.dart';
import 'package:fundacion_aip_mobile/main.dart';

class ConnectionStatusProvider extends ChangeNotifier{

  late StreamSubscription _connectionSubscription; 

  ConnectionStatus status = ConnectionStatus.online;

  ConnectionStatusProvider(){
    _connectionSubscription = internetChecker
      .internetStatus()
      .listen((newStatus) {
        status = newStatus;
        notifyListeners();
      });
  }

  @override
  void dispose() {
    _connectionSubscription.cancel();
    super.dispose();
  }
}