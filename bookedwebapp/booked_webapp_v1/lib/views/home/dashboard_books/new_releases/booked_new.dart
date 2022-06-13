import 'package:auto_size_text/auto_size_text.dart';
import 'package:booked_webapp_v1/provider/user_provider.dart';
import 'package:booked_webapp_v1/resources/firestore_methods.dart';
import 'package:booked_webapp_v1/views/home/dashboard_books/book_tags/bookTags.dart';
import 'package:booked_webapp_v1/views/welcome_page/welcome_page_view.dart';
import 'package:booked_webapp_v1/widgets/commentcard/commentcard.dart';
import 'package:booked_webapp_v1/widgets/menu/data/dashboard_choices.dart';
import 'package:booked_webapp_v1/widgets/menu/model/dashboard/dashboard_new_item.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:booked_webapp_v1/auth_service.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';

class booked_new extends StatefulWidget {
  final int booknum;
  booked_new({required this.booknum});

  @override
  State<booked_new> createState() => _booked_newState();
}

class _booked_newState extends State<booked_new> {
  final Stream<QuerySnapshot> books =
      FirebaseFirestore.instance.collection('books').snapshots();
  CollectionReference reviews = FirebaseFirestore.instance.collection('books');
  bool selected = false;
  Icon first_icon = const Icon(Icons.favorite_border_outlined);
  Icon second_icon = const Icon(Icons.favorite);
  double rating = 0;
  final TextEditingController comment = TextEditingController();
  var commentadd = '';
  var userName = '';
  int commentcnt = 0;
  String booktitle = '';
  String bookauthor = '';
  late int booknumber;
  String userID = FirebaseAuth.instance.currentUser!.uid;
  //
  final TextEditingController commentEditingController =
      TextEditingController();

  void postComment(String uid, String name, String profilePic) async {
    try {
      String res = await FireStoreMethods().postComment(
        userID,
        commentEditingController.text,
        uid,
        name,
        profilePic,
      );
      setState(() {
        commentEditingController.text = "";
      });
    } catch (err) {
      print(err);
    }
  }

  @override
  Widget build(BuildContext context) {
    /////
    var reviewPost = StreamBuilder(
      stream: FirebaseFirestore.instance
          .collection('review4New')
          .doc(widget.booknum.toString())
          .collection(widget.booknum.toString())
          .snapshots(),
      builder: (BuildContext context,
          AsyncSnapshot<QuerySnapshot<Map<String, dynamic>>> snapshot) {
        if (!snapshot.hasData) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }

        final data = snapshot.requireData;
        commentcnt = data.docs.length + 1;
        return Expanded(
            //padding: const EdgeInsets.all(1.0),
            child: ListView.builder(
          scrollDirection: Axis.vertical,
          shrinkWrap: true,
          itemCount: data.docs.length,
          itemBuilder: (BuildContext context, int index) => ReviewPostEntry(
              '${(data.docs[index]['username'])}',
              '${(data.docs[index]['hours'])}',
              (data.docs[index]['likes']),
              (data.docs[index]['dislikes']),
              '${(data.docs[index]['text'])}',
              index),
        ));
      },
    );

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
            stream: books,
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

              booktitle = '${(data.docs[widget.booknum]['title'])}';
              bookauthor = '${(data.docs[widget.booknum]['author'])}';

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
                        height: 365,
                        width: 320,
                        child: Image.asset(
                            'assets/dashboard_books/booked_new_' +
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
                          PopupMenuButton<DashboardMenu_Item>(
                              onSelected: (item) => onSelected(context, item),
                              child: Container(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 2, vertical: 2),
                                decoration: BoxDecoration(
                                  color:
                                      const Color.fromARGB(255, 247, 227, 208),
                                  borderRadius: BorderRadius.circular(5),
                                  boxShadow: [
                                    BoxShadow(
                                      color: const Color.fromARGB(
                                              255, 59, 41, 25)
                                          .withOpacity(0.5), //color of shadow
                                      spreadRadius: 1, //spread radius
                                      blurRadius: 1, // blur radius
                                      offset: const Offset(0, 2),
                                    ),
                                  ],
                                ),
                                height: 35,
                                width: 200,
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
                              itemBuilder: (context) => [
                                    ...DashboardItems.itemsFirst
                                        .map(buildItem)
                                        .toList()
                                  ]),
                          const SizedBox(
                            width: 10,
                          ),
                          Container(
                            width: 40,
                            height: 35,
                            decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 247, 227, 208),
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
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          bookTagItems(
                              '${(data.docs[widget.booknum]['tag1'])}'),
                          const SizedBox(
                            width: 5,
                          ),
                          bookTagItems(
                              '${(data.docs[widget.booknum]['tag2'])}'),
                          const SizedBox(
                            width: 5,
                          ),
                          bookTagItems(
                              '${(data.docs[widget.booknum]['tag3'])}'),
                          const SizedBox(
                            width: 5,
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          bookTagItems(
                              '${(data.docs[widget.booknum]['tag4'])}'),
                          const SizedBox(
                            width: 5,
                          ),
                          bookTagItems(
                              '${(data.docs[widget.booknum]['tag5'])}'),
                          const SizedBox(
                            width: 5,
                          ),
                          bookTagItems(
                              '${(data.docs[widget.booknum]['tag6'])}'),
                          const SizedBox(
                            width: 5,
                          ),
                        ],
                      ),
                    ],
                  ),

                  /// ------------------------ 2nd Column ---------------------------////
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Text(
                        '${(data.docs[widget.booknum]['title'])}',
                        style: const TextStyle(
                          height: 1.2,
                          fontWeight: FontWeight.bold,
                          fontSize: 30,
                          color: Color.fromARGB(255, 68, 53, 40),
                        ),
                        textAlign: TextAlign.start,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      SizedBox(
                        height: 40,
                        child: Text(
                          '${(data.docs[widget.booknum]['author'])}',
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            height: 1.2,
                            fontSize: 20,
                            color: Color.fromARGB(255, 68, 53, 40),
                          ),
                          textAlign: TextAlign.start,
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          RatingBar.builder(
                            glowRadius: 0.5,
                            glowColor: const Color.fromARGB(255, 94, 76, 60),
                            minRating: 1,
                            itemSize: 30,
                            itemBuilder: (context, _) => const Icon(Icons.star,
                                color: Color.fromARGB(255, 68, 53, 40)),
                            updateOnDrag: true,
                            onRatingUpdate: (rating) => setState(
                              () {
                                this.rating = rating;
                              },
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Text(
                            '$rating',
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              height: 1.2,
                              fontSize: 20,
                              color: Color.fromARGB(255, 68, 53, 40),
                            ),
                            textAlign: TextAlign.start,
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      SizedBox(
                        height: 15,
                        child: Text(
                          'Published: ${(data.docs[widget.booknum]['pub_date'])}',
                          style: const TextStyle(
                            fontWeight: FontWeight.w200,
                            height: 1.2,
                            fontSize: 14,
                            color: Color.fromARGB(255, 68, 53, 40),
                          ),
                          textAlign: TextAlign.start,
                        ),
                      ),
                      const SizedBox(
                        width: 480,
                      ),
                      SizedBox(
                        width: 250,
                        child: TextFormField(
                          controller: comment,
                          decoration: const InputDecoration(
                            labelText: 'Add a review',
                            suffixIcon: Icon(Icons.edit_note, size: 17),
                          ),
                          onChanged: (value) {
                            commentadd = value;
                          },
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return ("Enter a Review");
                            }
                            return null;
                          },
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),

                      //
                      SizedBox(
                        child: StreamBuilder(
                            stream: FirebaseFirestore.instance
                                .collection('users')
                                .doc(userID)
                                .snapshots(),
                            //added AsyncSnapshot<DocumentSnapshot>
                            builder: (context, AsyncSnapshot snapshots) {
                              if (snapshots.hasError) {
                                return const Text('Something went wrong.');
                              }
                              if (snapshots.connectionState ==
                                  ConnectionState.waiting) {
                                return const Text('Loading');
                              }

                              final data = snapshots.requireData;

                              userName = '${data['userName']}';

                              return ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  fixedSize: const Size(110, 30),
                                  primary:
                                      const Color.fromARGB(255, 247, 227, 208),
                                  elevation: 2,
                                  onPrimary:
                                      const Color.fromARGB(255, 59, 41, 25),
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 2, vertical: 2),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(5.0),
                                  ),
                                ),
                                onPressed: () {
                                  CollectionReference review = FirebaseFirestore
                                      .instance
                                      .collection('review4New')
                                      .doc(widget.booknum.toString())
                                      .collection(widget.booknum.toString());
                                  review.doc('$commentcnt').set({
                                    'username': userName,
                                    'text': comment.text.trim(),
                                    'likes': 0,
                                    'dislikes': 0,
                                    'hours': DateFormat("MMMM, dd, yyyy")
                                            .format(DateTime.now())
                                            .toString() +
                                        '  ' +
                                        DateFormat("hh:mm:ss a")
                                            .format(DateTime.now())
                                            .toString(),
                                  });
                                },
                                child: const Center(
                                  child: Text(
                                    'Post Review',
                                    style: TextStyle(
                                        color: Color.fromARGB(255, 59, 41, 25),
                                        fontSize: 12,
                                        fontWeight: FontWeight.w200),
                                  ),
                                ),
                              );
                            }),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      /*Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(bottom: 2.0),
                          child: reviewPost,
                        ),
                      ),*/
                    ],
                  ),

                  /// ------------------------ 3rd Column ---------------------------////
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      const Text(
                        'SYNOPSIS:',
                        style: TextStyle(
                          height: 1.2,
                          fontWeight: FontWeight.bold,
                          fontSize: 30,
                          color: Color.fromARGB(255, 68, 53, 40),
                        ),
                        textAlign: TextAlign.start,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      SizedBox(
                        height: 500,
                        width: 400,
                        child: AutoSizeText.rich(
                          TextSpan(
                              text:
                                  '${(data.docs[widget.booknum]['synopsis'])}'),
                          style: const TextStyle(
                            height: 1.2,
                            fontSize: 20,
                            color: Color.fromARGB(255, 68, 53, 40),
                          ),
                          textAlign: TextAlign.justify,
                          minFontSize: 14,
                          stepGranularity: 1,
                          maxLines: 28,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                    ],
                  ),
                ],
              );
            },
          ),
        ),
      ),
    );
  }

  PopupMenuItem<DashboardMenu_Item> buildItem(DashboardMenu_Item item) =>
      PopupMenuItem(
        value: item,
        child: Row(
          children: [
            Icon(item.icon,
                color: const Color.fromARGB(255, 92, 71, 43), size: 20),
            const SizedBox(width: 12),
            Text(item.text),
          ],
        ),
      );

  Future<void> onSelected(BuildContext context, DashboardMenu_Item item) async {
    switch (item) {
      case DashboardItems.reading:
        CollectionReference adtolist = FirebaseFirestore.instance
            .collection('readinglist')
            .doc(userID)
            .collection('reading');

        adtolist.doc(widget.booknum.toString()).set({
          'title': booktitle,
          'author': bookauthor,
          'booknumber': widget.booknum,
        });

        break;
      case DashboardItems.to_read:
        CollectionReference adtolist = FirebaseFirestore.instance
            .collection('readinglist')
            .doc(userID)
            .collection('to_read');

        adtolist.doc(widget.booknum.toString()).set({
          'title': booktitle,
          'author': bookauthor,
          'booknumber': widget.booknum,
        });
        break;
      case DashboardItems.completed:
        CollectionReference adtolist = FirebaseFirestore.instance
            .collection('readinglist')
            .doc(userID)
            .collection('completed');

        adtolist.doc(widget.booknum.toString()).set({
          'title': booktitle,
          'author': bookauthor,
          'booknumber': widget.booknum,
        });
        break;
      default:
    }
  }
}

class ReviewPostEntry extends StatelessWidget {
  final String username;
  final String hours;
  int likes;
  final int dislikes;
  final String text;
  int count;

  ReviewPostEntry(this.username, this.hours, this.likes, this.dislikes,
      this.text, this.count);

  @override
  Widget build(BuildContext context) {
    int likkes = likes;
    return Container(
      margin: const EdgeInsets.all(5.0),
      decoration: const BoxDecoration(
        color: Color.fromARGB(255, 184, 157, 117),
        borderRadius: BorderRadius.all(Radius.circular(20.0)),
      ),
      child: Column(
        children: <Widget>[
          Container(
            decoration: const BoxDecoration(
              color: Color.fromARGB(255, 184, 157, 117),
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20.0),
                  topRight: Radius.circular(20.0)),
            ),
            child: Row(
              children: <Widget>[
                const Icon(
                  Icons.person,
                  size: 50.0,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(username),
                      Text(hours),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.only(left: 2.0, right: 2.0, bottom: 2.0),
            padding: const EdgeInsets.all(8.0),
            decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(20.0),
                    bottomRight: Radius.circular(20.0))),
            child: Text(text),
          ),
        ],
      ),
    );
  }
}
