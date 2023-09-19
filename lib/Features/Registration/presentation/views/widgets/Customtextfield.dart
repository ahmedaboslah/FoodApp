import 'package:flutter/material.dart';

class CustomTextfield extends StatelessWidget {
   CustomTextfield({
    super.key,
    required this.hinttext,
    required this.obscuretext
  });
  bool obscuretext;
  String hinttext;
  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: obscuretext,
      decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(
              16,
            ),
          ),
          hintText: hinttext),
    );
  }
}