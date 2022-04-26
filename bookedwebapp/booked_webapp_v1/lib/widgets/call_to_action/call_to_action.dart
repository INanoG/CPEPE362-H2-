import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:booked_webapp_v1/widgets/call_to_action/call_to_action_desktop.dart';
import 'package:booked_webapp_v1/widgets/call_to_action/call_to_action_mobile.dart';

class Call_to_Action extends StatelessWidget {
  final String title;
  const Call_to_Action(this.title);

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: CallToActionMobile(title),
      tablet: CallToActionTabletDesktop(title),
    );
  }
}
