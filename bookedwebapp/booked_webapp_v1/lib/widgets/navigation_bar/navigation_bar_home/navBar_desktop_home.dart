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
            children: <Widget>[
              const NavBarItem('Dashboard', HomeRoute),
              const SizedBox(
                width: 20,
              ),
              const NavBarItem('Profile', ProfileRoute),
              const SizedBox(
                width: 20,
              ),
              const NavBarItem('Forum', ForumRoute),
              const SizedBox(
                width: 10,
              ),
              SizedBox(
                height: 45,
                width: 45,
                child: Image.asset('assets/user_home.png'),
              ),
            ],
          )
        ],
      ),
    );
  }
}
