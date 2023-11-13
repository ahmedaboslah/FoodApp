import 'package:flutter/material.dart';

class ContainerBackGroundImage extends StatelessWidget {
  ContainerBackGroundImage({super.key, this.image});
  String? image;
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SizedBox(
      height: size.height * .18,
      child: AspectRatio(
          aspectRatio: 4.6 / 3.9,
          child: Container(
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(6),
                topRight: Radius.circular(6),
              ),
              image: DecorationImage(
                image: NetworkImage(image!),
                fit: BoxFit.cover,
              ),
            ),
          )),
    );
  }
}
