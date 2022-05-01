import 'package:flutter/material.dart';
import 'package:booked_webapp_v1/widgets/call_to_action/call_to_action.dart';
import 'package:booked_webapp_v1/widgets/course_details/course_details.dart';

class HomeContentMobile extends StatelessWidget {
  const HomeContentMobile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.center,
      children: const <Widget>[
        Course_Details(),
        SizedBox(
          height: 100,
        ),
        Call_to_Action('Get Started'),
      ],
    );
  }
}
