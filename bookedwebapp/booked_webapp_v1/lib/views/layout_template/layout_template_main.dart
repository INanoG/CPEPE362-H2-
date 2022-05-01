import 'package:booked_webapp_v1/widgets/navigation_bar/navigation_bar_main/navigation_bar.dart';
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

class LayoutTemplateMain extends StatelessWidget {
  const LayoutTemplateMain({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizingInformation) => Scaffold(
        drawer: sizingInformation.deviceScreenType == DeviceScreenType.mobile
            ? NavigationDrawer()
            : null,
        backgroundColor: Colors.white,
        body: Centered_View(
          child: Column(
            children: <Widget>[
              const Navigation_Bar(),
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
    );
  }
}
