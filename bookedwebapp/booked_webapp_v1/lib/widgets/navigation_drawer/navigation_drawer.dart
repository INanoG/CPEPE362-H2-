import 'package:flutter/material.dart';
import 'package:booked_webapp_v1/routing/route_names.dart';
import 'package:booked_webapp_v1/widgets/navigation_drawer/drawer_items.dart';
import 'package:booked_webapp_v1/widgets/navigation_drawer/navigation_drawer_header.dart';

class NavigationDrawer extends StatelessWidget {
  const NavigationDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      decoration: const BoxDecoration(
          color: Colors.white,
          boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 16)]),
      child: Column(
        children: const <Widget>[
          NavigationDrawerHeader(),
          //Bonus: Combine the ui for this widget with the navbaritem and make it responsive
          DrawerItem('HOME', Icons.home, WelcomeRoute),
          DrawerItem('LOG IN', Icons.person, LoginRoute),
          DrawerItem('SIGN IN', Icons.person_add_alt_rounded, RegisterRoute),
          DrawerItem('About', Icons.help, AboutRoute),
        ],
      ),
    );
  }
}
