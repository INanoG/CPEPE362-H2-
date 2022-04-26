import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:booked_webapp_v1/widgets/navigation_bar/navbar_mobile.dart';
import 'package:booked_webapp_v1/widgets/navigation_bar/navigation_bar_tablet_desktop.dart';

class Navigation_Bar extends StatelessWidget {
  const Navigation_Bar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: NavigationBarMobile(),
      tablet: NavigationBarTabletDesktop(),
    );
  }
}
