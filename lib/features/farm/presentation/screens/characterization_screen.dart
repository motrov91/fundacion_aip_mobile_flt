import 'dart:convert';
import 'dart:typed_data';

import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:fundacion_aip_mobile/features/farm/domain/entities/farm.dart';
import 'package:fundacion_aip_mobile/features/farm/farm.dart';
import 'package:fundacion_aip_mobile/features/farm/presentation/screens/create_farm_screen.dart';
import 'package:fundacion_aip_mobile/features/farm/presentation/screens/edit_farm_screen.dart';
import 'package:fundacion_aip_mobile/features/shared/infrastructure/connection_status_widget.dart';
import 'package:fundacion_aip_mobile/features/shared/shared.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

import '../providers/farms_projects_provider.dart';

class Characterizationcreen extends StatelessWidget {
  static const String name = 'characterization_screen';

  const Characterizationcreen({super.key});

  @override
  Widget build(BuildContext context) {

    final scaffoldKey = GlobalKey<ScaffoldState>();

    final txtTitle = Theme.of(context)
        .textTheme
        .labelLarge!
        .copyWith(color: Theme.of(context).colorScheme.primary);

    final colors = Theme.of(context).colorScheme.primary;

    final farmListService =
        Provider.of<FarmsProjectProvider>(context).localstorageFarmsList;
    
    final createFarmService = Provider.of<CreateFarmProvider>(context);

    return Scaffold(
      key: scaffoldKey,
      drawer: SideMenu(
        scaffoldKey: scaffoldKey,
      ),
      appBar: const CustomAppbar(),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.greenAccent[600],
        onPressed: () {
          createFarmService.createNewFarm = Farm();
          createFarmService.setImgSignature = null;
          createFarmService.setImgFarm = null;
          context.pushNamed(CreateFarmScreen.name);
        },
        child: Icon(Icons.list_alt_outlined,
            color: Theme.of(context).colorScheme.primary),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const ConnectionStatusWidget(),
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
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.file_upload,
                color: colors,
              ),
              const SizedBox(width: 3,),
              Text('Sin sincronizar', style: TextStyle(color: colors),),
              const SizedBox(width: 15,),
              Icon(
                Icons.cloud_done_outlined,
                size: 22,
                color: Colors.amber.shade700,
              ),
              const SizedBox(width: 3,),
              Text('Sincronizado', style: TextStyle(color: Colors.amber.shade700),)
            ],
          ),
          const SizedBox(
            height: 5,
          ),
          Expanded(
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 10),
              width: double.infinity,
              child: ListView.builder(
                  itemCount: farmListService.length,
                  itemBuilder: (context, index) => FadeInRight(
                      duration: const Duration(milliseconds: 500),
                      delay: Duration(milliseconds: index * 300),
                      child: GestureDetector(
                        onTap: (){
                          //Le asigna a createNewFarm el item seleccionado de la lista para editarlo
                          createFarmService.createNewFarm = farmListService[index];

                          if(farmListService[index].imgSignature != null){
                            final decodeSignature = base64.decode(farmListService[index].imgSignature!);
                            createFarmService.setImgSignature = decodeSignature;
                          }

                          if(farmListService[index].imgBeneficiario != null){
                            final Uint8List decodeFarm = base64.decode(farmListService[index].imgBeneficiario!);
                            

                            createFarmService.setImgFarm = MemoryImage(decodeFarm);
                          }

                          context.pushNamed(EditFarmScreen.name);
                        },
                        child: ItemList(
                          item: farmListService[index],
                        ),
                      ))),
            ),
          ),
          const SizedBox(height: 40,)
        ],
      ),
    );
  }
}
