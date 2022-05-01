import 'package:flutter/material.dart';
import 'package:booked_webapp_v1/widgets/call_to_action/call_to_action.dart';
import 'package:booked_webapp_v1/widgets/welcome_page_details/welcome_page_details.dart';

class WelcomeContentDesktop extends StatelessWidget {
  const WelcomeContentDesktop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: const <Widget>[
        Welcome_Details(),
        SizedBox(
          height: 50,
        ),
        Call_to_Action('Get Started'),
        Expanded(
          child: Center(),
        ),
      ],
    );
  }
}

/*
Expanded(
          child: Center(
            child: Call_to_Action('Get Started'),
          ),
        ),
*/