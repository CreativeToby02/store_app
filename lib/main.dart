import 'package:flutter/material.dart';
import 'package:store_app/screens/chat.dart';
import 'package:store_app/screens/description.dart';
import 'package:store_app/screens/login.dart';
import 'package:store_app/screens/registration.dart';
import 'screens/home.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const StoreApp());
}

class StoreApp extends StatelessWidget {
  const StoreApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // useInheritedMediaQuery: true,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.white54,
      ),
      initialRoute: RegistrationScreen.id,
      routes: {
        RegistrationScreen.id: (context) => const RegistrationScreen(),
        LoginScreen.id: (context) => const LoginScreen(),
        HomePage.id: (context) => const HomePage(),
        ChatScreen.id: (context) => const ChatScreen(),
        ProductDescription.id: (context) => const ProductDescription(),
      },
    );
  }
}
