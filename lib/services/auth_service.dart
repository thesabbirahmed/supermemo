import 'package:firebase_auth/firebase_auth.dart';

class AuthService {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  Future<void> loginWithPhone(String phone) async {
    // Firebase phone login logic
  }
}
