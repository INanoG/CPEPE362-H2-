import 'package:booked_webapp_v1/views/reading_list/reading_list.dart';
import 'package:booked_webapp_v1/views/reading_list/to_read.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class ReadingListCompleted extends StatefulWidget {
  const ReadingListCompleted({Key? key}) : super(key: key);

  @override
  State<ReadingListCompleted> createState() => _ReadingListCompletedState();
}

class _ReadingListCompletedState extends State<ReadingListCompleted> {
  String dropdownValue = 'Reading';
  double rating = 0;
  String userID = FirebaseAuth.instance.currentUser!.uid;
  int bookcount = 0;

  @override
  Widget build(BuildContext context) {
    /*ListView.builder(
                itemBuilder: (BuildContext context, int index) =>
                    EntryItem(listItemsData[index], index),
                itemCount: listItemsData.length,
                shrinkWrap: true,
              ),*/
    //
    var bookadded = StreamBuilder(
      stream: FirebaseFirestore.instance
          .collection('readinglist')
          .doc(userID)
          .collection('completed')
          .snapshots(),
      builder: (BuildContext context,
          AsyncSnapshot<QuerySnapshot<Map<String, dynamic>>> snapshot) {
        if (!snapshot.hasData) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }

        final data = snapshot.requireData;
        bookcount = data.docs.length + 1;

        DocumentReference<Map<String, dynamic>> userupdate =
            FirebaseFirestore.instance.collection('users').doc(userID);

        userupdate.update({
          'finished_read': data.docs.length,
        });

        return SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Container(
            padding: const EdgeInsets.all(8.0),
            child: ListView.builder(
              shrinkWrap: true,
              itemCount: data.docs.length,
              itemBuilder: (BuildContext context, int index) => BookShow(
                  '${(data.docs[index]['title'])}',
                  '${(data.docs[index]['author'])}',
                  (data.docs[index]['booknumber']),
                  (data.docs[index]['rating']),
                  index),
            ),
          ),
        );
      },
    );

    DocumentReference<Map<String, dynamic>> userupdate =
        FirebaseFirestore.instance.collection('users').doc(userID);

    userupdate.update({
      'finished_read': bookcount,
    });

    return Scaffold(
      backgroundColor: Colors.transparent,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const ReadingListView(),
                          ));
                    },
                    child: const Text(
                      "Reading",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 41, 32, 8),
                          fontSize: 20),
                    )),
                GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const ReadingListToRead(),
                          ));
                    },
                    child: const Text(
                      "Plan to Read",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 41, 32, 8),
                          fontSize: 20),
                    )),
                GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const ReadingListCompleted(),
                          ));
                    },
                    child: const Text(
                      "Completed",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 41, 32, 8),
                          fontSize: 20),
                    )),
                const SizedBox(
                  height: 150,
                ),
              ],
            ),
            Container(
              decoration: BoxDecoration(
                  color: Colors.transparent,
                  borderRadius: BorderRadius.circular(5)),
              child: bookadded,
            ),
          ],
        ),
      ),
    );
  }
}

class BookShow extends StatefulWidget {
  final String title;
  final String author;
  int booknumber;
  double ratingcount;
  int count;
  BookShow(
      this.title, this.author, this.booknumber, this.ratingcount, this.count);

  @override
  State<BookShow> createState() => _BookShowState();
}

String dropdownValue = 'Completed';
String whatValue = '';
double ratingCnt = 1;
String userID = FirebaseAuth.instance.currentUser!.uid;
int bookcount = 0;

class _BookShowState extends State<BookShow> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(
              height: 50,
            ),
            Image.asset(
                "assets/dashboard_books/booked_new_${(widget.booknumber)}.jpg",
                width: 150,
                height: 200),
            const SizedBox(
              height: 50,
              width: 20,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  (widget.title),
                  style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      fontSize: 20),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  widget.author,
                  style: const TextStyle(
                      fontWeight: FontWeight.normal,
                      color: Colors.black,
                      fontSize: 15),
                ),
                const SizedBox(
                  width: 10,
                  height: 10,
                ),
                Text('Score: ${(widget.ratingcount)}',
                    style: const TextStyle(fontSize: 15)),
                const SizedBox(
                  height: 5,
                ),
                RatingBar.builder(
                  initialRating: widget.ratingcount,
                  minRating: 1,
                  itemSize: 30,
                  direction: Axis.horizontal,
                  allowHalfRating: true,
                  itemCount: 5,
                  itemPadding: const EdgeInsets.symmetric(horizontal: 4.0),
                  itemBuilder: (context, _) => const Icon(
                    Icons.star,
                    color: Color.fromARGB(255, 41, 32, 8),
                  ),
                  onRatingUpdate: (rating) => setState(() {
                    widget.ratingcount = rating;
                    CollectionReference ratingUpdate = FirebaseFirestore
                        .instance
                        .collection('readinglist')
                        .doc(userID)
                        .collection('to_read');

                    ratingUpdate.doc(widget.booknumber.toString()).update({
                      'rating': widget.ratingcount,
                    });
                  }),
                ),
                const SizedBox(
                  width: 10,
                  height: 10,
                ),
                DropdownButton<String>(
                  value: dropdownValue,
                  items: <String>['Reading', 'Plan To Read', 'Completed']
                      .map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(
                        value,
                        style: const TextStyle(fontSize: 15),
                      ),
                    );
                  }).toList(),
                  // Step 5.
                  onChanged: (String? newValue) {
                    setState(() {
                      //dropdownValue = newValue!;
                      whatValue = newValue!;
                      switch (whatValue) {
                        case 'Completed':
                          break;
                        case 'Plan To Read':
                          CollectionReference adtolist = FirebaseFirestore
                              .instance
                              .collection('readinglist')
                              .doc(userID)
                              .collection('to_read');

                          adtolist.doc(widget.booknumber.toString()).set({
                            'title': widget.title,
                            'author': widget.author,
                            'booknumber': widget.booknumber,
                            'rating': widget.ratingcount,
                          });

                          CollectionReference deletelist = FirebaseFirestore
                              .instance
                              .collection('readinglist')
                              .doc(userID)
                              .collection('completed');

                          deletelist.doc(widget.booknumber.toString()).delete();
                          break;
                        case 'Reading':
                          CollectionReference adtolist = FirebaseFirestore
                              .instance
                              .collection('readinglist')
                              .doc(userID)
                              .collection('reading');

                          adtolist.doc(widget.booknumber.toString()).set({
                            'title': widget.title,
                            'author': widget.author,
                            'booknumber': widget.booknumber,
                            'rating': widget.ratingcount,
                          });

                          CollectionReference deletelist = FirebaseFirestore
                              .instance
                              .collection('readinglist')
                              .doc(userID)
                              .collection('completed');

                          deletelist.doc(widget.booknumber.toString()).delete();
                          break;
                        default:
                      }
                    });
                  },
                ),
                const SizedBox(
                  height: 15,
                ),
              ],
            ),
          ],
        ),
        const SizedBox(height: 20),
      ],
    );
  }
}
