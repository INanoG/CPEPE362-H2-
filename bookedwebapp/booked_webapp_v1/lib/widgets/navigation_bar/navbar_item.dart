import 'package:flutter/material.dart';
import 'package:booked_webapp_v1/locator.dart';
import 'package:booked_webapp_v1/services/navigation_service.dart';

class NavBarItem extends StatelessWidget {
  final String title;
  final String navigationPath;
  const NavBarItem(this.title, this.navigationPath);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // dont ever use a service directly in the ui to change any kind of state
        // services should only be used from a viewmodel
        locator<NavigationService>().navigateTo(navigationPath);
      },
      child: Container(
        width: 80,
        height: 30,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(5),
          boxShadow: const [
            BoxShadow(
              color: Color.fromARGB(255, 154, 235, 157),
              blurRadius: 1,
              offset: Offset(0, 3),
            ),
          ],
        ),
        child: Text(
          title,
          textAlign: TextAlign.center,
          style: const TextStyle(fontSize: 15),
        ),
      ),
    );
  }
}
