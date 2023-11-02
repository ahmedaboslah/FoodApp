import 'package:flutter/material.dart';
import 'package:foodapp/core/constant.dart';

class BookDetailsImageText extends StatelessWidget {
  const BookDetailsImageText({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Icon(Icons.schedule, color: Primarycolor),
                const Text(
                  'Open Today',
                  style: TextStyle(color: Color(0xff6B7280), fontSize: 12),
                ),
              ],
            ),
            const Text('10:00 AM - 12:00 PM')
          ],
        ),
        const Row(
          children: [
            Icon(
              Icons.turn_right_outlined,
              color: Colors.blue,
            ),
            Text(
              'Visit the Restaurant',
              style: TextStyle(
                color: Colors.blue,
              ),
            )
          ],
        )
      ],
    );
  }
}
