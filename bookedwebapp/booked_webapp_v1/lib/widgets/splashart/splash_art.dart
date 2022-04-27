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
        color: Colors.white,
        alignment: Alignment.center,
        child: const Icon(Icons.book,
            color: Color.fromARGB(255, 18, 94, 62), size: 100),
      ),
    );
  }
}
