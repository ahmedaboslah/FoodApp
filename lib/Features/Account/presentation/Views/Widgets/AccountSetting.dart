import 'package:flutter/material.dart';

class AcountSetting extends StatelessWidget {
  const AcountSetting({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SizedBox(
      height: size.height * .13,
      child: AspectRatio(
        aspectRatio: 10 / 2,
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12), color: Colors.white),
          child: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 24),
            child: Row(
              children: [
                Icon(Icons.account_circle),
                Expanded(
                  child: ListTile(
                    title: Text('Account setting'),
                    trailing: Icon(Icons.edit_square),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
