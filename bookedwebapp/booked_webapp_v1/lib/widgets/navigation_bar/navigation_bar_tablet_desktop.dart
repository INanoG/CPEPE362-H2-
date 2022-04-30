import 'package:flutter/material.dart';
import 'package:booked_webapp_v1/routing/route_names.dart';
import 'package:booked_webapp_v1/widgets/navigation_bar/navbar_item.dart';
import 'package:booked_webapp_v1/widgets/navigation_bar/navbar_logo.dart';
import 'package:booked_webapp_v1/widgets/navigation_bar/navigation_bar.dart';

class NavigationBarTabletDesktop extends StatelessWidget {
  const NavigationBarTabletDesktop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          NavBarLogo(),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: const <Widget>[
              NavBarItem('Home', HomeRoute),
              SizedBox(
                width: 40,
              ),
              NavBarItem('Log In', LoginRoute),
              SizedBox(
                width: 40,
              ),
              NavBarItem('Sign Up', RegisterRoute),
              SizedBox(
                width: 40,
              ),
              NavBarItem('About', AboutRoute),
            ],
          )
        ],
      ),
    );
  }
}
