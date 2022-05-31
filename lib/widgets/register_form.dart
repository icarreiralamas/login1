import 'package:flutter/material.dart';

class RegisterForm extends StatefulWidget {
  RegisterForm({Key? key}) : super(key: key);

  @override
  State<RegisterForm> createState() => _RegisterFormState();
}

class _RegisterFormState extends State<RegisterForm> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Form(
      key: _formKey,
      child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.only(top: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  IconButton(
                    onPressed: () {
                      Navigator.pushNamed(context, 'home');
                    },
                    icon: const Icon(
                      Icons.arrow_back,
                      size: 40,
                    ),
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: const [
                    Text(
                      'Let\'s get started',
                      style:
                          TextStyle(fontSize: 40, fontWeight: FontWeight.w800),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      'Create an account',
                      style: TextStyle(fontSize: 20, color: Colors.grey),
                    ),
                  ],
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(30),
              child: Column(
                children: [
                  TextFormField(
                    //border: OutlineInputBorder(borderRadius: BorderRadius.circular(50)),
                    autocorrect: false,
                    keyboardType: TextInputType.name,
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
                          : 'Name must has at least 3 characters';
                    },
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  TextFormField(
                    //border: OutlineInputBorder(borderRadius: BorderRadius.circular(50)),
                    autocorrect: false,
                    keyboardType: TextInputType.emailAddress,
                    style: const TextStyle(
                      fontSize: 14,
                      color: Colors.blue,
                      fontWeight: FontWeight.w400,
                    ),
                    decoration: InputDecoration(
                        prefixIcon: const Icon(Icons.email_outlined),
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
                  const SizedBox(
                    height: 30,
                  ),
                  TextFormField(
                    //border: OutlineInputBorder(borderRadius: BorderRadius.circular(50)),
                    autocorrect: false,
                    keyboardType: TextInputType.phone,
                    style: const TextStyle(
                      fontSize: 14,
                      color: Colors.blue,
                      fontWeight: FontWeight.w400,
                    ),
                    decoration: InputDecoration(
                        prefixIcon: const Icon(Icons.phone_android_outlined),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(50)),
                        hintText: 'Phone'),
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
                  const SizedBox(
                    height: 30,
                  ),
                  TextFormField(
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
                  const SizedBox(
                    height: 30,
                  ),
                  TextFormField(
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
                        hintText: 'Confirm Password'),
                    //onChanged: ( value ) => loginForm.password = value,
                    validator: (value) {
                      return (value != null && value.length >= 6)
                          ? null
                          : 'Password must have lenght 6';
                    },
                  ),
                  Padding(
                    padding: const EdgeInsets.all(80.0),
                    child: Container(
                      width: 350,
                      height: 60,
                      child: TextButton(
                        onPressed: () {
                          //TODO: FormProvider
                        },
                        child: const Text(
                          'CREATE',
                          style: TextStyle(fontSize: 16),
                        ),
                        style: TextButton.styleFrom(
                            primary: Colors.white,
                            backgroundColor: Color.fromARGB(255, 23, 111, 184),
                            elevation: 0,
                            shape: const StadiumBorder()),
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text('Already have an account?'),
                      const SizedBox(
                        width: 8,
                      ),
                      GestureDetector(
                          onTap: () {
                            Navigator.pushNamed(context, 'home');
                          },
                          child: const Text(
                            'Login here',
                            style: TextStyle(color: Colors.blue),
                          ))
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
