import 'package:flutter/material.dart';
import 'package:login_1/widgets/login_form.dart';


class LoginScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: LoginForm(),
     ),
   );
  }
}