import 'package:flutter/material.dart';
import 'package:store_app/screens/registration.dart';

import '../components/messagefield.dart';
import '../components/textfield.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool showText = true;
  void revealText() {
    setState(() {
      showText = !showText;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFD9FB70),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                children: [
                  const Image(
                      height: 250,
                      width: 250,
                      image: AssetImage('images/logo.png')),
                  const Text(
                    'Log in',
                    style: TextStyle(
                      color: Colors.black54,
                      letterSpacing: 0.5,
                      fontSize: 50,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  const MyTextField(
                    obscureText: false,
                    hintText: 'Email address',
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  MyTextField(
                    obscureText: showText,
                    hintText: 'Password',
                    suffixIcon: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: IconButton(
                          color: Colors.black87,
                          iconSize: 30,
                          onPressed: revealText,
                          icon: showText == false
                              ? Icon(Icons.remove_red_eye)
                              : Icon(Icons.remove_red_eye)),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  GestureDetector(
                    onTap: null,
                    child: Container(
                      alignment: const Alignment(0, 0),
                      height: 65,
                      width: 400,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Color(0xFF2C2C2C)),
                      child: const Text(
                        'Log in',
                        style: TextStyle(
                          color: Colors.white,
                          letterSpacing: 0.5,
                          fontSize: 20,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 60,
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: ((context) =>
                                    const RegistrationScreen())));
                      });
                    },
                    child: const Text(
                      'Don\'t have an account? Sign up',
                      style: TextStyle(
                        color: Colors.black54,
                        letterSpacing: 0.5,
                        fontSize: 20,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
