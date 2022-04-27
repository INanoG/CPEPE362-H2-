import 'package:flutter/material.dart';

class Splash_Page extends StatelessWidget {
  int duration = 0;
  Widget goToPage;

  Splash_Page({Key? key, required this.goToPage, required this.duration})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        alignment: Alignment.center,
        child: const Icon(Icons.favorite, color: Colors.blue, size: 100),
      ),
    );
  }
}
