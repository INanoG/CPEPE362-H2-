import 'package:booked_webapp_v1/auth_service.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/widgets.dart';

class UserProvider with ChangeNotifier {
  User? _user;
  final AuthService _authMethods = AuthService(FirebaseAuth.instance);

  User get getUser => _user!;

  Future<void> refreshUser() async {
    User user = (await _authMethods.getUserDetails()) as User;
    _user = user;
    notifyListeners();
  }
}
