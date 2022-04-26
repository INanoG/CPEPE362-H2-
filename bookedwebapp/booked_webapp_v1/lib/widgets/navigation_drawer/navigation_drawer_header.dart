import 'package:flutter/material.dart';
import 'package:booked_webapp_v1/constants/app_colors.dart';

class NavigationDrawerHeader extends StatelessWidget {
  const NavigationDrawerHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      color: primaryColor,
      alignment: Alignment.center,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: const <Widget>[
          Text(
            'TALK WITH BOOKWORMS',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w800,
              color: Colors.white,
            ),
          ),
          Text(
            'TAP HERE',
            style: TextStyle(color: Colors.white),
          )
        ],
      ),
    );
  }
}
