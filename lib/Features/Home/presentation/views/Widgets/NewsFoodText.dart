import 'package:flutter/material.dart';

class NewsFoodText extends StatelessWidget {
  NewsFoodText({super.key, required this.mainText, required this.detilesText});
  String mainText;
  String detilesText;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              mainText,
              style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 5),
              child: Text(
                detilesText,
                style: const TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                  color: Color(0xff6B7280),
                ),
              ),
            ),
          ],
        ),
        GestureDetector(
          child: const Row(
            children: [
              Text(
                'See All',
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                  color: Color(0xff6B7280),
                ),
              ),
              Icon(
                Icons.chevron_right,
                color: Color(0xff6B7280),
              )
            ],
          ),
        )
      ],
    );
  }
}
