
import 'package:flutter/material.dart';
import 'package:fundacion_aip_mobile/features/shared/shared.dart';
import 'package:provider/provider.dart';
import '../../farm.dart';

class CreateFarmScreen extends StatelessWidget {

  static const String name = '/create_farm';  

  CreateFarmScreen({super.key});

  /*
   * Función que ejecuta el snackbar si no se cumple con los campos obligatorios
  */
  void showCumtomSnackbar(BuildContext ctx){

    ScaffoldMessenger.of(ctx).clearSnackBars();

    final snackBar = SnackBar(
      backgroundColor: Colors.red[400],
      content: const Text('Falta diligenciar algunos campos obligatorios, verifica tambien la foto y la firma antes de crear el predio en el dispositivo'),
      duration: const Duration(seconds: 5),  
      action: SnackBarAction(
        label: 'Ok', onPressed: (){}, textColor: Colors.amber,),
    );

    ScaffoldMessenger.of(ctx).showSnackBar(snackBar);
  }

  @override
  Widget build(BuildContext context) {

    final scaffoldKey = GlobalKey<ScaffoldState>();
    //final listLength = DataPageViewProvider.pageList().length;
    final farmService = Provider.of<CreateFarmProvider>(context);
    final color = Theme.of(context).colorScheme.primary;
    final saveFarm = Provider.of<CreateFarmProvider>(context);

    
    return Scaffold(
      key: scaffoldKey,
      appBar: const CustomAppbar(),
      floatingActionButton: FloatingActionButton(
        backgroundColor: color,
        onPressed: (){

          if(farmService.isValidForm()){
            saveFarm.saveFarm(10, 81);
          }else{
            showCumtomSnackbar(context);
          }


        },
        child: const Icon(Icons.save, color: Colors.white),
      ),
      drawer: SideMenu(scaffoldKey: scaffoldKey,),
      body: Column(
        children: [
          Expanded(
            child: Stack(
              children: [
                Form(
                  key: farmService.formkey,
                  child: PageView(    
                    children:  const [
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
                ),
                // Positioned(
                //   bottom: 0,
                //   left: 0,
                //   right: 0,
                //   //child: _DotIndicator()
                //   child: _DotIndicator(pageLength: listLength),
                // )
              ],
            ),
          ),


        ],
      )
    );
  }
}

class _DotIndicator extends StatelessWidget {

  final int pageLength;

  const _DotIndicator({
    super.key, 
    required this.pageLength, 
  });

  @override
  Widget build(BuildContext context) {

    final currentPage = Provider.of<ControlDotsPageviesProvider>(context).getCurrentPage;
    print(currentPage);

    return Container(
      margin: const EdgeInsets.only(bottom: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: List<Widget>.generate(pageLength, (index) => Container(
          margin: const EdgeInsets.all(3),
          width: currentPage == index ? 13 : 10,
          height: currentPage == index ? 13 : 10,
          decoration: BoxDecoration(
              color: currentPage == index ? const Color(0xff4caf50) : Colors.lightGreen[100],
              shape: BoxShape.circle),
        ))
      ),
    );
  }
}