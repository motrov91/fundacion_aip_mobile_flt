import 'package:flutter/material.dart';
import 'package:fundacion_aip_mobile/config/router/app_router.dart';
import 'package:fundacion_aip_mobile/config/theme/app_theme.dart';

void main() => runApp(const MyApp());

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