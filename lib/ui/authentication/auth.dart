import 'dart:developer';

import 'package:authentication/authentication.dart';
import 'package:ecom/ui/home/home.dart';
import 'package:ecom/utils/navigation/navigation_helper.dart';
import 'package:flutter/cupertino.dart';

class AuthenticateUser extends StatelessWidget{
  static const String tag = 'auth';
  const AuthenticateUser({super.key});

  @override
  Widget build(BuildContext context) {
    return AuthenticationWrapper(onUserAuthenticatedCallBack: _onUserAuthenticatedCallback);
  }

  void _onUserAuthenticatedCallback(){
    log("User successfully authenticated");
    Navigator.of(navigationKey.currentContext!).pushNamedAndRemoveUntil(HomePage.tag, (route) => false);
  }
}