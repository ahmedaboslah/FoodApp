import 'package:flutter/material.dart';

class GoogleButton extends StatelessWidget {
  GoogleButton({super.key, required this.ButtonText});
  String ButtonText;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset('assets/ic_google.png'),
        Center(
          child: Text(
            '\t\t$ButtonText',
            style: TextStyle(
                fontSize: 14, fontWeight: FontWeight.bold, color: Colors.black),
          ),
        ),
      ],
    );
  }
}
