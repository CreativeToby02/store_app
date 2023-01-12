import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  const MyTextField(
      {super.key,
      this.hintText,
      this.suffixIcon,
      required this.obscureText,
      this.keyboardType,
      this.onChanged});

  final String? hintText;
  final Widget? suffixIcon;
  final Function(String)? onChanged;
  final bool obscureText;
  final TextInputType? keyboardType;

  @override
  Widget build(BuildContext context) {
    return TextField(
      keyboardType: keyboardType,
      onChanged: onChanged,
      obscureText: obscureText,
      decoration: InputDecoration(
        filled: true,
        fillColor: Colors.white,
        focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.black),
            borderRadius: BorderRadius.circular(20)),
        enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.black),
            borderRadius: BorderRadius.circular(20)),
        hintText: hintText,
        suffixIconColor: Colors.black,
        hintStyle:
            const TextStyle(color: Colors.black26, fontWeight: FontWeight.w500),
        suffixIcon: suffixIcon,
      ),
    );
  }
}
