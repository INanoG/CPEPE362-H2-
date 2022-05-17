import 'package:flutter/material.dart';
import 'package:booked_webapp_v1/routing/route_names.dart';
import 'package:booked_webapp_v1/widgets/navigation_bar/navigation_bar_main/navbar_item.dart';
import 'package:booked_webapp_v1/widgets/navigation_bar/navigation_bar_main/navbar_logo.dart';
import 'package:booked_webapp_v1/widgets/navigation_bar/navigation_bar_main/navigation_bar.dart';

class NavigationBarTabletDesktopHome extends StatelessWidget {
  const NavigationBarTabletDesktopHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          const NavBarLogo(),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: const <Widget>[
              NavBarItem('Dashboard', HomeRoute),
              SizedBox(
                width: 20,
              ),
              NavBarItem('Profile', ProfileRoute),
              SizedBox(
                width: 20,
              ),
              NavBarItem('Forum', ForumRoute),
              SizedBox(
                width: 20,
              ),
            ],
          )
        ],
      ),
    );
  }
}
