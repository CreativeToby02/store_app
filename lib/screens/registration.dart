import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:store_app/screens/home.dart';
import 'package:store_app/screens/login.dart';
import 'package:firebase_auth/firebase_auth.dart';
import '../components/textfield.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

class RegistrationScreen extends StatefulWidget {
  static const String id = 'RegistrationScreen';

  const RegistrationScreen({super.key});

  @override
  State<RegistrationScreen> createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  final _auth = FirebaseAuth.instance;

  bool showSpinner = false;
  late String email;
  late String password;
  bool showText = true;
  void revealText() {
    setState(() {
      showText = !showText;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ModalProgressHUD(
        inAsyncCall: showSpinner,
        child: SafeArea(
          child: SingleChildScrollView(
            child: Center(
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  children: [
                    const Image(
                        height: 200,
                        width: 200,
                        image: AssetImage('images/logo.png')),
                    const Text(
                      'Sign up',
                      style: TextStyle(
                        color: Colors.black54,
                        letterSpacing: 0.5,
                        fontSize: 40,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    const MyTextField(
                      obscureText: false,
                      hintText: 'Full Name',
                    ),
                    const SizedBox(height: 20),
                    MyTextField(
                      onChanged: (value) {
                        email = value;
                      },
                      keyboardType: TextInputType.emailAddress,
                      obscureText: false,
                      hintText: 'Email address',
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    MyTextField(
                      onChanged: (value) {
                        password = value;
                      },
                      obscureText: showText,
                      hintText: 'Password',
                      suffixIcon: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: IconButton(
                            color: Colors.black54,
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
                      onTap: () async {
                        setState(() {
                          showSpinner = true;
                        });
                        try {
                          final newUser =
                              await _auth.createUserWithEmailAndPassword(
                                  email: email, password: password);
                          Navigator.pushNamed(context, HomePage.id);
                          setState(() {
                            showSpinner = false;
                          });
                        } catch (e) {
                          print(e);
                        }
                      },
                      child: Container(
                        alignment: const Alignment(0, 0),
                        height: 65,
                        width: 400,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Color(0xFFD9FB70)),
                        child: const Text(
                          'Sign up',
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
                          Navigator.pushNamed(context, LoginScreen.id);
                        });
                      },
                      child: const Text(
                        'Have an account? Log in',
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
      ),
    );
  }
}
