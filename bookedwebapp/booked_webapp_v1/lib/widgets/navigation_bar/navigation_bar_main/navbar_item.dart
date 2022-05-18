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
        width: 90,
        height: 30,
        decoration: BoxDecoration(
          color: const Color.fromARGB(255, 236, 222, 209),
          borderRadius: BorderRadius.circular(5),
          boxShadow: const [
            BoxShadow(
              color: Color.fromARGB(255, 174, 129, 100),
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
/*


ElevatedButton(
      style: ElevatedButton.styleFrom(
        fixedSize: const Size(90, 30),
        primary: const Color.fromARGB(255, 236, 222, 209),
        elevation: 2,
        onPrimary: const Color.fromARGB(255, 107, 82, 58),
        shadowColor: const Color.fromARGB(255, 36, 26, 19),
        padding: const EdgeInsets.symmetric(horizontal: 2, vertical: 2),
      ),
      onPressed: () {
        locator<NavigationService>().navigateTo(navigationPath);
      },
      child: Center(
        child: Text(
          title,
          style: const TextStyle(fontSize: 15),
        ),
      ),
    );
*/
