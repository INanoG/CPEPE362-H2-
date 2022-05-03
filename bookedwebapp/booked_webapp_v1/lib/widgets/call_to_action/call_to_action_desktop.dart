import 'package:booked_webapp_v1/locator.dart';
import 'package:booked_webapp_v1/routing/route_names.dart';
import 'package:booked_webapp_v1/services/navigation_service.dart';
import 'package:flutter/material.dart';
import 'package:booked_webapp_v1/constants/app_colors.dart';

class CallToActionTabletDesktop extends StatelessWidget {
  final String title;
  const CallToActionTabletDesktop(this.title);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        // dont ever use a service directly in the ui to change any kind of state
        // services should only be used from a viewmodel
        locator<NavigationService>().navigateTo(LoginRoute);
      },
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 60, vertical: 15),
        child: Text(
          title,
          style: const TextStyle(
              fontSize: 18, fontWeight: FontWeight.w800, color: Colors.white),
        ),
        decoration: BoxDecoration(
          color: const Color.fromARGB(255, 224, 171, 129),
          borderRadius: BorderRadius.circular(5),
          boxShadow: const [
            BoxShadow(
              color: Color.fromARGB(255, 174, 129, 100),
              blurRadius: 1,
              offset: Offset(0, 3),
            ),
          ],
        ),
      ),
    );
  }
}
