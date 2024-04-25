import 'package:flutter/material.dart';
import 'package:fundacion_aip_mobile/features/internetConnection/infrastructure/datasources/internet_connection_datasource_impl.dart';
import 'package:fundacion_aip_mobile/features/internetConnection/presentation/providers/connection_status_provider.dart';
import 'package:provider/provider.dart';

class ConnectionStatusWidget extends StatelessWidget {
  const ConnectionStatusWidget({super.key});

  @override
  Widget build(BuildContext context) {

    final statusConnection = Provider.of<ConnectionStatusProvider>(context).status;

    return Visibility(
      visible: statusConnection != ConnectionStatus.online,
      child: Container(
        padding: const EdgeInsets.all(6),
        height: 40,
        color: Colors.red[400],
        child: const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
          Icon(Icons.wifi_off_outlined, color: Colors.white,),
          SizedBox(width: 8,),
          Text('Estas trabajando sin conexión', style: TextStyle(color: Colors.white),)
        ],),
      ),
    );
  }
}