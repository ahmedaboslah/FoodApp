import 'package:flutter/material.dart';

class createaccountButton extends StatelessWidget {
   createaccountButton({
    super.key,
    required this.color,
    required this.text,
    required this.txtcolor
  });
 Color color;
 Color txtcolor;
 String text;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text(
          text,
          style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
              color:txtcolor),
        ),
      ),
      height: 50,
      decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(16)),
    );
  }
}