import 'package:flutter/material.dart';

class AccountProfileDetails extends StatelessWidget {
  const AccountProfileDetails({super.key});

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
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Row(children: [
              const CircleAvatar(
                backgroundColor: Colors.white,
                radius: 20,
                backgroundImage: AssetImage(
                  'assets/Ellipse 4.png',
                ),
              ),
              Expanded(
                child: ListTile(
                  title: const Text(
                    'Sadek Hossen',
                    style: TextStyle(fontWeight: FontWeight.w600),
                  ),
                  subtitle: const Text(
                    'sadekbranding@gmail.com',
                    style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                        color: Colors.grey),
                  ),
                  trailing: IconButton(
                      onPressed: () {}, icon: const Icon(Icons.notifications)),
                ),
              ),
            ]),
          ),
        ),
      ),
    );
  }
}
