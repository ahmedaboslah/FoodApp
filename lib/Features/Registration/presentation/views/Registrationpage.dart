import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:foodapp/Features/Registration/presentation/views/helper/regconst.dart';
import 'package:foodapp/Features/Registration/presentation/views/widgets/gestureButton.dart';
import 'package:foodapp/core/constant.dart';

class Registration extends StatefulWidget {
  const Registration({super.key});

  @override
  State<Registration> createState() => _RegistrationState();
}

class _RegistrationState extends State<Registration> {
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 55),
          child: Container(
            alignment: Alignment.center,
            child: Image.asset('assets/Order Success.png'),
          ),
        ),
        const Text(
          'Welcome',
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
        ),
        const Padding(
          padding: EdgeInsets.only(top: 10, bottom: 40),
          child: Text(
            'Before enjoying Foodmedia services' + ' Please register first',
            style: TextStyle(
              fontSize: 12,
              overflow: TextOverflow.fade,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 45),
          child: gestureButton(
            pageTitle1: text1,
            pageTitle2: text2,
            ButtonTitle: 'Create Account',
            index: 0,
            bgrguttoncolo: Primarycolor,
            textbuttoncolor: Colors.white,
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 45, vertical: 16),
          child: gestureButton(
            pageTitle1: text1,
            pageTitle2: text2,
            ButtonTitle: 'Login',
            index: II,
            bgrguttoncolo: Color(0xffD1FAE5),
            textbuttoncolor: Primarycolor,
          ),
        ),
      ]),
    );
  }
}
 int II=1;