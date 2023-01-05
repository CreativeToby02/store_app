import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:store_app/screens/description.dart';
import 'package:store_app/screens/home.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({super.key});

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  late int currentIndex = 0;
  void getCurrentIndex(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  // List<Widget> screens = const [
  //   HomePage(),
  //   ProductDescription(),
  //   HomePage(),
  //   ProductDescription(),
  // ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      width: MediaQuery.of(context).size.width,
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(25), topRight: Radius.circular(25)),
      ),
      child: BottomNavigationBar(
          elevation: 0,
          onTap: getCurrentIndex,
          currentIndex: currentIndex,
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.black54,
          backgroundColor: Colors.transparent,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          type: BottomNavigationBarType.fixed,
          items: const [
            BottomNavigationBarItem(
                icon: FaIcon(
                  FontAwesomeIcons.house,
                  // color: Colors.black,
                ),
                label: 'home'),
            BottomNavigationBarItem(
                icon: Icon(
                  FontAwesomeIcons.solidHeart,
                  // color: Colors.black,
                ),
                label: 'home'),
            BottomNavigationBarItem(
                icon: FaIcon(
                  FontAwesomeIcons.plus,
                  // color: Colors.black,
                ),
                label: 'home'),
            BottomNavigationBarItem(
                icon: Icon(Icons.messenger_rounded), label: 'home'),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.person_rounded,
                  // color: Colors.black,
                ),
                label: 'home'),
          ]),
    );
  }
}





// BottomNavigationBarItem(
//                 icon: FaIcon(
//                   FontAwesomeIcons.house,
//                   // color: Colors.black,
//                 ),
//                 label: 'home'),
//             BottomNavigationBarItem(
//                 icon: FaIcon(
//                   FontAwesomeIcons.solidHeart,
//                   // color: Colors.black,
//                 ),
//                 label: 'home'),
//             BottomNavigationBarItem(
//                 icon: FaIcon(
//                   FontAwesomeIcons.plus,
//                   // color: Colors.black,
//                 ),
//                 label: 'home'),
//             BottomNavigationBarItem(
//                 icon: FaIcon(
//                   FontAwesomeIcons.message,
//                   // color: Colors.black,
//                 ),
//                 label: 'home'),
//             BottomNavigationBarItem(
//                 icon: Icon(
//                   Icons.person_rounded,
//                   // color: Colors.black,
//                 ),
//                 label: 'home'),
//           ]),