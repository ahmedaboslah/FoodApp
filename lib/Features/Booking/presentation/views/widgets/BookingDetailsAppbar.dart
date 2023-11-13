import 'package:flutter/material.dart';
import 'package:foodapp/core/constant.dart';

AppBar BookingDetailsAppbar() {
  return AppBar(
    toolbarHeight: 65,
    shape: const ContinuousRectangleBorder(
        borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(32), bottomRight: Radius.circular(32))),
    backgroundColor: Primarycolor,
    centerTitle: true,
    title: const Text('Details Restaurant'),
  );
}
