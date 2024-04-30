import 'package:flutter/material.dart';
import 'package:fundacion_aip_mobile/features/farm/presentation/providers/agricultural_registry_provider.dart';
import 'package:fundacion_aip_mobile/features/farm/presentation/screens/characterization_screen.dart';
import 'package:fundacion_aip_mobile/features/farm/presentation/widgets/agriculturalRegistryWidgets/informationAccess.dart';
import 'package:fundacion_aip_mobile/features/farm/presentation/widgets/agriculturalRegistryWidgets/naturalEnviroment.dart';
import 'package:fundacion_aip_mobile/features/farm/presentation/widgets/agriculturalRegistryWidgets/organization.dart';
import 'package:fundacion_aip_mobile/features/farm/presentation/widgets/agriculturalRegistryWidgets/participationMechanism.dart';
import 'package:fundacion_aip_mobile/features/farm/presentation/widgets/agriculturalRegistryWidgets/principalActivity.dart';
import 'package:fundacion_aip_mobile/features/shared/shared.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import '../providers/create_farm_provider.dart';
import '../providers/farms_projects_provider.dart';

class AgriculturalRegistryScreen extends StatelessWidget {
  static const String name = 'agricultural_registry_screen';

  const AgriculturalRegistryScreen({
    super.key,
  });

  /*
   * Función que ejecuta el snackbar si no se cumple con los campos obligatorios
  */
  void showCumtomSnackbar(BuildContext ctx, String message, Color colorStatus) {
    ScaffoldMessenger.of(ctx).clearSnackBars();

    final snackBar = SnackBar(
      backgroundColor: colorStatus,
      content: Text(message),
      duration: const Duration(seconds: 5),
      action: SnackBarAction(
        label: 'Ok',
        onPressed: () {},
        textColor: Colors.amber,
      ),
    );

    ScaffoldMessenger.of(ctx).showSnackBar(snackBar);
  }

  void updateFarm(CreateFarmProvider farmProvider,
      FarmsProjectProvider projectProvider) async {
    final farmUpdated = await farmProvider.updateFarm();

    if (farmUpdated != null) {
      await projectProvider.updateFarmInList(farmUpdated);
      return;
    }
  }

  @override
  Widget build(BuildContext context) {
    final scaffoldKey = GlobalKey<ScaffoldState>();
    final agriculturalService =
        Provider.of<AgriculturalRegistryProvider>(context);
    //para ingresar hasta esta vista tenemos que pasar por el editFarm de ahi obtenemos los datos para pasarlos a la creacion de
    //de nuestro agriculturalRegistry
    final editFarm = Provider.of<CreateFarmProvider>(context);
    final projectService = Provider.of<FarmsProjectProvider>(context);

    return Scaffold(
      key: scaffoldKey,
      appBar: const CustomAppbar(),
      drawer: SideMenu(scaffoldKey: scaffoldKey),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Theme.of(context).primaryColor,
        onPressed: () async {
          if (agriculturalService.isValidForm()) {
            final result = await agriculturalService
                .addAgriculturalRegistry(editFarm.createNewFarm);

            if (result == false) {
              showCumtomSnackbar(context, 'No se ha podido crear el registro',
                  Colors.red[400]!);
              context.pushReplacementNamed(Characterizationcreen.name);
            } else {
              editFarm.createNewFarm.haveAgriculturalRegistry = true;

              updateFarm(editFarm, projectService);

              showCumtomSnackbar(
                  context, 'Registro creado exitosamente', Colors.green[400]!);
              context.pushReplacementNamed(Characterizationcreen.name);
            }
          } else {
            showCumtomSnackbar(
                context,
                'Recuerda que es importante diligencias todos los campos',
                Colors.red[400]!);
          }
        },
        child: const Icon(
          Icons.save,
          color: Colors.white,
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: Form(
                key: agriculturalService.formkeyAgricultural,
                child: PageView(
                  children: const [
                    PrincipalActivity(),
                    Organization(),
                    InformationAccess(),
                    NaturalEnviroment(),
                    ParticipationMechanism()
                  ],
                )),
          )
        ],
      ),
    );
  }
}
