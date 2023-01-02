import 'package:flutter/material.dart';

class CollectionPic extends StatelessWidget {
  const CollectionPic({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10.0),
      child: Container(
        height: 150,
        width: double.infinity,
        decoration: BoxDecoration(
          image: const DecorationImage(
              image: AssetImage('images/cloth1.jpg'), fit: BoxFit.cover),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 40),
          child: Center(
            child: Column(
              children: const [
                Text(
                  'AUTUMN COLLECTION',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.w800,
                  ),
                ),
                Text(
                  'for you',
                  style: TextStyle(
                    color: Colors.white70,
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
