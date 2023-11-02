import 'package:flutter/material.dart';

class BookMoreText extends StatelessWidget {
  const BookMoreText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          Icons.add,
          color: Color(
            0xff6B7280,
          ),
        ),
        Text(
          'Booking More',
          style: TextStyle(
            fontWeight: FontWeight.w500,
            color: Color(
              0xff6B7280,
            ),
          ),
        ),
      ],
    );
  }
}
