import 'package:flutter/material.dart';
import 'package:fundacion_aip_mobile/config/menu/menu_items.dart';
import 'package:fundacion_aip_mobile/features/auth/auth.dart';
import 'package:fundacion_aip_mobile/features/auth/presentation/providers/auth_provider.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

class SideMenu extends StatelessWidget {

  final GlobalKey<ScaffoldState> scaffoldKey;

  const SideMenu({
    super.key, 
    required this.scaffoldKey
  });

  @override
  Widget build(BuildContext context) {

    int navDrawerIndex = 0;

    final hasNotch = MediaQuery.of(context).viewPadding.top > 35;

    final authService = Provider.of<AuthProvider>(context, listen: false);

    return NavigationDrawer(
      selectedIndex: navDrawerIndex,
      onDestinationSelected: (value) {

        navDrawerIndex = value;
        
        final menuItem = appMenuItems[value];
        context.push(menuItem.link);
        scaffoldKey.currentState?.closeDrawer();
      },
      children: [

        Padding(
          padding: EdgeInsets.fromLTRB(28, hasNotch ? 0 : 20, 16, 10),
          child: const Text('Principal'),
        ),

        ...appMenuItems
        .sublist(0,3)
        .map((item) => NavigationDrawerDestination(
          icon: Icon(item.icon), 
          label: Text(item.title)
        ),),

        const Padding(
          padding: EdgeInsets.fromLTRB(28, 16, 28, 10),
          child: Divider(),
        ),
        
        const Padding(
          padding: EdgeInsets.fromLTRB(28, 10, 16, 10),
          child: Text('General'),
        ),

        ...appMenuItems
        .sublist(3)
        .map((item) => NavigationDrawerDestination(
          icon: Icon(item.icon), 
          label: Text(item.title)
        ),),


        TextButton.icon(
          onPressed: (){
            Provider.of<AuthProvider>(context, listen: false).logout();
            context.pushReplacementNamed(LoginScreen.name);
          }, 
          icon: const Icon(Icons.logout_outlined), 
          label: const Text('Cerrar Sesión')
        )
        
        TextButton.icon(
          onPressed: (){

            authService.logout();
            context.pushReplacementNamed(LoginScreen.name);

          }, 
          icon: const Icon(Icons.logout_rounded), 
          label: const Text('Cerrar Sesión')
        ),
      ]
    );
  }
}