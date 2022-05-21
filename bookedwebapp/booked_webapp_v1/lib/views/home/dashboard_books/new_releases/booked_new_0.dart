import 'package:booked_webapp_v1/views/welcome_page/welcome_page_view.dart';
import 'package:flutter/material.dart';
import 'package:booked_webapp_v1/auth_service.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class booked_new extends StatelessWidget {
  final int booknum;
  const booked_new({required this.booknum});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: const BoxDecoration(
            color: Colors.transparent,
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              /// ------------------------ 1st Column ---------------------------////
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Container(
                    height: 350,
                    width: 305,
                    child: Image.asset(
                        'assets/dashboard_books/booked_new_$booknum.jpg'),
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [],
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const SizedBox(
                    height: 3,
                  ),
                ],
              ),

              /// ------------------------ 2nd Column ---------------------------////
              const SizedBox(
                width: 40,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const Text(
                    'Reading Status',
                    style: TextStyle(
                      height: 1.2,
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                      color: Color.fromARGB(255, 68, 53, 40),
                    ),
                    textAlign: TextAlign.start,
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      SizedBox(
                        width: 150,
                        child: Text(
                          'Currently Reading',
                          style: TextStyle(
                            height: 1.2,
                            fontWeight: FontWeight.bold,
                            fontSize: 14,
                            color: Color.fromARGB(255, 68, 53, 40),
                          ),
                          textAlign: TextAlign.start,
                        ),
                      ),
                      Text(
                        '5',
                        style: TextStyle(
                          height: 1.2,
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                          color: Color.fromARGB(255, 124, 86, 52),
                        ),
                        textAlign: TextAlign.start,
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      SizedBox(
                        width: 150,
                        child: Text(
                          'Finished Reading',
                          style: TextStyle(
                            height: 1.2,
                            fontWeight: FontWeight.bold,
                            fontSize: 14,
                            color: Color.fromARGB(255, 68, 53, 40),
                          ),
                          textAlign: TextAlign.start,
                        ),
                      ),
                      Text(
                        '12',
                        style: TextStyle(
                          height: 1.2,
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                          color: Color.fromARGB(255, 124, 86, 52),
                        ),
                        textAlign: TextAlign.start,
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      SizedBox(
                        width: 150,
                        child: Text(
                          'To Read',
                          style: TextStyle(
                            height: 1.2,
                            fontWeight: FontWeight.bold,
                            fontSize: 14,
                            color: Color.fromARGB(255, 68, 53, 40),
                          ),
                          textAlign: TextAlign.start,
                        ),
                      ),
                      Text(
                        '999',
                        style: TextStyle(
                          height: 1.2,
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                          color: Color.fromARGB(255, 124, 86, 52),
                        ),
                        textAlign: TextAlign.start,
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      SizedBox(
                        width: 150,
                        child: Text(
                          'Score Average: ',
                          style: TextStyle(
                            height: 1.2,
                            fontWeight: FontWeight.bold,
                            fontSize: 14,
                            color: Color.fromARGB(255, 68, 53, 40),
                          ),
                          textAlign: TextAlign.start,
                        ),
                      ),
                      Text(
                        '7.34',
                        style: TextStyle(
                          height: 1.2,
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                          color: Color.fromARGB(255, 124, 86, 52),
                        ),
                        textAlign: TextAlign.start,
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: 150,
                    width: 400,
                    decoration: const BoxDecoration(
                      color: Colors.transparent,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                width: 30,
              ),

              /// ------------------------ 3rd Column ---------------------------////
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: const <Widget>[
                  Text(
                    'SYNOPSIS:',
                    style: TextStyle(
                      height: 1.2,
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                      color: Color.fromARGB(255, 68, 53, 40),
                    ),
                    textAlign: TextAlign.start,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  SizedBox(
                    height: 500,
                    child: Text(
                      'The award-winning, best-selling author of Station Eleven and \nThe Glass Hotel returns with a novel of art, time, love, and \nplague that takes the reader from Vancouver Island in 1912 to \na dark colony on the moon three hundred years later, unfurling \na story of humanity across centuries and space.',
                      style: TextStyle(
                        height: 1.2,
                        fontSize: 14,
                        color: Color.fromARGB(255, 68, 53, 40),
                      ),
                      textAlign: TextAlign.justify,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
