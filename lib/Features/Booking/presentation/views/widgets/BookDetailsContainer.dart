import 'package:flutter/material.dart';
import 'package:foodapp/Features/Booking/presentation/views/widgets/BookDetailsImageText.dart';
import 'package:foodapp/Features/Booking/presentation/views/widgets/BookDetailsimage.dart';
import 'package:foodapp/Features/Home/presentation/views/Widgets/LocationTextDetails.dart';

class BookDetailsContainer extends StatelessWidget {
  const BookDetailsContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16), color: Colors.white),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const Padding(
              padding: EdgeInsets.only(bottom: 3, top: 20),
              child: Text(
                'Tava Restaurant',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
              ),
            ),
            LocationTextDetails(text: '\tkazi Deiry, Taiger Pass,Chittagong'),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 25),
              child: BookDetailsImage(),
            ),
            const Padding(
              padding: EdgeInsets.only(bottom: 15, left: 15, right: 15),
              child: BookDetailsImageText(),
            )
          ],
        ),
      ),
    );
  }
}
