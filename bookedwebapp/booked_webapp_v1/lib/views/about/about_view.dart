import 'package:booked_webapp_v1/auth_service.dart';
import 'package:flutter/material.dart';

class AboutView extends StatelessWidget {
  const AboutView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          const Text('You Are Logged In'),
          const SizedBox(
            height: 10,
          ),
          ElevatedButton(
            onPressed: AuthService().signOut(),
            child: const Center(
              child: Text('Sign Out'),
            ),
          ),
        ],
      ),
    );
  }
}
