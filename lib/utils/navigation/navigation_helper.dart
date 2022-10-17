
import 'package:ecom/ui/authentication/auth.dart';
import 'package:ecom/ui/home/home.dart';
import 'package:flutter/material.dart';

GlobalKey<NavigatorState> navigationKey = GlobalKey<NavigatorState>();

Route? getApplicationRoute(RouteSettings settings) {
  switch (settings.name){

    case AuthenticateUser.tag:
      return MaterialPageRoute(builder: (context) => const AuthenticateUser());

    case HomePage.tag:
      return MaterialPageRoute(builder: (context) => const HomePage());
    default:
      return null;
  }
}