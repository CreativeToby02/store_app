import 'package:flutter/material.dart';

class MyMessageField extends StatelessWidget {
  const MyMessageField({Key? key, this.onPressed}) : super(key: key);

  final Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        filled: true,
        fillColor: Colors.white,
        focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.white),
            borderRadius: BorderRadius.circular(20)),
        enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.white),
            borderRadius: BorderRadius.circular(20)),
        hintText: 'Write a message...',
        suffixIconColor: Colors.black,
        hintStyle:
            const TextStyle(color: Colors.black26, fontWeight: FontWeight.w500),
        suffixIcon: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(18),
              color: const Color(0xFFD9FB70),
            ),
            child: IconButton(
                color: Colors.black87,
                iconSize: 30,
                onPressed: onPressed,
                icon: Icon(Icons.send_rounded)),
          ),
        ),
      ),
    );
  }
}
