import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MyAppBar extends StatelessWidget {
  final String textTitle;
  final String subTitle;
  final Function()? onTapCallBack;

  const MyAppBar(
      {super.key,
      required this.textTitle,
      this.onTapCallBack,
      required this.subTitle});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                textTitle,
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 34,
                  fontWeight: FontWeight.w400,
                ),
              ),
              Text(
                subTitle,
                style: const TextStyle(
                  color: Colors.black38,
                  fontSize: 20,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
          GestureDetector(
            onTap: onTapCallBack,
            child: Container(
              padding: const EdgeInsets.all(15),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: Colors.white,
                border: Border.all(color: Colors.black12, width: 0.5),
              ),
              child: const FaIcon(
                FontAwesomeIcons.magnifyingGlass,
                size: 25,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
