import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:login_1/src/screens/register.dart';

class LoginForm extends StatefulWidget {
  LoginForm({Key? key}) : super(key: key);

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.only(top: 75, left: 20, right: 20),
              width: double.infinity,
              height: 260,
              decoration: const BoxDecoration(
                  image:
                      DecorationImage(image: AssetImage('assets/cover_1.png'))),
            ),
            const SizedBox(
              height: 50,
            ),
            const Text(
              'Welcome back!',
              style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.w800,
              ),
            ),
            const SizedBox(height: 30,),
            Container(
              width: 350,
              child: TextFormField(
                //border: OutlineInputBorder(borderRadius: BorderRadius.circular(50)),
                autocorrect: false,
                keyboardType: TextInputType.emailAddress,
                style: const TextStyle(
                  fontSize: 14,
                  color: Colors.blue,
                  fontWeight: FontWeight.w400,
                ),
                decoration: InputDecoration(
                    prefixIcon: const Icon(Icons.person_outline_outlined),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50)),
                    hintText: 'Email'),
                //onChanged: ( value ) => loginForm.email = value,
                validator: (value) {
                  String pattern =
                      r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
                  RegExp regExp = RegExp(pattern);

                  return regExp.hasMatch(value ?? '')
                      ? null
                      : 'Wrong mail format';
                },
              ),
            ),
            const SizedBox(height: 20,),
            Container(
              width: 350,
              child: TextFormField(
                autocorrect: false,
                obscureText: true,
                keyboardType: TextInputType.emailAddress,
                style: const TextStyle(
                  fontSize: 14,
                  color: Colors.blue,
                  fontWeight: FontWeight.w400,
                ),
                decoration: InputDecoration(
                    prefixIcon: const Icon(Icons.lock),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50)),
                    hintText: 'Password'),
                //onChanged: ( value ) => loginForm.password = value,
                validator: (value) {
                  return (value != null && value.length >= 6)
                      ? null
                      : 'Password must have lenght 6';
                },
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 200),
              child: Text(
                'Forgot password?',
                textAlign: TextAlign.right,
                style: TextStyle(),
              ),
            ),
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: SizedBox(
                width: 250,
                height: 60,
                child: TextButton(
                  onPressed: () {
                    //TODO: FormProvider
                  },
                  child: const Text('LOG IN'),
                  style: TextButton.styleFrom(
                      primary: Colors.white,
                      backgroundColor: Color.fromARGB(255, 23, 111, 184),
                      elevation: 0,
                      shape: const StadiumBorder()),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              'Or connect using',
              style: TextStyle(color: Colors.grey[400]),
            ),
            const SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 50,
                  width: 150,
                  child: TextButton.icon(
                    icon: const FaIcon(
                      FontAwesomeIcons.facebook,
                      size: 15,
                    ),
                    onPressed: () {},
                    label: const Text('Facebook'),
                    style: TextButton.styleFrom(
                      primary: Colors.white,
                      backgroundColor: Color(0xFF3b5998),
                      elevation: 0,
                    ),
                  ),
                ),
                const SizedBox(
                  width: 30,
                ),
                SizedBox(
                  height: 50,
                  width: 150,
                  child: TextButton.icon(
                    icon: const FaIcon(
                      FontAwesomeIcons.google,
                      size: 15,
                    ),
                    onPressed: () {},
                    label: const Text('Google'),
                    style: TextButton.styleFrom(
                      primary: Colors.white,
                      backgroundColor: Color(0xFFDB4437),
                      elevation: 0,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 40,
            ),
            Container(
              margin: EdgeInsets.only(bottom: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Don\'t have an account?',
                    style: TextStyle(color: Colors.black54),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, 'register');
                      },
                      child: const Text(
                        'Sign Up',
                        style: TextStyle(color: Colors.blue),
                      )),    
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

/*
class _FormField extends StatelessWidget {
  final Icon icon;
  final String name;

  const _FormField({
    Key? key,
    required this.icon,
    required this.name,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 350,
      margin: const EdgeInsets.only(top: 50),
      child: TextFormField(
        decoration: InputDecoration(
            prefixIcon: icon,
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(50)),
            hintText: name),
        style: const TextStyle(
          fontSize: 14,
          color: Colors.blue,
          fontWeight: FontWeight.w400,
        ),
        // The validator receives the text that the user has entered.
        validator: (value) {
          if (value == null || value.isEmpty) {
            return 'Email is empty';
          }
          return null;
        },
      ),
    );
  }
}
*/
