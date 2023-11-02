import 'package:flutter/material.dart';
import 'package:foodapp/core/constant.dart';

Container BookingFloatingButton() {
  return Container(
    height: 80,
    width: double.infinity,
    alignment: Alignment.center,
    decoration: const BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(16),
        topRight: Radius.circular(16),
      ),
    ),
    child: FittedBox(
      child: FloatingActionButton.extended(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        onPressed: () {},
        backgroundColor: Primarycolor,
        label: const Padding(
          padding: EdgeInsets.symmetric(horizontal: 80),
          child: Text(
            'Booking',
            style: TextStyle(
                color: Colors.white, fontSize: 16, fontWeight: FontWeight.w600),
          ),
        ),
      ),
    ),
  );
}
