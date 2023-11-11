
import 'package:flutter/material.dart';

import 'package:flutter/src/widgets/framework.dart';

class CustomErrorWidget extends StatelessWidget {
  const CustomErrorWidget({super.key, required this.errMessage});
  final String errMessage;
  @override
  Widget build(BuildContext context) {
    return Text('$errMessage');
  }
}