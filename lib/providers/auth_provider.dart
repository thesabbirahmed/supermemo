import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AuthProvider with ChangeNotifier {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  User? _user;

  User? get user => _user;

  void loginWithPhone(String phone) {
    // Logic for login
  }

  void logout() {
    _auth.signOut();
    _user = null;
    notifyListeners();
  }
}
