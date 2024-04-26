import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:fundacion_aip_mobile/features/farm/presentation/providers/farms_projects_provider.dart';
import 'package:fundacion_aip_mobile/features/shared/shared.dart';
import 'package:provider/provider.dart';

import '../../../shared/infrastructure/connection_status_widget.dart';
import '../widgets/item_list.dart';

class SincronizationPendingFarmScreen extends StatefulWidget {
  static const String name = 'synchronization_pending';

  const SincronizationPendingFarmScreen({super.key});

  @override
  State<SincronizationPendingFarmScreen> createState() =>
      _SincronizationPendingFarmScreenState();
}

class _SincronizationPendingFarmScreenState
    extends State<SincronizationPendingFarmScreen> {
  @override
  void initState() {
    super.initState();

    Provider.of<FarmsProjectProvider>(context, listen: false)
        .pendingSinchronization();
  }

  @override
  Widget build(BuildContext context) {
    final listDataPending = Provider.of<FarmsProjectProvider>(context)
        .sinchronizationPendingFarmsList;

    return Scaffold(
      appBar: const CustomAppbar(),
      body: Column(
        children: [
          const ConnectionStatusWidget(),
          const SizedBox(height: 30,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                color: Colors.green[800],
                padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                child: Text(listDataPending.length.toString(), 
                style: const TextStyle(color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold),),
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 14),
                decoration: BoxDecoration(
                  border: Border.all(
                    width: 2,
                    color: Colors.green.shade800
                  )
                ),
                child: const Text('Predios pendientes de sincronización'),
              )
            ],
          ),

          const SizedBox(height: 20,),

          Expanded(
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 10),
              width: double.infinity,
              child: ListView.builder(
                  itemCount: listDataPending.length,
                  itemBuilder: (context, index) => FadeInRight(
                      duration: const Duration(milliseconds: 500),
                      delay: Duration(milliseconds: index * 300),
                      child: GestureDetector(
                        onTap: () {
                          //Le asigna a createNewFarm el item seleccionado de la lista para editarlo
                          // createFarmService.createNewFarm = farmListService[index];
          
                          // if(farmListService[index].imgSignature != null){
                          // final decodeSignature = base64.decode(farmListService[index].imgSignature!);
                          // createFarmService.setImgSignature = decodeSignature;
                          // }
          
                          // if(farmListService[index].imgBeneficiario != null){
                          // final Uint8List decodeFarm = base64.decode(farmListService[index].imgBeneficiario!);
                          //
          
                          // createFarmService.setImgFarm = MemoryImage(decodeFarm);
                          // }
          
                          // context.pushNamed(EditFarmScreen.name);
                        },
                        child: ItemList(
                          item: listDataPending[index],
                        ),
                      ))),
            ),
          ),
        ],
      ),
    );
  }
}
