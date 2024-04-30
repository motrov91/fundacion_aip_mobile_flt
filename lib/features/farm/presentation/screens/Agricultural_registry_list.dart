import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:fundacion_aip_mobile/features/shared/shared.dart';

class AgriculturalRegistryList extends StatelessWidget {
  static const String name = 'agricultural_registry_list';

  const AgriculturalRegistryList({super.key});

  @override
  Widget build(BuildContext context) {
    final scaffoldKey = GlobalKey<ScaffoldState>();

    return Scaffold(
      appBar: const CustomAppbar(),
      drawer: SideMenu(scaffoldKey: scaffoldKey),
      body: Column(
        children: [
          Align(
            alignment: Alignment.center,
            child: Text(
              'Registro de productor agrícola',
              style: TextStyle(
                  color: Colors.green[800], fontWeight: FontWeight.bold),
            ),
          ),
          Container(
            margin: const EdgeInsets.all(5),
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
                color: Colors.red[400],
                borderRadius: BorderRadius.circular(10)),
            child: const Text(
              'Recuerda que para sincronizar registros primero tendras que haber sincronizado todos las caracterizaciones de predios.',
              style: TextStyle(color: Colors.white),
              textAlign: TextAlign.center,
            ),
          ),
          //* Lista de registros
          Expanded(
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 10),
              width: double.infinity,
              child: ListView.builder(
                  itemCount: 10,
                  itemBuilder: (context, index) => FadeInRight(
                      duration: const Duration(milliseconds: 500),
                      delay: Duration(milliseconds: index * 300),
                      child: Text(''))),
            ),
          ),
        ],
      ),
    );
  }
}
