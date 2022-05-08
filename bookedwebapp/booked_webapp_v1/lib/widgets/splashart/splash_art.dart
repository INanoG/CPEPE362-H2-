import 'package:flutter/material.dart';

//This is the code for the splashart
class Splash_Page extends StatelessWidget {
  int duration = 0;
  Widget goToPage;

  Splash_Page({Key? key, required this.goToPage, required this.duration})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: duration), () {
      Navigator.push(
          context, MaterialPageRoute(builder: ((context) => goToPage)));
    });

    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: const AssetImage('assets/bg_splash.jpg'),
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(
                Colors.white.withOpacity(0.2), BlendMode.dstATop),
          ),
        ),
        alignment: Alignment.center,
        child: Image.asset(
          'assets/booked.png',
          height: 400,
          width: 400,
        ),
      ),
    );
  }
}
