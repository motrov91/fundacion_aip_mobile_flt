import 'package:fundacion_aip_mobile/features/auth/presentation/screens/checking_auth_screen.dart';
import 'package:fundacion_aip_mobile/features/farm/presentation/screens/Agricultural_registry_list.dart';
import 'package:fundacion_aip_mobile/features/farm/presentation/screens/agricultural_registry_screen.dart';
import 'package:fundacion_aip_mobile/features/farm/presentation/screens/create_farm_screen.dart';
import 'package:fundacion_aip_mobile/features/farm/presentation/screens/edit_farm_screen.dart';
import 'package:fundacion_aip_mobile/features/tutorial/screens/tutorial_screen.dart';
import 'package:go_router/go_router.dart';

import '../../features/auth/auth.dart';
import '../../features/farm/presentation/screens/characterization_screen.dart';
import '../../features/farm/presentation/screens/sincronization_pending_farms_screen.dart';
import '../../features/projects/projects.dart';

final appRouter = GoRouter(
  initialLocation: '/checking',
  routes: [
    //* Check Outh
    GoRoute(
      path: '/checking',
      builder: (context, state) => const CheckingOutScreen(),
    ),

    //* Tutorial route
    GoRoute(
      path: '/tutorial',
      name: TutorialScreen.name,
      builder: (context, state) => const TutorialScreen(),
    ),

    //* Auth route
    GoRoute(
      path: '/login',
      name: LoginScreen.name,
      builder: (context, state) => const LoginScreen(),
    ),

    //* Project route
    GoRoute(
      path: '/project',
      name: ProjectsScreen.name,
      builder: (context, state) => const ProjectsScreen(),
    ),

    //* Characterization route
    GoRoute(
        path: '/',
        name: Characterizationcreen.name,
        builder: (context, state) => const Characterizationcreen()),

    GoRoute(
        path: '/synchronization_pending',
        name: SincronizationPendingFarmScreen.name,
        builder: (context, state) => SincronizationPendingFarmScreen()),
    //* Create farm
    GoRoute(
        path: '/create_farm',
        name: CreateFarmScreen.name,
        builder: (context, state) => CreateFarmScreen()),
    //* Edit farm
    GoRoute(
        path: '/edit_farm',
        name: EditFarmScreen.name,
        builder: (context, state) => const EditFarmScreen()),
    //* Formulario de registro agricola
    GoRoute(
        path: '/agriculturalRegistry',
        name: AgriculturalRegistryScreen.name,
        builder: (context, state) => const AgriculturalRegistryScreen()),
    //* Listado de registro agricola sincronizados y por sincronizar
    GoRoute(
        path: '/agricultural_registry_list',
        name: AgriculturalRegistryList.name,
        builder: (context, state) => const AgriculturalRegistryList()),
  ],
);
