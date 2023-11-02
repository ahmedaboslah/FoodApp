import 'package:flutter/material.dart';

class AccountListTile extends StatelessWidget {
  AccountListTile({super.key, required this.icon, required this.text});
  String text;
  Icon icon;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: icon,
      title: Text(
        text,
        style: TextStyle(fontWeight: FontWeight.w600),
      ),
      trailing:
          IconButton(onPressed: () {}, icon: const Icon(Icons.arrow_forward)),
    );
  }
}
