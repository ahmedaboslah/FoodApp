import 'package:flutter/material.dart';
import 'package:foodapp/core/constant.dart';

class LocationTextDetails extends StatelessWidget {
  LocationTextDetails({super.key, required this.text, this.iconsize});
  int? iconsize;
  String text;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Icon(
          Icons.location_on,
          color: Primarycolor,
          size: 15,
        ),
        Flexible(
          child: Text(
            text,
            overflow: TextOverflow.ellipsis,
            softWrap: true,
            maxLines: 1,
            style: const TextStyle(
              fontSize: 13,
              fontWeight: FontWeight.w500,
              color: Color(0xff6B7280),
            ),
          ),
        ),
      ],
    );
  }
}
