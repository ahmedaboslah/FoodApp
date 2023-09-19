import 'package:flutter/material.dart';
import 'package:foodapp/Features/Registration/presentation/views/widgets/Customtextfield.dart';
import 'package:foodapp/Features/Registration/presentation/views/widgets/createaccountbuton.dart';
import 'package:foodapp/core/constant.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 60),
          child: Text(
            'Full Name',
            style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
          ),
        ),
        Padding(
            padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 10),
            child: CustomTextfield(
              hinttext: 'Enter your full name',
              obscuretext: false,
            )),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 60),
          child: Text(
            'Email address',
            style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
          ),
        ),
        Padding(
            padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 10),
            child: CustomTextfield(
              hinttext: 'Eg email@email.com',
              obscuretext: false,
            )),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 60),
          child: Text(
            'Password',
            style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 10),
          child: CustomTextfield(
            hinttext: '**** *** ****',
            obscuretext: true,
          ),
        ),
        Padding(
          padding:
              const EdgeInsets.only(left: 80, right: 80, top: 20, bottom: 5),
          child: GestureDetector(
              onTap: () {},
              child: createaccountButton(
                  color: Primarycolor,
                  text: 'Registration',
                  txtcolor: Colors.white)),
        ),
        const Padding(
          padding: EdgeInsets.only(bottom: 5, right: 130, left: 130),
          child: Divider(
            thickness: 2,
            color: Colors.grey,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 80, right: 80, bottom: 10),
          child: GestureDetector(
              onTap: () {},
              child: Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset('assets/ic_google.png'),
                    Center(
                      child: Text(
                        '\t\tSign in with Google',
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                    ),
                  ],
                ),
                height: 50,
                decoration: BoxDecoration(
                    color:const Color.fromARGB(255, 209, 208, 208),
                    borderRadius: BorderRadius.circular(16)),
              )),
        )
      ],
    );
  }
}
