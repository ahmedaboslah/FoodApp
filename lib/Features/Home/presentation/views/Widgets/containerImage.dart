import 'package:cached_network_image/cached_network_image.dart';
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
          child: CachedNetworkImage(imageUrl: image! ?? 'https://cdn.pixabay.com/photo/2018/01/04/15/51/404-error-3060993_640.png')),
    );
  }
}
