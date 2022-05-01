import 'package:flutter/material.dart';
import 'package:booked_webapp_v1/constants/app_colors.dart';

class CallToActionMobile extends StatelessWidget {
  final String title;
  const CallToActionMobile(this.title);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      alignment: Alignment.center,
      child: Text(
        title,
        style: const TextStyle(
            fontSize: 18, fontWeight: FontWeight.w800, color: Colors.white),
      ),
      decoration: BoxDecoration(
        color: primaryColor,
        borderRadius: BorderRadius.circular(5),
        boxShadow: const [
          BoxShadow(
            color: Color.fromARGB(255, 55, 83, 56),
            blurRadius: 1,
            offset: Offset(0, 3),
          ),
        ],
      ),
    );
  }
}
