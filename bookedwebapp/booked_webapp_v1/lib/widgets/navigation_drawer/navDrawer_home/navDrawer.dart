import 'package:booked_webapp_v1/widgets/navigation_drawer/navDrawer_home/navDrawer_header_home.dart';
import 'package:flutter/material.dart';
import 'package:booked_webapp_v1/routing/route_names.dart';
import 'package:booked_webapp_v1/widgets/navigation_drawer/drawer_items.dart';

class NavigationDrawerHome extends StatelessWidget {
  const NavigationDrawerHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      decoration: const BoxDecoration(
        color: Color.fromARGB(255, 250, 235, 221),
        boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 16)],
      ),
      child: Column(
        children: const <Widget>[
          NavigationDrawerHeaderHome(),
          //Bonus: Combine the ui for this widget with the navbaritem and make it responsive
          DrawerItem('Dashboard', Icons.dashboard, HomeRoute),
          DrawerItem('Profile', Icons.person, ProfileRoute),
          DrawerItem('Forum', Icons.forum, ForumRoute),
        ],
      ),
    );
  }
}
