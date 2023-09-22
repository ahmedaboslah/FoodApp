import 'package:flutter/material.dart';
import 'package:foodapp/Features/Home/presentation/views/Widgets/FoodListItem.dart';

class FoodListView extends StatelessWidget {
  const FoodListView({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.only(top: 16),
      child: SizedBox(
        height: size.height * .35,
        child: ListView.builder(
          itemCount: 8,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return const Padding(
              padding: EdgeInsets.symmetric(horizontal: 12),
              child: BestFoodListItem(),
            );
          },
        ),
      ),
    );
  }
}
