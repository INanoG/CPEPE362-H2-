import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:booked_webapp_v1/views/welcome_page/welcome_page_desktop.dart';
import 'package:booked_webapp_v1/views/welcome_page/welcome_page_mobile.dart';

class WelcomeView extends StatelessWidget {
  const WelcomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: const WelcomeContentMobile(),
      desktop: const WelcomeContentDesktop(),
    );
  }
}
