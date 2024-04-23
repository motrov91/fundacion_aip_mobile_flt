
import 'package:flutter/material.dart';

class MenuItem{
  final String title;
  final String link;
  final IconData icon;

  const MenuItem({
    required this.title, 
    required this.link, 
    required this.icon
  });
}

const appMenuItems = <MenuItem>[
  MenuItem(
    title: "Mis predios", 
    link: '/', 
    icon: Icons.account_box_outlined
  ),
  MenuItem(
    title: "Predios sin sincronizar", 
    link: '/synchronization_pending', 
    icon: Icons.upload_outlined
  ),
  MenuItem(
    title: "Caracterizar predio", 
    link: '/create_farm', 
    icon: Icons.badge_outlined
  ),
  MenuItem(
    title: "Info del proyecto", 
    link: '/buttons', 
    icon: Icons.info_outline
  ),
  MenuItem(
    title: "Registro agricola", 
    link: '/agriculturalRegistry', 
    icon: Icons.account_circle_outlined
  ),
  MenuItem(
    title: "Cerrar Sesión", 
    link: '/login', 
    icon: Icons.logout_outlined
  ),

];