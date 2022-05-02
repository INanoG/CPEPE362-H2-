import 'package:flutter/material.dart';
import 'package:booked_webapp_v1/widgets/navigation_bar/navigation_bar_main/navbar_logo.dart';

class NavigationBarMobileHome extends StatelessWidget {
  const NavigationBarMobileHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          IconButton(
            icon: const Icon(Icons.menu),
            onPressed: () {},
          ),
          const NavBarLogo(),
        ],
      ),
    );
  }
}