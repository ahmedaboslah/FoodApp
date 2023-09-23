import 'package:flutter/material.dart';
import 'package:foodapp/Features/Booking/presentation/views/BookingPage.dart';
import 'package:foodapp/Features/Registration/presentation/views/helper/regconst.dart';

import 'package:foodapp/core/constant.dart';

import '../../../../Home/presentation/views/Widgets/bokkinglistItem.dart';

class BookingHistoryVeiwPage extends StatelessWidget {
  const BookingHistoryVeiwPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 65,
        shape: const ContinuousRectangleBorder(
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(32),
                bottomRight: Radius.circular(32))),
        backgroundColor: Primarycolor,
        centerTitle: true,
        title: const Text('Booking hstory'),
        automaticallyImplyLeading: false,
      ),
      body: CustomScrollView(slivers: [
        SliverList.builder(
            itemCount: 3,
            itemBuilder: (context, index) =>  Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                  child: SizedBox(height: 80, child: GestureDetector(onTap: () {
                     Navigator.push(context, MaterialPageRoute(builder: (context) {
                      return BookingPage();
                    },));
                  },child: BookingListItem(buttomtext: 'check',))),
                )),
        const SliverToBoxAdapter(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.add,color: Color(0xff6B7280)),
              Text(
                'Booking More',
                style: TextStyle(
                    fontWeight: FontWeight.w500, color: Color(0xff6B7280)),
              ),
            ],
          ),
        ),
      ]),
    );
  }
}
