import 'package:flutter/material.dart';
import 'package:fundacion_aip_mobile/features/auth/infrastructure/repositories/auth_repository_impl.dart';
import 'package:fundacion_aip_mobile/features/auth/presentation/providers/auth_provider.dart';
import 'package:fundacion_aip_mobile/features/farm/infrastructure/datasource/isar_datasource_impl.dart';
import 'package:fundacion_aip_mobile/features/farm/infrastructure/repositories/farm_repository_impl.dart';
import 'package:fundacion_aip_mobile/features/farm/infrastructure/repositories/local_stororage_repository_impl.dart';
import 'package:fundacion_aip_mobile/features/farm/presentation/providers/farms_projects_provider.dart';
import 'package:fundacion_aip_mobile/features/projects/presentation/providers/projects_provider.dart';
import 'package:provider/provider.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:fundacion_aip_mobile/config/router/app_router.dart';
import 'package:fundacion_aip_mobile/config/theme/app_theme.dart';
import 'package:fundacion_aip_mobile/features/farm/farm.dart';

Future<void> main() async{

  await dotenv.load(fileName: ".env");

  runApp(
  MultiProvider(
    providers: [
      ChangeNotifierProvider(create: (context) => CreateFarmProvider()),
      ChangeNotifierProvider(create: (context) => ControlDotsPageviesProvider()),
      ChangeNotifierProvider(create: (context) => AuthProvider(AuthRepositoryImpl()),),
      ChangeNotifierProvider(create: (context) => ProjectsProvider()),
      ChangeNotifierProvider(create: (context) => FarmsProjectProvider(FarmRepositoryImpl(), LocalStorageRepositoryImpl(datasource: IsarDatasourceImpl())))

    ],
    child: const MyApp(),
  )
);
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: appRouter,
      title: 'Material App',
      theme: AppTheme().getTheme(),
    );
  }
}