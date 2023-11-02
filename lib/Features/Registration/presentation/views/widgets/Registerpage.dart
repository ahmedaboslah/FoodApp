import 'package:flutter/material.dart';
import 'package:foodapp/Features/Home/presentation/views/Home.dart';
import 'package:foodapp/Features/PageView/presentation/views/pageView.dart';
import 'package:foodapp/Features/Registration/presentation/views/helper/regfieldsListModel.dart';
import 'package:foodapp/Features/Registration/presentation/views/widgets/Customtextfield.dart';
import 'package:foodapp/Features/Registration/presentation/views/widgets/FieldsTextwidget.dart';
import 'package:foodapp/Features/Registration/presentation/views/widgets/Googlebutton.dart';
import 'package:foodapp/Features/Registration/presentation/views/widgets/createaccountbuton.dart';
import 'package:foodapp/core/constant.dart';

class RegisterPage extends StatelessWidget {
  RegisterPage({super.key});
  GlobalKey<FormState> formKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Form(
          key: formKey,
          child: ListView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemCount: SignUpList.length,
            itemBuilder: (context, index) {
              return fieldswidget(
                FieldName: SignUpList[index].text,
                HintText: SignUpList[index].Hinttext,
                ObsecureText: SignUpList[index].ObsecureText,
                onchanged: (String) {},
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
                height: 50,
                decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 209, 208, 208),
                    borderRadius: BorderRadius.circular(16)),
                child: GoogleButton(
                  ButtonText: 'Sign up With Google',
                ),
              )),
        )
      ],
    );
  }
}
