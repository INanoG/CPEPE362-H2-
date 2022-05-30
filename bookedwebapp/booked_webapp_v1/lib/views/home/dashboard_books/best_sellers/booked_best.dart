import 'package:auto_size_text/auto_size_text.dart';
import 'package:booked_webapp_v1/views/home/dashboard_books/book_tags/bookTags.dart';
import 'package:booked_webapp_v1/views/welcome_page/welcome_page_view.dart';
import 'package:flutter/material.dart';
import 'package:booked_webapp_v1/auth_service.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class booked_best extends StatefulWidget {
  final int booknum;
  booked_best({required this.booknum});

  @override
  State<booked_best> createState() => _booked_bestState();
}

class _booked_bestState extends State<booked_best> {
  final Stream<QuerySnapshot> books =
      FirebaseFirestore.instance.collection('books_best').snapshots();
  bool selected = false;
  Icon first_icon = const Icon(Icons.favorite_border_outlined);
  Icon second_icon = Icon(Icons.favorite);
  double rating = 0;
  final TextEditingController comment = TextEditingController();
  var commentadd = '';
  var userName = '';

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
                            'assets/dashboard_books/booked_best_' +
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
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          fixedSize: const Size(110, 30),
                          primary: const Color.fromARGB(255, 247, 227, 208),
                          elevation: 2,
                          onPrimary: const Color.fromARGB(255, 59, 41, 25),
                          padding: const EdgeInsets.symmetric(
                              horizontal: 2, vertical: 2),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                        ),
                        onPressed: () {},
                        child: const Center(
                          child: Text(
                            'Post Review',
                            style: TextStyle(
                                color: Color.fromARGB(255, 59, 41, 25),
                                fontSize: 12,
                                fontWeight: FontWeight.w200),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 450,
                      ),
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
}