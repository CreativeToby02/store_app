import 'package:flutter/material.dart';
import 'package:store_app/components/app_bar.dart';
import 'package:store_app/screens/description.dart';
import '../components/bottom_nav.dart';
import '../models/product_list.dart';

class HomePage extends StatefulWidget {
  static const String id = 'HomePage';
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      bottomNavigationBar: const BottomBar(),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(4.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const MyAppBar(
                textTitle: 'Hello, Yusuf',
                subTitle: 'Let\'s start shopping',
              ),
              const SizedBox(
                height: 6,
              ),
              ProductList(
                onPressed: (() {
                  setState(() {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: ((context) =>
                                const ProductDescription())));
                  });
                }),
              )
            ],
          ),
        ),
      ),
    );
  }
}
