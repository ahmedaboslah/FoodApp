import 'package:flutter/material.dart';
import 'package:foodapp/Features/Home/presentation/views/Widgets/LocationTextDetails.dart';
import 'package:foodapp/Features/Home/presentation/views/Widgets/containerImage.dart';
import 'package:foodapp/Features/models.dart/FoodModels.dart';



class BestFoodListItem extends StatelessWidget {
  BestFoodListItem({
    super.key,
    required this.Menu
  });
MenuModel Menu;

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
                ContainerBackGroundImage(image: Menu.image),
                Text(
                  Menu.title!,
                  style: const TextStyle(
                      fontSize: 16, fontWeight: FontWeight.w600),
                ),
                LocationTextDetails(
                  text: Menu.restaurantChain!,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
