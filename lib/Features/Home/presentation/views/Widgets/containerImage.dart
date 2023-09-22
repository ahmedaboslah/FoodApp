import 'package:flutter/material.dart';

class ContainerBackGroundImage extends StatelessWidget {
  const ContainerBackGroundImage({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SizedBox(
      height: size.height * .2,
      child: AspectRatio(
        aspectRatio: 4.8 / 3.9,
        child: Container(
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(6),
              topRight: Radius.circular(6),
            ),
            image: DecorationImage(
                image: AssetImage('assets/image 3.png'), fit: BoxFit.cover),
          ),
        ),
      ),
    );
  }
}
