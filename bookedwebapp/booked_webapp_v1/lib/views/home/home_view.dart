import 'package:booked_webapp_v1/views/home/home_view_desktop.dart';
import 'package:booked_webapp_v1/views/home/home_view_mobile.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: const HomeContentMobile(),
      desktop: const HomeContentDesktop(),
    );
  }
}
