import 'package:flutter/material.dart';
import 'package:foodapp/Features/Home/presentation/views/Widgets/Appbar.dart';
import 'package:foodapp/Features/Home/presentation/views/Widgets/SearchField.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: Column(
                children: [
                  const Padding(
                    padding: EdgeInsets.only(top: 34),
                    child: CustomAppBar(),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 20, left: 30, right: 30),
                    child: CustomSearchField(),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 30, right: 30, left: 30),
                    child: CustomImageOffer(),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CustomImageOffer extends StatelessWidget {
  CustomImageOffer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      height: size.height * .23,
      width: double.infinity,
      decoration: BoxDecoration(
        gradient: const LinearGradient(
            colors: [Color(0xffFF9F06), Color(0xffFFE1B4)]),
        borderRadius: BorderRadius.circular(32),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 15,
                ),
                Image.asset('assets/image 1.png'),
                const SizedBox(
                  height: 12,
                ),
                const Text(
                  'Flash Offer',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w700),
                ),
                const SizedBox(
                  height: 5,
                ),
                const Text(
                  'We are here with the best\ndeserts intown.',
                  style: TextStyle(
                      fontSize: 11,
                      fontWeight: FontWeight.w500,
                      color: Colors.white),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
                const SizedBox(
                  height: 8,
                ),
                const Row(
                  children: [
                    Text(
                      'Order\t\t',
                      style: TextStyle(
                          fontSize: 11,
                          fontWeight: FontWeight.w700,
                          color: Colors.white),
                    ),
                    Icon(
                      Icons.chevron_right,
                      color: Colors.white,
                    )
                  ],
                )
              ],
            ),
          ),
          Image.asset('assets/set-homemade-delicious-burgers-(2) 1.png')
        ],
      ),
    );
  }
}
