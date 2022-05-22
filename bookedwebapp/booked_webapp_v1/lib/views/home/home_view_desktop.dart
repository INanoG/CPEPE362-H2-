import 'package:booked_webapp_v1/views/home/dashboard_books/new_releases/booked_best.dart';
import 'package:booked_webapp_v1/views/home/dashboard_books/new_releases/booked_new.dart';
import 'package:flutter/material.dart';
import 'package:booked_webapp_v1/widgets/call_to_action/call_to_action.dart';

class HomeContentDesktop extends StatelessWidget {
  const HomeContentDesktop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            const SizedBox(
              height: 40,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text("NEW RELEASES"),
                Text("JANUARY - MARCH 2022"),
              ],
            ),
            Container(
              color: Colors.transparent,
              height: 230,
              child: ListView.builder(
                itemCount: 9,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) => GestureDetector(
                  onTap: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => booked_new(
                          booknum: index,
                        ),
                      ),
                    );
                  },
                  child: Container(
                    height: 140,
                    width: 110,
                    margin: const EdgeInsets.only(
                        left: 40, right: 40, top: 20, bottom: 20),
                    child: Image.asset(
                        'assets/dashboard_books/booked_new_$index.jpg'),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text("BEST SELLERS"),
                Text("MARCH 2022"),
              ],
            ),
            Container(
              height: 230,
              child: ListView.builder(
                itemCount: 9,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) => GestureDetector(
                  onTap: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => booked_best(
                          booknum: index,
                        ),
                      ),
                    );
                  },
                  child: Container(
                    height: 140,
                    width: 110,
                    margin: const EdgeInsets.only(
                        left: 40, right: 40, top: 20, bottom: 20),
                    child: Image.asset(
                        'assets/dashboard_books/booked_best_$index.jpg'),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}


/*
                        Container(
                  height: 140,
                  width: 110,
                  margin: const EdgeInsets.only(
                      left: 40, right: 40, top: 20, bottom: 20),
                  child: Image.asset(
                      'assets/dashboard_books/booked_best_$index.jpg'),
                ),*/