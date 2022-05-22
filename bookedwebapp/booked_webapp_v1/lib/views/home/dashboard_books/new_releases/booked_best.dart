import 'package:booked_webapp_v1/views/welcome_page/welcome_page_view.dart';
import 'package:flutter/material.dart';
import 'package:booked_webapp_v1/auth_service.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class booked_best extends StatefulWidget {
  final int booknum;
  booked_best({required this.booknum});

  @override
  State<booked_best> createState() => _booked_bestState();
}

class _booked_bestState extends State<booked_best> {
  bool selected = false;
  Icon first_icon = const Icon(Icons.favorite_border_outlined);
  Icon second_icon = Icon(Icons.favorite);

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
                    child: Image.asset('assets/dashboard_books/booked_best_' +
                        widget.booknum.toString() +
                        '.jpg'),
                    alignment: Alignment.centerLeft,
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          fixedSize: const Size(210, 35),
                          primary: Color.fromARGB(255, 247, 227, 208),
                          elevation: 2,
                          onPrimary: const Color.fromARGB(255, 59, 41, 25),
                          padding: const EdgeInsets.symmetric(
                              horizontal: 2, vertical: 2),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                        ),
                        onPressed: () {},
                        child: const Center(
                          child: Text(
                            'ADD TO LIST',
                            style: TextStyle(
                                color: Color.fromARGB(255, 59, 41, 25),
                                fontSize: 18,
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Container(
                        width: 40,
                        height: 35,
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 236, 222, 209),
                          borderRadius: BorderRadius.circular(5),
                          boxShadow: const [
                            BoxShadow(
                              color: Color.fromARGB(255, 174, 129, 100),
                              blurRadius: 1,
                              offset: Offset(0, 3),
                            ),
                          ],
                        ),
                        child: Center(
                          child: IconButton(
                              icon: selected ? first_icon : second_icon,
                              onPressed: () {
                                try {
                                  // your code that you want this IconButton do
                                  setState(() {
                                    selected = !selected;
                                  });
                                } catch (e) {
                                  print(e);
                                }
                              }),
                        ),
                      ),
                    ],
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
                  children: const []),
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
    ;
  }
}
