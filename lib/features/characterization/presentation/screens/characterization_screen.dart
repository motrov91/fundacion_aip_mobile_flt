import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:fundacion_aip_mobile/config/menu/menu_items.dart';
import 'package:fundacion_aip_mobile/features/characterization/characterization.dart';
import 'package:fundacion_aip_mobile/features/createFarm/presentation/screens/create_farm_screen.dart';
import 'package:fundacion_aip_mobile/features/shared/shared.dart';
import 'package:go_router/go_router.dart';

class Farm {
  final String nombre;
  final int cedula;
  final String nombrePredio;
  final String municipio;
  final String vereda;
  final bool uploaded;

  Farm(
      {required this.uploaded,
      required this.cedula,
      required this.nombre,
      required this.nombrePredio,
      required this.municipio,
      required this.vereda});
}

class Characterizationcreen extends StatelessWidget {
  static const String name = 'characterization_screen';

  const Characterizationcreen({super.key});

  @override
  Widget build(BuildContext context) {

    final scaffoldKey = GlobalKey<ScaffoldState>();

    List<Farm> farmList = [
      Farm(
          cedula: 11111111,
          nombre: 'Manuel Fernando Ramirez',
          nombrePredio: 'El jaragual',
          municipio: 'Popayán',
          vereda: 'La sabana de calibio',
          uploaded: false),
      Farm(
          cedula: 11111112,
          nombre: 'Manuel Fernando Ramirez',
          nombrePredio: 'El jaragual',
          municipio: 'Popayán',
          vereda: 'La sabana de calibio',
          uploaded: true),
      Farm(
          cedula: 11111113,
          nombre: 'Manuel Fernando Ramirez',
          nombrePredio: 'El jaragual',
          municipio: 'Popayán',
          vereda: 'La sabana de calibio',
          uploaded: false),
      Farm(
          cedula: 11111114,
          nombre: 'Manuel Fernando Ramirez',
          nombrePredio: 'El jaragual',
          municipio: 'Popayán',
          vereda: 'La sabana de calibio',
          uploaded: false),
      Farm(
          cedula: 11111115,
          nombre: 'Manuel Fernando Ramirez',
          nombrePredio: 'El jaragual',
          municipio: 'Popayán',
          vereda: 'La sabana de calibio',
          uploaded: true),
      Farm(
          cedula: 11111116,
          nombre: 'Manuel Fernando Ramirez',
          nombrePredio: 'El jaragual',
          municipio: 'Popayán',
          vereda: 'La sabana de calibio',
          uploaded: true),
      Farm(
          cedula: 11111117,
          nombre: 'Manuel Fernando Ramirez',
          nombrePredio: 'El jaragual',
          municipio: 'Popayán',
          vereda: 'La sabana de calibio',
          uploaded: true),
    ];

    final txtTitle = Theme.of(context)
        .textTheme
        .labelLarge!
        .copyWith(color: Theme.of(context).colorScheme.primary);

    return Scaffold(
      key: scaffoldKey,
      drawer: SideMenu(
        scaffoldKey: scaffoldKey,
      ),
      appBar: const CustomAppbar(),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.greenAccent[600],
        onPressed: () => context.pushNamed(CreateFarmScreen.name),
        child: Icon(Icons.list_alt_outlined,
            color: Theme.of(context).colorScheme.primary),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SearchFarm(),
          const SizedBox(
            height: 8,
          ),
          Center(
            child: Text('Mis predios caracterizados',
                textAlign: TextAlign.center, style: txtTitle),
          ),
          const SizedBox(
            height: 5,
          ),
          Expanded(
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 10),
              width: double.infinity,
              child: ListView.builder(
                  itemCount: farmList.length,
                  itemBuilder: (context, index) => FadeInRight(
                      duration: const Duration(milliseconds: 500),
                      delay: Duration(milliseconds: index * 300),
                      child: ItemList(
                        item: farmList[index],
                      ))),
            ),
          )
        ],
      ),
    );
  }
}
