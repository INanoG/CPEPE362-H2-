import 'package:booked_webapp_v1/widgets/navigation_bar/navigation_bar_main/navbar_logo.dart';
import 'package:flutter/material.dart';

class NavigationBarMobile extends StatelessWidget {
  const NavigationBarMobile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const <Widget>[
          NavBarLogo(),
        ],
      ),
    );
  }
}
