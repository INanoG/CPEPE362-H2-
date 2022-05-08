import 'package:booked_webapp_v1/auth_service.dart';
import 'package:booked_webapp_v1/views/welcome_page/welcome_page_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LogoutView extends StatelessWidget {
  const LogoutView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          const Text('You Are Logged In'),
          const SizedBox(
            height: 10,
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(fixedSize: const Size(100, 100)),
            onPressed: () {
              context.read<AuthService>().signOut();
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const WelcomeView(),
                ),
              );
            },
            child: const Center(
              child: Text('Sign Out'),
            ),
          ),
        ],
      ),
    );
  }
}