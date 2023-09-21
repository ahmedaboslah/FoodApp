import 'package:flutter/material.dart';
import 'package:foodapp/Features/Home/presentation/views/Widgets/Appbar.dart';
import 'package:foodapp/Features/Home/presentation/views/Widgets/CustomImageOfferListView.dart';
import 'package:foodapp/Features/Home/presentation/views/Widgets/Customimageoffer.dart';
import 'package:foodapp/Features/Home/presentation/views/Widgets/SearchField.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {

    return const Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                   Padding(
                    padding: EdgeInsets.only(top: 34),
                    child: CustomAppBar(),
                  ),
                   Padding(
                    padding: EdgeInsets.only(top: 20, left: 30, right: 30),
                    child: CustomSearchField(),
                  ),
                  CustomImageOfferList(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

