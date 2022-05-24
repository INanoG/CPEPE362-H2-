import 'package:booked_webapp_v1/views/welcome_page/welcome_page_view.dart';
import 'package:flutter/material.dart';
import 'package:booked_webapp_v1/auth_service.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class ProfileViewDesktop extends StatelessWidget {
  final Stream<QuerySnapshot> users =
      FirebaseFirestore.instance.collection('users').snapshots();
  ProfileViewDesktop({Key? key}) : super(key: key);

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
            child: StreamBuilder<QuerySnapshot>(
              stream: users,
              builder: (
                BuildContext context,
                AsyncSnapshot<QuerySnapshot> snapshot,
              ) {
                if (snapshot.hasError) {
                  return const Text('Something went wrong.');
                }
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return const Text('Loading');
                }

                final data = snapshot.requireData;

                return Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    /// ------------------------ 1st Column ---------------------------////
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          height: 190,
                          width: 145,
                          child: Image.asset('assets/sample_prof.png'),
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color: Colors.transparent,
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Container(
                          child: Text(
                            '${(data.docs[0]['userName'])}',
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              height: 1.2,
                              fontSize: 20,
                              color: Color.fromARGB(255, 68, 53, 40),
                            ),
                            textAlign: TextAlign.center,
                          ),
                          height: 25,
                          width: 150,
                          alignment: Alignment.centerLeft,
                          decoration: const BoxDecoration(
                            color: Colors.transparent,
                          ),
                        ),
                        Container(
                          child: const Text(
                            '@caped_baldy',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              height: 1.2,
                              fontSize: 14,
                              color: Color.fromARGB(164, 68, 53, 40),
                            ),
                            textAlign: TextAlign.center,
                          ),
                          height: 30,
                          width: 150,
                          alignment: Alignment.centerLeft,
                          decoration: const BoxDecoration(
                            color: Colors.transparent,
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              'Followers: ',
                              style: TextStyle(
                                height: 1.2,
                                fontWeight: FontWeight.bold,
                                fontSize: 14,
                                color: Color.fromARGB(255, 68, 53, 40),
                              ),
                              textAlign: TextAlign.start,
                            ),
                            Text(
                              '${(data.docs[0]['followers'])}',
                              style: const TextStyle(
                                height: 1.2,
                                fontWeight: FontWeight.bold,
                                fontSize: 14,
                                color: Color.fromARGB(255, 124, 86, 52),
                              ),
                              textAlign: TextAlign.start,
                            ),
                          ],
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              'Following: ',
                              style: TextStyle(
                                height: 1.2,
                                fontWeight: FontWeight.bold,
                                fontSize: 14,
                                color: Color.fromARGB(255, 68, 53, 40),
                              ),
                              textAlign: TextAlign.start,
                            ),
                            Text(
                              '${(data.docs[0]['following'])}',
                              style: const TextStyle(
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
                        const Text(
                          'About Me',
                          style: TextStyle(
                            height: 1.2,
                            fontWeight: FontWeight.bold,
                            fontSize: 14,
                            color: Color.fromARGB(255, 68, 53, 40),
                          ),
                          textAlign: TextAlign.start,
                        ),
                        const SizedBox(
                          height: 3,
                        ),
                        Container(
                          height: 132,
                          width: 210,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: const Text(
                            'I am just a guy who\n is a Hero for Fun',
                            style: TextStyle(
                              height: 1.5,
                              fontWeight: FontWeight.bold,
                              fontSize: 12,
                              color: Color.fromARGB(255, 68, 53, 40),
                            ),
                            textAlign: TextAlign.justify,
                          ),
                        ),
                        const SizedBox(
                          height: 30,
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
                          children: [
                            const SizedBox(
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
                              '${(data.docs[0]['current_read'])}',
                              style: const TextStyle(
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
                          children: [
                            const SizedBox(
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
                              '${(data.docs[0]['finished_read'])}',
                              style: const TextStyle(
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
                          children: [
                            const SizedBox(
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
                              '${(data.docs[0]['to_read'])}',
                              style: const TextStyle(
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
                          width: 500,
                          decoration: const BoxDecoration(
                            color: Colors.transparent,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      width: 40,
                    ),

                    /// ------------------------ 3rd Column ---------------------------////
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        const Text(
                          'Reading',
                          style: TextStyle(
                            height: 1.2,
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            color: Color.fromARGB(255, 68, 53, 40),
                          ),
                          textAlign: TextAlign.start,
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            Container(
                              height: 150,
                              width: 100,
                              child: Image.asset(
                                  'assets/dashboard_books/booked_new_3.jpg'),
                            ),
                            const SizedBox(
                              width: 15,
                            ),
                            Container(
                              height: 150,
                              width: 100,
                              child: Image.asset(
                                  'assets/dashboard_books/booked_new_4.jpg'),
                            ),
                            const SizedBox(
                              width: 15,
                            ),
                            Container(
                              height: 150,
                              width: 100,
                              child: Image.asset(
                                  'assets/dashboard_books/booked_new_0.jpg'),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        const Text(
                          'Completed',
                          style: TextStyle(
                            height: 1.2,
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            color: Color.fromARGB(255, 68, 53, 40),
                          ),
                          textAlign: TextAlign.start,
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            Container(
                              height: 150,
                              width: 100,
                              child: Image.asset(
                                  'assets/dashboard_books/booked_best_6.jpg'),
                            ),
                            const SizedBox(
                              width: 15,
                            ),
                            Container(
                              height: 150,
                              width: 100,
                              child: Image.asset(
                                  'assets/dashboard_books/booked_best_7.jpg'),
                            ),
                            const SizedBox(
                              width: 15,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                );
              },
            )),
      ),
    );
  }
}
