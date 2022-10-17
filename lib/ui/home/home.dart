import 'package:authentication/authentication.dart';
import 'package:ecom/ui/authentication/auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget{
  static const String tag = 'home';
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('Welcome to Home Page'),
              const SizedBox(
                height: 20,
              ),
              LogOutButton(onLoggedOutCallback: (){
                Navigator.of(context).pushNamedAndRemoveUntil(AuthenticateUser.tag, (route) => false);
              })
            ]
        ),
      )
    );
  }
}