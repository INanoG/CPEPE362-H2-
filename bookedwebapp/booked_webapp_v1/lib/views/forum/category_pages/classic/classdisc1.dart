import 'dart:html';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class classicdisc1 extends StatefulWidget {
  final int entrynum;
  classicdisc1({required this.entrynum});

  @override
  _classicdisc1 createState() => _classicdisc1();
}

/*var ForumPostArr = [
  ForumPostEntry("Gogo", "2 Days ago", 0, 0,
      "Hello,\n\nLorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."),
  ForumPostEntry("Mundessa", "23 Hours ago", 1, 0,
      "Pellentesque justo metus, finibus porttitor consequat vitae, tincidunt vitae quam. Vestibulum molestie sem diam. Nullam pretium semper tempus. Maecenas lobortis lacus nunc, id lacinia nunc imperdiet tempor. Mauris mi ipsum, finibus consectetur eleifend a, maximus eget lorem. Praesent a magna nibh. In congue sapien sed velit mattis sodales. Nam tempus pulvinar metus, in gravida elit tincidunt in. Curabitur sed sapien commodo, fringilla tortor eu, accumsan est. Proin tincidunt convallis dolor, a faucibus sapien auctor sodales. Duis vitae dapibus metus. Nulla sit amet porta ipsum, posuere tempor tortor.\n\nCurabitur mauris dolor, cursus et mi id, mattis sagittis velit. Duis eleifend mi et ante aliquam elementum. Ut feugiat diam enim, at placerat elit semper vitae. Phasellus vulputate quis ex eu dictum. Cras sapien magna, faucibus at lacus vel, faucibus viverra lorem. Phasellus quis dui tristique, ultricies velit non, cursus lectus. Suspendisse neque nisl, vestibulum non dui in, vulputate placerat elit. Sed at convallis mauris, eu blandit dolor. Vivamus suscipit iaculis erat eu condimentum. Aliquam erat volutpat. Curabitur posuere commodo arcu vel consectetur."),
  ForumPostEntry("Cheesecake", "2 Days ago", 5, 0,
      "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."),
  ForumPostEntry("Spaghetti", "2 Days ago", 0, 0,
      "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."),
];*/
String userID = FirebaseAuth.instance.currentUser!.uid;
final TextEditingController comment = TextEditingController();
var commentadd = '';
CollectionReference user = FirebaseFirestore.instance
    .collection('users')
    .doc(userID)
    .get() as CollectionReference<Object?>;
var userName = '';
int commentcnt = 0;

class _classicdisc1 extends State<classicdisc1> {
  @override
  Widget build(BuildContext context) {
    var questionSection = Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: <Widget>[
          const Text(
            "Book Suggestions",
            textScaleFactor: 2.0,
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: const <Widget>[
                IconWithText(
                  Icons.laptop_mac,
                  "Classic",
                  iconColor: Color.fromARGB(255, 68, 54, 24),
                ),
                IconWithText(
                  Icons.book,
                  "Books",
                  iconColor: Color.fromARGB(255, 68, 54, 24),
                ),
                IconWithText(
                  Icons.remove_red_eye,
                  "54",
                  iconColor: Color.fromARGB(255, 68, 54, 24),
                )
              ],
            ),
          ),
          const Divider()
        ],
      ),
    );

    var responses = StreamBuilder(
      stream: FirebaseFirestore.instance
          .collection('post')
          .doc('classic_forum')
          .collection(widget.entrynum.toString())
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
        return Container(
            padding: const EdgeInsets.all(8.0),
            child: ListView.builder(
              itemCount: data.docs.length,
              itemBuilder: (BuildContext context, int index) => ForumPostEntry(
                  '${(data.docs[index]['username'])}',
                  '${(data.docs[index]['hours'])}',
                  (data.docs[index]['likes']),
                  (data.docs[index]['dislikes']),
                  '${(data.docs[index]['text'])}'),
            ));
      },
    );

    return Scaffold(
      backgroundColor: Colors.transparent,
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(151, 184, 157, 117),
        title: Text("Discussion " + widget.entrynum.toString()),
      ),
      body: Column(
        children: <Widget>[
          questionSection,
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(bottom: 20.0),
              child: responses,
            ),
          ),
          const SizedBox(
            height: 10,
          ),

          SizedBox(
            width: 250,
            child: TextFormField(
              controller: comment,
              decoration: const InputDecoration(
                labelText: 'Post a comment',
                suffixIcon: Icon(Icons.edit_note, size: 17),
              ),
              onChanged: (value) {
                commentadd = value;
              },
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return ("Enter a comment");
                }
                return null;
              },
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          StreamBuilder(
              stream: FirebaseFirestore.instance
                  .collection('users')
                  .doc(userID)
                  .snapshots(),
              //added AsyncSnapshot<DocumentSnapshot>
              builder: (context, AsyncSnapshot snapshots) {
                if (snapshots.hasError) {
                  return const Text('Something went wrong.');
                }
                if (snapshots.connectionState == ConnectionState.waiting) {
                  return const Text('Loading');
                }

                final data = snapshots.requireData;

                userName = '${data['userName']}';

                return ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    fixedSize: const Size(110, 30),
                    primary: const Color.fromARGB(255, 247, 227, 208),
                    elevation: 2,
                    onPrimary: const Color.fromARGB(255, 59, 41, 25),
                    padding:
                        const EdgeInsets.symmetric(horizontal: 2, vertical: 2),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                  ),
                  onPressed: () {
                    CollectionReference posts = FirebaseFirestore.instance
                        .collection('post')
                        .doc('classic_forum')
                        .collection(widget.entrynum.toString());
                    posts.doc('$commentcnt').set({
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
                      'Post Comment',
                      style: TextStyle(
                          color: Color.fromARGB(255, 59, 41, 25),
                          fontSize: 12,
                          fontWeight: FontWeight.w200),
                    ),
                  ),
                );
              }),

          //
        ],
      ),
    );
  }
}

/*class ForumPostEntry {
  final String username;
  final String hours;
  final int likes;
  final int dislikes;
  final String text;

  ForumPostEntry(
      this.username, this.hours, this.likes, this.dislikes, this.text);
}*/

class ForumPostEntry extends StatelessWidget {
  final String username;
  final String hours;
  final int likes;
  final int dislikes;
  final String text;

  ForumPostEntry(
      this.username, this.hours, this.likes, this.dislikes, this.text);

  @override
  Widget build(BuildContext context) {
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
                Row(
                  children: <Widget>[
                    const Padding(
                      padding: EdgeInsets.all(2.0),
                      child: Icon(Icons.thumb_up),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: Text(likes.toString()),
                    ),
                    const Padding(
                      padding: EdgeInsets.all(2.0),
                      child: Icon(Icons.thumb_down),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 8.0, left: 2.0),
                      child: Text(dislikes.toString()),
                    ),
                  ],
                )
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

class IconWithText extends StatelessWidget {
  final IconData iconData;
  final String text;
  final Color iconColor;

  const IconWithText(this.iconData, this.text, {required this.iconColor});
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: <Widget>[
          Icon(
            iconData,
            color: iconColor,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Text(text),
          ),
        ],
      ),
    );
  }
}


/*
class classicdisc1 extends StatefulWidget {
  classicdisc1({Key? key}) : super(key: key);

  @override
  State<classicdisc1> createState() => _classicdisc1State();
}

class _classicdisc1State extends State<classicdisc1> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromARGB(255, 243, 213, 255),
    );
  }
}

*/