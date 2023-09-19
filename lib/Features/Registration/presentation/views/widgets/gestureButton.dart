import 'package:flutter/material.dart';
import 'package:foodapp/Features/Registration/presentation/views/widgets/LoginPage.dart';
import 'package:foodapp/Features/Registration/presentation/views/widgets/Registerpage.dart';
import 'package:foodapp/Features/Registration/presentation/views/widgets/createaccountbuton.dart';
import 'package:foodapp/core/constant.dart';

class gestureButton extends StatefulWidget {
  gestureButton(
      {super.key,
      required this.pageTitle1,
      required this.pageTitle2,
      required this.ButtonTitle,
      required this.bgrguttoncolo,
      required this.textbuttoncolor,
      required this.index});
  String pageTitle1;
  String pageTitle2;
  String ButtonTitle;
  Color bgrguttoncolo;
  Color textbuttoncolor;
  var index;
  @override
  State<gestureButton> createState() => _gestureButtonState();
}

class _gestureButtonState extends State<gestureButton> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        showModalBottomSheet(
          isScrollControlled: true,
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(32), topRight: Radius.circular(32)),
            ),
            context: context,
            builder: (context) => StatefulBuilder(
                  builder: (context, setState) {
                    return SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 50,horizontal: 80),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      widget.index = 0;
                                    });
                                  },
                                  child: Container(
                                    child: AnimatedDefaultTextStyle(
                                      style: TextStyle(
                                        color: widget.index == 0
                                            ? Primarycolor
                                            : Colors.black,
                                      ),
                                      duration: const Duration(milliseconds: 100),
                                      child: Text(
                                        widget.pageTitle1,
                                      ),
                                    ),
                                  ),
                                ),
                                GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      widget.index = 1;
                                      
                                    });
                                  },
                                  child: Container(
                                    child: AnimatedDefaultTextStyle(
                                      style: TextStyle(
                                        color: widget.index == 1
                                            ? Primarycolor
                                            : Colors.black,
                                      ),
                                      duration: const Duration(milliseconds: 100),
                                      child: Text(
                                        widget.pageTitle2,
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                          Container(
                            child:widget.index==0?const RegisterPage():const LoginPage() ,
                          )
                          
                        ],
                      ),
                    );
                  },
                )).then((value) => widget.index=widget.index);
      },
      child: createaccountButton(
        color: widget.bgrguttoncolo,
        text: widget.ButtonTitle,
        txtcolor: widget.textbuttoncolor,
      ),
    );
  }
}
