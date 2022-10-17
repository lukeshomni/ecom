import 'dart:async';

import 'package:ecom/data/local/user/user_repository.dart';
import 'package:firebase_auth/firebase_auth.dart';

import '../../local/user/app_user.dart';

enum AuthenticationStatus { unAuthenticated, authenticated, guest, unknown }

class AuthenticationRepository {
  final _controller = StreamController<AuthenticationStatus>();

  Stream<AuthenticationStatus> get status async* {
    AppUser? appUser = UserRepository().getUser();
    if (appUser == null) yield AuthenticationStatus.unAuthenticated;
    if (appUser!.email == null) yield AuthenticationStatus.guest;
    yield AuthenticationStatus.authenticated;
    yield* _controller.stream;
  }

  Future<bool> logIn(String email, String password) async {
    UserCredential userCredential = await FirebaseAuth.instance.signInWithEmailAndPassword(email: email, password: password);
    return userCredential.user != null;
  }

  void logOut() {
    FirebaseAuth.instance.signOut();
  }

  void dispose() {
    _controller.close();
  }
}
