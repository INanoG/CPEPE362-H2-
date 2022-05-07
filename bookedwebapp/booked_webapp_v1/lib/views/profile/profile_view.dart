import 'package:booked_webapp_v1/views/profile/profile_view_desktop.dart';
import 'package:booked_webapp_v1/views/profile/profile_view_mobile.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: const ProfileViewMobile(),
      desktop: const ProfileViewDesktop(),
    );
  }
}
