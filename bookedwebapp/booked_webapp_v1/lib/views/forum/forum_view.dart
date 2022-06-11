import 'package:booked_webapp_v1/views/forum/category_pages/classic/classdisc1.dart';
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
              decoration: BoxDecoration(
                  color: Colors.transparent,
                  borderRadius: BorderRadius.circular(5)),
              child: ListView.builder(
                itemBuilder: (BuildContext context, int index) =>
                    EntryItem(listItemsData[index], index),
                itemCount: listItemsData.length,
                shrinkWrap: true,
              ),
            )
          ],
        ),
      ),
    );
  }

  static final listItemsData = [
    ListEntry("Forum 1", "Discussion 1", "I love this book", 54, 2, true),
    ListEntry("Forum 2", "test", "Discussion 2", 154, 3, false),
    ListEntry("Forum 3", "test", "Discussion 3", 971, 0, false),
    ListEntry("Forum 4", "test", "Discussion 4", 124, 2, true),
    ListEntry("Forum 5", "test", "Discussion 5", 412, 5, true),
    ListEntry("Forum 6", "test", "Discussion 6", 12, 1, true),
    ListEntry("Forum 7", "test", "Discussion 7", 12, 1, true),
    ListEntry("Forum 8", "test", "Discussion 8", 12, 1, true),
  ];
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
          Text(
            iconText,
            style: const TextStyle(
                color: Color.fromARGB(255, 0, 0, 0), fontSize: 12),
          ),
        ],
      ),
    );
  }

  static void _onSearchPressed() {}
}

class ListEntry {
  final String title;
  final String icon;
  final String description;
  final int views;
  final int responses;
  final bool answered;

  ListEntry(this.title, this.icon, this.description, this.views, this.responses,
      this.answered);
}

class EntryItem extends StatelessWidget {
  final int count;

  const EntryItem(this.entry, this.count);

  final ListEntry entry;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(3.0),
      margin: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 3.0),
      decoration: const BoxDecoration(
        color: Color.fromARGB(255, 182, 170, 151),
        borderRadius: BorderRadius.all(Radius.circular(15.0)),
      ),
      child: ListTile(
        title: Text(entry.title),
        subtitle: Text(entry.description),
        leading: const Icon(
          Icons.dashboard,
          color: Color.fromARGB(255, 49, 44, 31),
        ),
        trailing: SizedBox(
          width: 100,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            verticalDirection: VerticalDirection.up,
            children: <Widget>[
              CategoryIcon(Icons.remove_red_eye, entry.views.toString(), false),
              CategoryIcon(Icons.comment, entry.responses.toString(), false),
            ],
          ),
        ),
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => classicdisc1(entrynum: count),
            ),
          );
        },
      ),
    );
  }
}
