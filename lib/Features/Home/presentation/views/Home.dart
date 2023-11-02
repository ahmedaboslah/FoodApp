import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:foodapp/Features/Home/presentation/views/Widgets/Appbar.dart';
import 'package:foodapp/Features/Home/presentation/views/Widgets/CustomImageOfferListView.dart';
import 'package:foodapp/Features/Home/presentation/views/Widgets/FoodListView.dart';
import 'package:foodapp/Features/Home/presentation/views/Widgets/NewsFoodText.dart';
import 'package:foodapp/Features/Home/presentation/views/Widgets/SearchField.dart';
import 'package:foodapp/core/Api/apiservice.dart';


import 'Widgets/BookingListItem.dart';

class HomePage extends StatelessWidget {
   HomePage({super.key});
   var res=Api(dio: Dio()).get();
   
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Padding(
                    padding: EdgeInsets.only(top: 34),
                    child: CustomAppBar(),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 20, left: 30, right: 30),
                    child: CustomSearchField(),
                  ),
                  CustomImageOfferList(),
                  Padding(
                    padding: const EdgeInsets.only(top: 40),
                    child: NewsFoodText(
                      mainText: 'Todays New Arivable',
                      detilesText: 'Best of the today food list update',
                    ),
                  ),
                  FoodListView(),
                  Padding(
                    padding: const EdgeInsets.only(top: 40),
                    child: NewsFoodText(
                      mainText: 'Explore Restaurant',
                      detilesText: 'Check your city Near by Restaurant',
                    ),
                  ),
                  const SizedBox(
                    height: 28,
                  ),
                ],
              ),
            ),
            SliverList.builder(
              itemCount: 6,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(vertical: 5),
                  child: BookingListItem(
                    buttomtext: 'Book',
                    borderside: false,
                  ),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
