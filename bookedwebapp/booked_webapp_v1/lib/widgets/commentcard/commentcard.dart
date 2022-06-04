import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class CommentCard extends StatelessWidget {
  final snap;
  final booknumber;
  const CommentCard({Key? key, required this.snap, required this.booknumber})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(3.0),
      margin: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 3.0),
      decoration: const BoxDecoration(
        color: Color.fromARGB(255, 182, 170, 151),
        borderRadius: BorderRadius.all(Radius.circular(15.0)),
      ),
      child: const SizedBox(
        height: 10,
        width: 10,
      ),
    );
  }
}

/*
NetworkImage(
              snap.data()['profilePic'],
            ),

Row(
        children: [
          const CircleAvatar(
            child: Icon(Icons.person,
                size: 20, color: Color.fromARGB(255, 75, 45, 27)),
            radius: 18,
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(left: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  RichText(
                    text: const TextSpan(
                      children: [
                        TextSpan(
                            text: 'User' /*snap.data()['name']*/,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            )),
                        TextSpan(
                          text: 'this is a comment',
                          //text: ' ${snap.data()['text']}',
                        ),
                      ],
                    ),
                  ),
                  /*Padding(
                    padding: const EdgeInsets.only(top: 4),
                    child: Text(
                      DateFormat.yMMMd().format(
                        snap.data()['datePublished'].toDate(),
                      ),
                      style: const TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  )*/
                ],
              ),
            ),
          ),
        ],
      ),


*/