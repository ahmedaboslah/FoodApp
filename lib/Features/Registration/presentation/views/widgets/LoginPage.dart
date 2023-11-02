import 'package:flutter/material.dart';
import 'package:foodapp/Features/Home/presentation/views/Home.dart';
import 'package:foodapp/Features/PageView/presentation/views/pageView.dart';
import 'package:foodapp/Features/Registration/presentation/views/helper/regfieldsListModel.dart';
import 'package:foodapp/Features/Registration/presentation/views/widgets/Customtextfield.dart';
import 'package:foodapp/Features/Registration/presentation/views/widgets/FieldsTextwidget.dart';
import 'package:foodapp/Features/Registration/presentation/views/widgets/Googlebutton.dart';
import 'package:foodapp/Features/Registration/presentation/views/widgets/createaccountbuton.dart';
import 'package:foodapp/core/constant.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});
  GlobalKey<FormState> formKey = GlobalKey();
  String? input;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Form(
          key: formKey,
          child: ListView.builder(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: LoginList.length,
            itemBuilder: (context, index) {
              return fieldswidget(
                FieldName: LoginList[index].text,
                HintText: LoginList[index].Hinttext,
                ObsecureText: LoginList[index].ObsecureText,
                onchanged: (value) {},
              );
            },
          ),
        ),
        Padding(
          padding:
              const EdgeInsets.only(left: 80, right: 80, top: 20, bottom: 5),
          child: GestureDetector(
              onTap: () {
                if (formKey.currentState!.validate()) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const PageViewShowed(),
                    ),
                  );
                }
              },
              child: createaccountButton(
                  color: Primarycolor, text: 'Login', txtcolor: Colors.white)),
        ),
        const Padding(
          padding: EdgeInsets.only(bottom: 5, right: 130, left: 130),
          child: Divider(
            thickness: 2,
            color: Color.fromARGB(255, 209, 208, 208),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 80, right: 80, bottom: 40),
          child: GestureDetector(
            onTap: () {},
            child: Container(
              child: GoogleButton(ButtonText: 'Login with Google'),
              height: 50,
              decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 211, 211, 210),
                  borderRadius: BorderRadius.circular(16)),
            ),
          ),
        ),
      ],
    );
  }
}
