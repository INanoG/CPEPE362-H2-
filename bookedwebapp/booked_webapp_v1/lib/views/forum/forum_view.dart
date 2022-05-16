import 'package:flutter/material.dart';

class ForumView extends StatelessWidget {
  const ForumView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            //// 1st Col for the Categories //////////////
            Container(
              height: 90,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  //////////first category row
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      ///classic
                      Container(
                        height: 30,
                        width: 100,
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 236, 222, 209),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: const Text(
                          'Classic',
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 15),
                        ),
                      ),
                      const SizedBox(width: 10),
                      ////poetry
                      Container(
                        height: 30,
                        width: 100,
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 236, 222, 209),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: const Text(
                          'Poetry',
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 15),
                        ),
                      ),
                      const SizedBox(width: 10),
                      ////horror
                      Container(
                        height: 30,
                        width: 100,
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 236, 222, 209),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: const Text(
                          'Horror',
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 15),
                        ),
                      ),
                      const SizedBox(width: 10),
                      ////comic
                      Container(
                        height: 30,
                        width: 100,
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 236, 222, 209),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: const Text(
                          'Comic',
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 15),
                        ),
                      ),
                      const SizedBox(width: 10),
                      ////biography
                      Container(
                        height: 30,
                        width: 100,
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 236, 222, 209),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: const Text(
                          'Biography',
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 15),
                        ),
                      ),
                      const SizedBox(width: 10),
                      ////Fiction
                      Container(
                        height: 30,
                        width: 100,
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 236, 222, 209),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: const Text(
                          'Fiction',
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 15),
                        ),
                      ),
                      const SizedBox(width: 10),
                      ////fantasy
                      Container(
                        height: 30,
                        width: 100,
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 236, 222, 209),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: const Text(
                          'Fantasy',
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 15),
                        ),
                      ),
                      const SizedBox(width: 10),
                      ////romance
                      Container(
                        height: 30,
                        width: 100,
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 236, 222, 209),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: const Text(
                          'Romance',
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 15),
                        ),
                      ),
                      const SizedBox(width: 10),
                      ////myth
                      Container(
                        height: 30,
                        width: 100,
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 236, 222, 209),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: const Text(
                          'Mythology',
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 15),
                        ),
                      ),
                    ],
                  ),
                  /////////////2nd row for categories
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      ///Fairy Tale
                      Container(
                        height: 30,
                        width: 100,
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 236, 222, 209),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: const Text(
                          'Fairy Tale',
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 15),
                        ),
                      ),
                      const SizedBox(width: 10),
                      ////humor
                      Container(
                        height: 30,
                        width: 100,
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 236, 222, 209),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: const Text(
                          'Humor',
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 15),
                        ),
                      ),
                      const SizedBox(width: 10),
                      ////magic
                      Container(
                        height: 30,
                        width: 100,
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 236, 222, 209),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: const Text(
                          'Magic',
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 15),
                        ),
                      ),
                      const SizedBox(width: 10),
                      ////short story
                      Container(
                        height: 30,
                        width: 100,
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 236, 222, 209),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: const Text(
                          'Short Story',
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 15),
                        ),
                      ),
                      const SizedBox(width: 10),
                      ////adaptation
                      Container(
                        height: 30,
                        width: 100,
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 236, 222, 209),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: const Text(
                          'Adaptation',
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 15),
                        ),
                      ),
                      const SizedBox(width: 10),
                      ////Fan Fiction
                      Container(
                        height: 30,
                        width: 100,
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 236, 222, 209),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: const Text(
                          'Fan Fiction',
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 15),
                        ),
                      ),
                      const SizedBox(width: 10),
                      ////historical
                      Container(
                        height: 30,
                        width: 100,
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 236, 222, 209),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: const Text(
                          'Historical',
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 15),
                        ),
                      ),
                      const SizedBox(width: 10),
                      ////legend
                      Container(
                        height: 30,
                        width: 100,
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 236, 222, 209),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: const Text(
                          'Legend',
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 15),
                        ),
                      ),
                      const SizedBox(width: 10),
                      ////Textbook
                      Container(
                        height: 30,
                        width: 100,
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 236, 222, 209),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: const Text(
                          'Textbook',
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 15),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              'Discussions',
              textAlign: TextAlign.left,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 68, 53, 40),
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Row(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CategoryIcon extends StatelessWidget {
  const CategoryIcon(this.icon, this.iconText, this.selected);

  final String iconText;
  final IconData icon;
  final bool selected;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          IconButton(
            icon: Icon(icon),
            onPressed: _onSearchPressed,
            color: selected == true ? Colors.orange : Colors.black,
          ),
          Text(iconText)
        ],
      ),
    );
  }

  static void _onSearchPressed() {}
}
