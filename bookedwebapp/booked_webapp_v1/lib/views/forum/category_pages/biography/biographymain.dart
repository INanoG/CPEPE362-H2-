import 'package:booked_webapp_v1/views/forum/category_pages/adaptation/adaptationmain.dart';
import 'package:booked_webapp_v1/views/forum/category_pages/biography/biography.dart';
import 'package:booked_webapp_v1/views/forum/category_pages/classic/classdisc1.dart';
import 'package:booked_webapp_v1/views/forum/category_pages/comic/comicmain.dart';
import 'package:booked_webapp_v1/views/forum/category_pages/fairytale/fairytalemain.dart';
import 'package:booked_webapp_v1/views/forum/category_pages/fantasy/fantasymain.dart';
import 'package:booked_webapp_v1/views/forum/category_pages/fiction/fictionmain.dart';
import 'package:booked_webapp_v1/views/forum/category_pages/history/historymain.dart';
import 'package:booked_webapp_v1/views/forum/category_pages/horror/horrormain.dart';
import 'package:booked_webapp_v1/views/forum/category_pages/humor/humormain.dart';
import 'package:booked_webapp_v1/views/forum/category_pages/magic/magicmain.dart';
import 'package:booked_webapp_v1/views/forum/category_pages/mythology/mythologymain.dart';
import 'package:booked_webapp_v1/views/forum/category_pages/poetry/poetrymain.dart';
import 'package:booked_webapp_v1/views/forum/category_pages/romance/romancemain.dart';
import 'package:booked_webapp_v1/views/forum/category_pages/shortStory/shortStorymain.dart';
import 'package:booked_webapp_v1/views/forum/category_pages/textbook/textbookmain.dart';
import 'package:booked_webapp_v1/views/forum/forum_view.dart';
import 'package:flutter/material.dart';

class BiographyView extends StatelessWidget {
  const BiographyView({Key? key}) : super(key: key);

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
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: const Color.fromARGB(255, 247, 227, 208),
                          elevation: 2,
                          onPrimary: const Color.fromARGB(255, 59, 41, 25),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                        ),
                        child: const Text(
                          'Classic',
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 15),
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const ForumView(),
                            ),
                          );
                        },
                      ),
                      const SizedBox(width: 10),
                      ////poetry
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: const Color.fromARGB(255, 247, 227, 208),
                          elevation: 2,
                          onPrimary: const Color.fromARGB(255, 59, 41, 25),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                        ),
                        child: const Text(
                          'Poetry',
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 15),
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const PoetryView(),
                            ),
                          );
                        },
                      ),
                      const SizedBox(width: 10),
                      ////horror
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: const Color.fromARGB(255, 247, 227, 208),
                          elevation: 2,
                          onPrimary: const Color.fromARGB(255, 59, 41, 25),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                        ),
                        child: const Text(
                          'Horror',
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 15),
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const HorrorView(),
                            ),
                          );
                        },
                      ),
                      const SizedBox(width: 10),
                      ////comic
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: const Color.fromARGB(255, 247, 227, 208),
                          elevation: 2,
                          onPrimary: const Color.fromARGB(255, 59, 41, 25),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                        ),
                        child: const Text(
                          'Comic',
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 15),
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const ComicView(),
                            ),
                          );
                        },
                      ),
                      const SizedBox(width: 10),
                      ////biography
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: const Color.fromARGB(255, 145, 112, 82),
                          elevation: 2,
                          onPrimary: const Color.fromARGB(255, 59, 41, 25),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                        ),
                        child: const Text(
                          'Biography',
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 15),
                        ),
                        onPressed: () {},
                      ),
                      const SizedBox(width: 10),
                      ////Fiction
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: const Color.fromARGB(255, 247, 227, 208),
                          elevation: 2,
                          onPrimary: const Color.fromARGB(255, 59, 41, 25),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                        ),
                        child: const Text(
                          'Fiction',
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 15),
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const FictionView(),
                            ),
                          );
                        },
                      ),
                      const SizedBox(width: 10),
                      ////fantasy
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: const Color.fromARGB(255, 247, 227, 208),
                          elevation: 2,
                          onPrimary: const Color.fromARGB(255, 59, 41, 25),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                        ),
                        child: const Text(
                          'Fantasy',
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 15),
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const FantasyView(),
                            ),
                          );
                        },
                      ),
                      const SizedBox(width: 10),
                      ////romance
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: const Color.fromARGB(255, 247, 227, 208),
                          elevation: 2,
                          onPrimary: const Color.fromARGB(255, 59, 41, 25),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                        ),
                        child: const Text(
                          'Romance',
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 15),
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const RomanceView(),
                            ),
                          );
                        },
                      ),
                      const SizedBox(width: 10),
                      ////myth
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: const Color.fromARGB(255, 247, 227, 208),
                          elevation: 2,
                          onPrimary: const Color.fromARGB(255, 59, 41, 25),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                        ),
                        child: const Text(
                          'Mythology',
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 15),
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const MythologyView(),
                            ),
                          );
                        },
                      ),
                    ],
                  ),
                  /////////////2nd row for categories
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      ///Fairy Tale
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: const Color.fromARGB(255, 247, 227, 208),
                          elevation: 2,
                          onPrimary: const Color.fromARGB(255, 59, 41, 25),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                        ),
                        child: const Text(
                          'Fairy Tale',
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 15),
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const FairyTaleView(),
                            ),
                          );
                        },
                      ),
                      const SizedBox(width: 10),
                      ////humor
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: const Color.fromARGB(255, 247, 227, 208),
                          elevation: 2,
                          onPrimary: const Color.fromARGB(255, 59, 41, 25),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                        ),
                        child: const Text(
                          'Humor',
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 15),
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const HumorView(),
                            ),
                          );
                        },
                      ),
                      const SizedBox(width: 10),
                      ////magic
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: const Color.fromARGB(255, 247, 227, 208),
                          elevation: 2,
                          onPrimary: const Color.fromARGB(255, 59, 41, 25),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                        ),
                        child: const Text(
                          'Magic',
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 15),
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const MagicView(),
                            ),
                          );
                        },
                      ),
                      const SizedBox(width: 10),
                      ////short story
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: const Color.fromARGB(255, 247, 227, 208),
                          elevation: 2,
                          onPrimary: const Color.fromARGB(255, 59, 41, 25),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                        ),
                        child: const Text(
                          'Short Story',
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 15),
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const ShortStoryView(),
                            ),
                          );
                        },
                      ),
                      const SizedBox(width: 10),
                      ////adaptation
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Color.fromARGB(255, 247, 227, 208),
                          elevation: 2,
                          onPrimary: const Color.fromARGB(255, 59, 41, 25),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                        ),
                        child: const Text(
                          'Adaptation',
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 15),
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const AdaptationView(),
                            ),
                          );
                        },
                      ),
                      const SizedBox(width: 10),
                      ////Fan Fiction
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: const Color.fromARGB(255, 247, 227, 208),
                          elevation: 2,
                          onPrimary: const Color.fromARGB(255, 59, 41, 25),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                        ),
                        child: const Text(
                          'Fan Fiction',
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 15),
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const FictionView(),
                            ),
                          );
                        },
                      ),
                      const SizedBox(width: 10),
                      ////historical
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: const Color.fromARGB(255, 247, 227, 208),
                          elevation: 2,
                          onPrimary: const Color.fromARGB(255, 59, 41, 25),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                        ),
                        child: const Text(
                          'Historical',
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 15),
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const HistoryView(),
                            ),
                          );
                        },
                      ),
                      const SizedBox(width: 10),

                      ////Textbook
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: const Color.fromARGB(255, 247, 227, 208),
                          elevation: 2,
                          onPrimary: const Color.fromARGB(255, 59, 41, 25),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                        ),
                        child: const Text(
                          'Textbook',
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 15),
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const TextbookView(),
                            ),
                          );
                        },
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
              'Discussions for Biography Genre',
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
    ListEntry("Book Suggestions", "test",
        "Share your book suggestions for the genre", 54, 2, true),
    ListEntry(
        "Questions", "test", "Ask to our fellow booklovers", 154, 3, false),
    ListEntry("Book Discussions", "test", "Discuss your book", 971, 0, false),
    ListEntry("Random Topics", "test", "Just random things", 124, 2, true),
    ListEntry("Marketplace", "test", "Discuss about prices", 412, 5, true),
    ListEntry("Upcomming Books", "test", "Care to share upcomming books?", 12,
        1, true),
    ListEntry("Feedbacks", "test", "Found something unusual?", 12, 1, true),
    ListEntry("Updates", "test", "Keep getting updated", 12, 1, true),
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
      padding: const EdgeInsets.all(1.0),
      margin: const EdgeInsets.symmetric(horizontal: 3.0, vertical: 3.0),
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
          width: 150,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            verticalDirection: VerticalDirection.up,
            children: const <Widget>[
              //CategoryIcon(Icons.remove_red_eye, entry.views.toString(), false),
              //CategoryIcon(Icons.comment, entry.responses.toString(), false),
            ],
          ),
        ),
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => biographyGenre(entrynum: count),
            ),
          );
        },
      ),
    );
  }
}
