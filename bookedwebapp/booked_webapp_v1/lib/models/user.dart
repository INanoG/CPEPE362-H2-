import 'package:cloud_firestore/cloud_firestore.dart';

class User {
  final String email;
  final String uid;
  final String photoUrl;
  final String username;
  final String about_me;
  final List followers;
  final List following;
  final List toRead;
  final List finished;
  final List currentlyRead;

  const User(
      {required this.username,
      required this.uid,
      required this.photoUrl,
      required this.email,
      required this.about_me,
      required this.followers,
      required this.following,
      required this.currentlyRead,
      required this.finished,
      required this.toRead});

  static User fromSnap(DocumentSnapshot snap) {
    var snapshot = snap.data() as Map<String, dynamic>;

    return User(
      username: snapshot["username"],
      uid: snapshot["uid"],
      email: snapshot["email"],
      photoUrl: snapshot["photoUrl"],
      about_me: snapshot["about_me"],
      followers: snapshot["followers"],
      following: snapshot["following"],
      toRead: snapshot["to_read"],
      currentlyRead: snapshot["current_read"],
      finished: snapshot["finished"],
    );
  }

  Map<String, dynamic> toJson() => {
        "username": username,
        "uid": uid,
        "email": email,
        "photoUrl": photoUrl,
        "about_me": about_me,
        "followers": followers,
        "following": following,
        "to_read": toRead,
        "finished": finished,
        "current_read": currentlyRead,
      };
}
