import 'package:booked_webapp_v1/auth_service.dart';
import 'package:booked_webapp_v1/views/welcome_page/welcome_page_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AboutViewDesktop extends StatelessWidget {
  const AboutViewDesktop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
          color: Colors.transparent,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            // 1st column < --------------------------- //
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  'About Us',
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    height: 1.2,
                    fontSize: 27,
                    color: Color.fromARGB(255, 68, 53, 40),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  margin: const EdgeInsets.only(left: 40),
                  child: const Text(
                    'We are a startup web app with a goal to help and guide booklovers to find their next reads and start new adventures. ',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      height: 1.2,
                      fontSize: 20,
                      color: Color.fromARGB(255, 68, 53, 40),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 40,
            ),
            // 2nd Column <---------------------------- //
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  'Services that Booked Offers:',
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    height: 1.2,
                    fontSize: 27,
                    color: Color.fromARGB(255, 68, 53, 40),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                // 1st Row < -----------------------------------
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // 1st row child < ----------------------------------
                    Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          // 1st colmn child <---------------
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              SizedBox(
                                height: 100,
                                width: 100,
                                child: Image.asset(
                                    'assets/about_icons/about_icon6.png'),
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: const [
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Text(
                                    'Booked Recommendations',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      height: 1.2,
                                      fontSize: 25,
                                      color: Color.fromARGB(255, 68, 53, 40),
                                    ),
                                  ),
                                  Text(
                                    'that will help you decide what to read next!',
                                    style: TextStyle(
                                      fontWeight: FontWeight.w100,
                                      height: 1.2,
                                      fontSize: 20,
                                      color: Color.fromARGB(255, 68, 53, 40),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
