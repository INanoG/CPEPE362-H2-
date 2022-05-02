import 'package:booked_webapp_v1/widgets/navigation_bar/navigation_bar_home/navigation_bar_home.dart';
import 'package:booked_webapp_v1/widgets/navigation_bar/navigation_bar_main/navigation_bar.dart';
import 'package:booked_webapp_v1/widgets/navigation_drawer/navDrawer_home/navDrawer.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:booked_webapp_v1/locator.dart';
import 'package:booked_webapp_v1/routing/route_names.dart';
import 'package:booked_webapp_v1/routing/router.dart';
import 'package:booked_webapp_v1/services/navigation_service.dart';
import 'package:booked_webapp_v1/views/welcome_page/welcome_page_desktop.dart';
import 'package:booked_webapp_v1/views/welcome_page/welcome_page_mobile.dart';
import 'package:booked_webapp_v1/widgets/centered_view/centered_view.dart';
import 'package:booked_webapp_v1/widgets/navigation_drawer/navigation_drawer.dart';

class LayoutTemplateHome extends StatelessWidget {
  const LayoutTemplateHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizingInformation) => Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
                colors: [
              Color.fromARGB(255, 236, 222, 209),
              Color.fromARGB(255, 221, 190, 159)
            ])),
        child: Scaffold(
          drawer: sizingInformation.deviceScreenType == DeviceScreenType.mobile
              ? NavigationDrawerHome()
              : null,
          backgroundColor: Colors.transparent,
          body: Centered_View(
            child: Column(
              children: <Widget>[
                const Navigation_Bar_Home(),
                Expanded(
                  child: Navigator(
                    key: locator<NavigationService>().navigatorKey,
                    onGenerateRoute: generateRoute,
                    initialRoute: WelcomeRoute,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
