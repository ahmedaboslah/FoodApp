import 'package:flutter/material.dart';
import 'package:foodapp/Features/Booking/presentation/views/BookingPage.dart';
import 'package:foodapp/Features/Booking/presentation/views/widgets/BookDetails.dart';
import 'package:foodapp/Features/Home/presentation/views/Widgets/BookingListItem.dart';

class CheckButton extends StatelessWidget {
  const CheckButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return BookDetails();
            },
          ),
        );
      },
      child: BookingListItem(
        buttomtext: 'check',
        borderside: false,
      ),
    );
  }
}
