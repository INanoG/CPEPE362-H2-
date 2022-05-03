import 'package:booked_webapp_v1/auth_service.dart';
import 'package:booked_webapp_v1/views/layout_template/layout_template_home.dart';
import 'package:booked_webapp_v1/widgets/splashart/splash_art.dart';
import 'package:firebase/firebase.dart';
import 'package:flutter/material.dart';
import 'package:booked_webapp_v1/locator.dart';
import 'package:booked_webapp_v1/views/layout_template/layout_template_main.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  setupLocator();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Booked',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          textTheme: Theme.of(context).textTheme.apply(fontFamily: 'Open Sans'),
        ),
        //splashart must run first then after 3 seconds it will go to the layouttemplate for screensize checking
        home: Splash_Page(goToPage: AuthService().handleAuth(), duration: 5));
  }
}
