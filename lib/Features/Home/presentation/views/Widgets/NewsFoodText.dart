import 'package:flutter/material.dart';

class NewsFoodText extends StatelessWidget {
  const NewsFoodText({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Today New Arivable',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
            ),
            Padding(
              padding: EdgeInsets.only(top: 5),
              child: Text(
                'Best of the today  food list update',
                style: TextStyle(
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
