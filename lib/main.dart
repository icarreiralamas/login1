import 'package:flutter/material.dart';
import 'package:login_1/src/screens/login.dart';
import 'package:login_1/src/screens/register.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: 'home',
      routes: {
        'home'    : ( _ ) => LoginScreen(),
        'register': ( _ ) => RegisterScreen()
      },
    );
  }
}