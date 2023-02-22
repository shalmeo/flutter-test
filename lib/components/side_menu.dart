import 'package:flutter/material.dart';

import 'info_card.dart';
import 'side_menu_separator.dart';
import 'side_menu_tile.dart';

class SideMenu extends StatefulWidget {
  const SideMenu({super.key});

  @override
  State<SideMenu> createState() => SideMenuState();
}

class SideMenuState extends State<SideMenu> {
  SideMenuItem selectedMenu = sideMenuItems.first;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: 288,
        height: double.infinity,
        color: Color(0xFF17203A),
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              InfoCard(
                role: "Студент",
                group: "САкф-201",
              ),
              SideMenuSeparator(),
              ...sideMenuItems.map(
                (menu) => SideMenuTile(
                  icon: menu.icon,
                  title: menu.title,
                  press: () {
                    setState(() {
                      selectedMenu = menu;
                    });
                  },
                  isActive: selectedMenu == menu,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class SideMenuItem {
  final IconData icon;
  final String title;

  const SideMenuItem({required this.icon, required this.title});
}

List<SideMenuItem> sideMenuItems = [
  SideMenuItem(icon: Icons.schedule, title: "Расписание"),
  SideMenuItem(icon: Icons.list, title: "Список преподавателей"),
  SideMenuItem(icon: Icons.settings, title: "Настройки"),
];
