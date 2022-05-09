import 'package:booked_webapp_v1/views/about/about_view_desktop.dart';
import 'package:booked_webapp_v1/views/about/about_view_mobile.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class AboutView extends StatelessWidget {
  const AboutView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: const AboutViewMobile(),
      desktop: const AboutViewDesktop(),
    );
  }
}
