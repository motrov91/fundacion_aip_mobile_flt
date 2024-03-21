
import 'package:flutter/material.dart';
import 'package:fundacion_aip_mobile/features/shared/shared.dart';
import '../../createFarm.dart';

class CreateFarmScreen extends StatelessWidget {

  static const String name = '/create_farm';

  const CreateFarmScreen({super.key});

  @override
  Widget build(BuildContext context) {

    final scaffoldKey = GlobalKey<ScaffoldState>();
    
    return Scaffold(
      key: scaffoldKey,
      appBar: const CustomAppbar(),
      drawer: SideMenu(scaffoldKey: scaffoldKey,),
      body: Column(
        children: [
          
          Expanded(
            child: Stack(
              children: [
                PageView(
                  children: const [
                    DatosContactoTitular(),
                    DatosPredio(),
                    DatosAprendizaje(),
                    DatosLote1(),
                    DatosLote2(),
                    DatosLote3(),
                    DatosLote4(),
                    DatosLote5(),
                    DatosVisita()
                  ],
                ),
                Positioned(
                  bottom: 0,
                  left: 0,
                  right: 0,
                  child: _DotIndicator()
                )
              ],
            ),
          ),


        ],
      )
    );
  }
}

class _DotIndicator extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      margin: const EdgeInsets.only(bottom: 15),
      child: ClipOval(
        child: Container(
          width: 8,
          height: 8,
          color: Colors.red,
        ),
      ),
    );
  }
}