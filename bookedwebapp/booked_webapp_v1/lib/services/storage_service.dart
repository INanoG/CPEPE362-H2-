import 'dart:io';
import 'dart:typed_data';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart' as firebase_storage;
import 'package:firebase_core/firebase_core.dart' as firebase_core;

class Storage {
  final firebase_storage.FirebaseStorage storage =
      firebase_storage.FirebaseStorage.instance;

  String userID = FirebaseAuth.instance.currentUser!.uid;

  Future<void> uploadFile(
    Uint8List filePath,
    String fileName,
  ) async {
    try {
      await storage
          .ref()
          .child('user_prof_pics')
          .child('$userID/$fileName')
          .putData(filePath);
    } on firebase_core.FirebaseException catch (e) {
      print(e);
    }
  }

  Future<String> downloadURL(String imageName) async {
    String downloadURL =
        await storage.ref('user_prof_pics/$userID/$imageName').getDownloadURL();

    return downloadURL;
  }
}
