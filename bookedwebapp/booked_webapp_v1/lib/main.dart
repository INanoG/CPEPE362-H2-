import 'package:flutter/material.dart';
import 'package:booked_webapp_v1/locator.dart';
import 'package:booked_webapp_v1/views/layout_template/layout_template.dart';

void main() {
  setupLocator();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Booked',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          textTheme: Theme.of(context).textTheme.apply(fontFamily: 'Open Sans'),
        ),
        home: const LayoutTemplate());
  }
}
