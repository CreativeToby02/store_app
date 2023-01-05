import 'package:flutter/material.dart';
import 'package:store_app/screens/chat.dart';
import 'package:store_app/screens/description.dart';
import 'screens/home.dart';

void main() {
  runApp(const StoreApp());
}

class StoreApp extends StatelessWidget {
  const StoreApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.white54,
      ),
      // routes: {
      //   '/first':(context) => const HomePage(),
      //   '/second':(context) => const ProductDescription(),
      //   '/third':(context) => const ChatScreen(),
      // },
      home: const HomePage(),
    );
  }
}
