import 'package:flutter/material.dart';
import 'package:foodapp/Features/Account/presentation/Views/Widgets/AccountListTile.dart';

class AccountUsage extends StatelessWidget {
  const AccountUsage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: SizedBox(
        height: 250,
        child: AspectRatio(
          aspectRatio: 6.73 / 4,
          child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12), color: Colors.white),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 24, right: 24, top: 10),
                  child: AccountListTile(
                    icon: Icon(Icons.translate),
                    text: "Language",
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 24, right: 24, top: 10),
                  child: AccountListTile(
                    icon: Icon(Icons.chat),
                    text: "Feedback",
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 24, right: 24, top: 10),
                  child: AccountListTile(
                    icon: Icon(Icons.star),
                    text: "Rate us",
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 24, right: 24, top: 10),
                  child: AccountListTile(
                    icon: Icon(Icons.add_circle),
                    text: "New Vresion",
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
