import 'package:ecom/ui/authentication/auth.dart';
import 'package:ecom/utils/navigation/navigation_helper.dart';
import 'package:flutter/material.dart';
import 'package:authentication/authentication.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initializeAuthentication();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      navigatorKey: navigationKey,
      initialRoute: AuthenticateUser.tag,
      onGenerateRoute: getApplicationRoute,
    );
  }
}