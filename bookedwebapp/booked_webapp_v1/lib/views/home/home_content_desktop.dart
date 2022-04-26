import 'package:flutter/material.dart';
import 'package:booked_webapp_v1/widgets/call_to_action/call_to_action.dart';
import 'package:booked_webapp_v1/widgets/course_details/course_details.dart';

class HomeContentDesktop extends StatelessWidget {
  const HomeContentDesktop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Course_Details(),
        Expanded(
          child: Center(
            child: Call_to_Action('Join the Community'),
          ),
        ),
      ],
    );
  }
}
