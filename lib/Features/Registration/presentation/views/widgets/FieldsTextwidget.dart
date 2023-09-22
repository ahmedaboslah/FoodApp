import 'package:flutter/material.dart';
import 'package:foodapp/Features/Registration/presentation/views/widgets/Customtextfield.dart';

class fieldswidget extends StatelessWidget {
   fieldswidget({super.key,required this.FieldName,required this.HintText,required this.ObsecureText});
  String FieldName;
  String HintText;
  bool ObsecureText;
  @override
  Widget build(BuildContext context) {
    return Wrap(
        children: [
           Padding(
            padding:const EdgeInsets.symmetric(horizontal: 60),
            child: Text(
              FieldName,
              style:const TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
            ),
          ),
          Padding(
              padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 10),
              child: CustomTextfield(
                hinttext: HintText,
                obscuretext: ObsecureText,
              )),
        ],
      
    );
  }
}
