import 'package:booked_webapp_v1/views/layout_template/layout_template_home.dart';
import 'package:booked_webapp_v1/views/layout_template/layout_template_main.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:booked_webapp_v1/models/user.dart' as model;

class AuthService {
  //final FirebaseAuth _firebaseAuth;
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  AuthService(FirebaseAuth instance);

  //AuthService(this._firebaseAuth);

  Stream<User?> get onAuthStateChanged => _firebaseAuth.authStateChanges();
  /*Stream<String> get onAuthStateChanged => _firebaseAuth.authStateChanges().map(
        (User? user) => user!.uid,
      );*/

  Future<void> signOut() async {
    await _firebaseAuth.signOut();
  }

  Future<String?> signIn(
      {required String email, required String password}) async {
    try {
      await _firebaseAuth.signInWithEmailAndPassword(
          email: email, password: password);
      return "Signed In";
    } on FirebaseAuthException catch (e) {
      return e.message;
    }
  }

  Future<String> getCurrentUID() async {
    return _firebaseAuth.currentUser!.uid;
  }

  Future<model.User> getUserDetails() async {
    User currentUser = _firebaseAuth.currentUser!;

    DocumentSnapshot documentSnapshot =
        await _firestore.collection('users').doc(currentUser.uid).get();

    return model.User.fromSnap(documentSnapshot);
  }

  Future<String?> signUp(
      {required String email, required String password}) async {
    try {
      await _firebaseAuth.createUserWithEmailAndPassword(
          email: email, password: password);
      return "Signed Up";
    } on FirebaseAuthException catch (e) {
      return e.message;
    }
  }
}

/*Stream<User?> get onAuthStateChanged => _firebaseAuth.authStateChanges();

  Future<void> signOut() async {
    await _firebaseAuth.signOut();
  }

  Future<String?> signIn(
      {required String email, required String password}) async {
    try {
      await _firebaseAuth.signInWithEmailAndPassword(
          email: email, password: password);
      return "Signed In";
    } on FirebaseAuthException catch (e) {
      return e.message;
    }
  }

  Future<String> getCurrentUID() async {
    return _firebaseAuth.currentUser!.uid;
  }*/