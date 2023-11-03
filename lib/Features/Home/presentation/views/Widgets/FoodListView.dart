import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:foodapp/Features/Home/presentation/views/Widgets/FoodListItem.dart';
import 'package:foodapp/Features/models.dart/Models.dart';
import 'package:foodapp/core/Api/apiservice.dart';

class FoodListView extends StatefulWidget {
  FoodListView({super.key});

  @override
  State<FoodListView> createState() => _FoodListViewState();
}

class _FoodListViewState extends State<FoodListView> {
  List<MenuModel> MenusView = [];

  @override
  void initState() {
    super.initState();
    GETMENU();
  }

  Future<void> GETMENU() async {
    try {
      var response = await ApiService(Dio()).get();

      for (var item in response['menuItems']) {
        MenusView.add(MenuModel.fromJson(item));
      }
      setState(() {});
    } catch (error) {
      // Handle the error, e.g., show a message to the user or log the error.
      print('Error: $error');
    }
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.only(top: 16),
      child: SizedBox(
        height: size.height * .35,
        child: ListView.builder(
          itemCount: MenusView.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: BestFoodListItem(Menu: MenusView[index]),
            );
          },
        ),
      ),
    );
  }
}
