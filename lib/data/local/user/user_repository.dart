import 'package:firebase_auth/firebase_auth.dart';
import 'app_user.dart';

class UserRepository{
  AppUser? getUser() {
    User? user = FirebaseAuth.instance.currentUser;
    if(user == null) return null;
    return AppUser(user.uid, user.email);
  }
}