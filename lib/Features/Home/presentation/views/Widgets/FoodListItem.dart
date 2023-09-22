import 'package:flutter/material.dart';
import 'package:foodapp/Features/Home/presentation/views/Widgets/containerImage.dart';
import 'package:foodapp/core/constant.dart';

class BestFoodListItem extends StatelessWidget {
  const BestFoodListItem({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SizedBox(
      height: size.height * .34,
      child: AspectRatio(
        aspectRatio: 3.6 / 4.5,
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color: Colors.white,
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const ContainerBackGroundImage(),
                const Text(
                  'Chicken Biryani',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Icon(
                      Icons.location_on,
                      color: Primarycolor,
                      size: 15,
                    ),
                    const Text(
                      'Ambrosia Hotel &\nRestaurant',
                      overflow: TextOverflow.fade,
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                        color: Color(0xff6B7280),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
