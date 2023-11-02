import 'package:flutter/material.dart';

class CustomTextfield extends StatelessWidget {
  CustomTextfield(
      {super.key,
      required this.hinttext,
      required this.obscuretext,
      required this.onchanged,
      required this.Fieldname});
  Function(String)? onchanged;
  bool obscuretext;
  String Fieldname;
  String hinttext;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: (value) {
        if (value!.isEmpty) {
          return 'Please enter your $Fieldname';
        } else if (obscuretext == true) {
          if (value.length < 8) {
            return 'Please enter a Strong Password';
          }
        }
      },
      onChanged: onchanged,
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
