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
                Text("JANUARY 2022"),
              ],
            ),
            Container(
              color: Colors.transparent,
              height: 230,
              child: ListView.builder(
                itemCount: 9,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) => Container(
                  height: 140,
                  width: 110,
                  margin: const EdgeInsets.only(
                      left: 40, right: 40, top: 20, bottom: 20),
                  child: Image.asset(
                      'assets/dashboard_books/booked_new_$index.jpg'),
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
              color: Colors.transparent,
              height: 230,
              child: ListView.builder(
                itemCount: 9,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) => Container(
                  height: 140,
                  width: 110,
                  margin: const EdgeInsets.only(
                      left: 40, right: 40, top: 20, bottom: 20),
                  child: Image.asset(
                      'assets/dashboard_books/booked_best_$index.jpg'),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
