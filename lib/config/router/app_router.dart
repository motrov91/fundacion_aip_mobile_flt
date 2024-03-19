
import 'package:fundacion_aip_mobile/features/tutorial/screens/tutorial_screen.dart';
import 'package:go_router/go_router.dart';

import '../../features/auth/auth.dart';
import '../../features/projects/projects.dart';
import '../../features/characterization/characterization.dart';

final appRouter = GoRouter(
  initialLocation: '/project',
  routes: [

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
      builder: (context, state) => const Characterizationcreen()
    ),

  ]);