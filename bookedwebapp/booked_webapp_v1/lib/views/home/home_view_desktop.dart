import 'package:flutter/material.dart';
import 'package:booked_webapp_v1/widgets/call_to_action/call_to_action.dart';
import 'package:booked_webapp_v1/widgets/welcome_page_details/welcome_page_details.dart';

class HomeContentDesktop extends StatelessWidget {
  const HomeContentDesktop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: const <Widget>[
        //Welcome_Details(),
        SizedBox(
          height: 50,
        ),
        Call_to_Action('Forum'),
        Expanded(
          child: Center(),
        ),
      ],
    );
  }
}
