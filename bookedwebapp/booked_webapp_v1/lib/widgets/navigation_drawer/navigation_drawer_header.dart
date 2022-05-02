import 'package:booked_webapp_v1/locator.dart';
import 'package:booked_webapp_v1/routing/route_names.dart';
import 'package:booked_webapp_v1/services/navigation_service.dart';
import 'package:flutter/material.dart';

class NavigationDrawerHeader extends StatelessWidget {
  const NavigationDrawerHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // dont ever use a service directly in the ui to change any kind of state
        // services should only be used from a viewmodel
        locator<NavigationService>().navigateTo(RegisterRoute);
      },
      child: Container(
        height: 150,
        color: const Color.fromARGB(255, 224, 171, 129),
        alignment: Alignment.center,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: const <Widget>[
            Text(
              'TALK WITH BOOKWORMS',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w800,
                color: Color.fromARGB(255, 68, 53, 40),
              ),
            ),
            Text(
              'TAP TO JOIN',
              style: TextStyle(color: Color.fromARGB(255, 68, 53, 40)),
            )
          ],
        ),
      ),
    );
  }
}
