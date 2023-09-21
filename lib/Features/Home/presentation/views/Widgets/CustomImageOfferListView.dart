import 'package:flutter/material.dart';
import 'package:foodapp/Features/Home/presentation/views/Widgets/Customimageoffer.dart';

class CustomImageOfferList extends StatelessWidget {
  const CustomImageOfferList({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SizedBox(
      height: size.height * .34,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 3,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
            child: CustomImageOffer(),
          );
        },
      ),
    );
  }
}
