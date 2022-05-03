import 'package:booked_webapp_v1/views/layout_template/layout_template_home.dart';
import 'package:booked_webapp_v1/views/layout_template/layout_template_main.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class AuthService {
  handleAuth() {
    return StreamBuilder(
      stream: FirebaseAuth.instance.authStateChanges(),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return const LayoutTemplateHome();
        } else {
          const LayoutTemplateMain();
        }
        throw '';
      },
    );
  }
}
