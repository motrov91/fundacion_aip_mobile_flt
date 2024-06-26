import 'package:flutter/material.dart';
import 'package:fundacion_aip_mobile/features/auth/infrastructure/repositories/auth_repository_impl.dart';
import 'package:fundacion_aip_mobile/features/auth/presentation/providers/auth_provider.dart';
import 'package:fundacion_aip_mobile/features/farm/infrastructure/datasource/local_storage_datasource_impl.dart';
import 'package:fundacion_aip_mobile/features/farm/infrastructure/datasource/local_agricultural_registry_datasource_impl.dart';
import 'package:fundacion_aip_mobile/features/farm/infrastructure/repositories/farm_repository_impl.dart';
import 'package:fundacion_aip_mobile/features/farm/infrastructure/repositories/local_agricultural_registry_repository_impl.dart';
import 'package:fundacion_aip_mobile/features/farm/infrastructure/repositories/local_stororage_repository_impl.dart';
import 'package:fundacion_aip_mobile/features/farm/presentation/providers/agricultural_registry_provider.dart';
import 'package:fundacion_aip_mobile/features/farm/presentation/providers/farms_projects_provider.dart';
import 'package:fundacion_aip_mobile/features/internetConnection/infrastructure/datasources/internet_connection_datasource_impl.dart';
import 'package:fundacion_aip_mobile/features/internetConnection/presentation/providers/connection_status_provider.dart';
import 'package:fundacion_aip_mobile/features/projects/presentation/providers/projects_provider.dart';
import 'package:provider/provider.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:fundacion_aip_mobile/config/router/app_router.dart';
import 'package:fundacion_aip_mobile/config/theme/app_theme.dart';
import 'package:fundacion_aip_mobile/features/farm/farm.dart';

final internetChecker = CheckInternetConnection();

Future<void> main() async {
  await dotenv.load(fileName: ".env");

  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(
          create: (context) => CreateFarmProvider(LocalStorageRepositoryImpl(
              datasource: LocalStorageDatasourceImpl()))),
      ChangeNotifierProvider(
          create: (context) => ControlDotsPageviesProvider()),
      ChangeNotifierProvider(
        create: (context) => AuthProvider(authRepository: AuthRepositoryImpl()),
      ),
      ChangeNotifierProvider(create: (context) => ProjectsProvider()),
      ChangeNotifierProvider(
          create: (context) => FarmsProjectProvider(
                FarmRepositoryImpl(),
                LocalStorageRepositoryImpl(
                    datasource: LocalStorageDatasourceImpl()),
                ConnectionStatusProvider(),
                LocalAgriculturalRepositoryImpl(
                    datasource: LocalAgriculturalRegistryDatasourceImpl()),
              )),
      ChangeNotifierProvider(
          create: (context) => AgriculturalRegistryProvider(
              LocalAgriculturalRepositoryImpl(
                  datasource: LocalAgriculturalRegistryDatasourceImpl()),
              LocalStorageRepositoryImpl(
                  datasource: LocalStorageDatasourceImpl()))),
      ChangeNotifierProvider(create: (context) => ConnectionStatusProvider()),
    ],
    child: const MyApp(),
  ));
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
