import 'package:flutter/material.dart';

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
                  height: 10,
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
              height: 20,
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
                                height: 110,
                                width: 110,
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
                              const SizedBox(width: 120),
                              SizedBox(
                                height: 110,
                                width: 110,
                                child: Image.asset(
                                    'assets/about_icons/about_icon3.png'),
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
                                    'Readers Forum',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      height: 1.2,
                                      fontSize: 25,
                                      color: Color.fromARGB(255, 68, 53, 40),
                                    ),
                                  ),
                                  Text(
                                    'dicuss and share your thoughts\nand opinions with fellow readers',
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
                const SizedBox(height: 10),
                // 2nd Row <------------------------
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // 2nd row child < ----------------------------------
                    Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          // 2nd colmn child <---------------
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              SizedBox(
                                height: 110,
                                width: 110,
                                child: Image.asset(
                                    'assets/about_icons/about_icon5.png'),
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
                                    'Booked Reviews',
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
                              const SizedBox(width: 120),
                              SizedBox(
                                height: 110,
                                width: 110,
                                child: Image.asset(
                                    'assets/about_icons/about_icon2.png'),
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
                                    'Favorite Reads',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      height: 1.2,
                                      fontSize: 25,
                                      color: Color.fromARGB(255, 68, 53, 40),
                                    ),
                                  ),
                                  Text(
                                    'heart your favorite books',
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
                const SizedBox(height: 10),
                // 3rd Row <---------------------------
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
                                height: 110,
                                width: 110,
                                child: Image.asset(
                                    'assets/about_icons/about_icon4.png'),
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
                                    'Reading Lists & Progress Tracker',
                                    style: TextStyle(
                                      fontWeight: FontWeight.w800,
                                      height: 1.2,
                                      fontSize: 25,
                                      color: Color.fromARGB(255, 68, 53, 40),
                                    ),
                                  ),
                                  Text(
                                    'add books to your list and track your\nreading progress',
                                    style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      height: 1.2,
                                      fontSize: 20,
                                      color: Color.fromARGB(255, 68, 53, 40),
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(width: 110),
                              SizedBox(
                                height: 90,
                                width: 90,
                                child: Image.asset(
                                    'assets/about_icons/about_icon1.png'),
                              ),
                              const SizedBox(width: 10),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: const [
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Text(
                                    'New Friends',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      height: 1.2,
                                      fontSize: 25,
                                      color: Color.fromARGB(255, 68, 53, 40),
                                    ),
                                  ),
                                  Text(
                                    'follow readers to see more of their content',
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
