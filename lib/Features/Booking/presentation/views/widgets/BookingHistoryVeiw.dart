import 'package:flutter/material.dart';
import 'package:foodapp/Features/Booking/presentation/views/widgets/BookMoreText.dart';
import 'package:foodapp/Features/Booking/presentation/views/widgets/CheckButton.dart';
import 'package:foodapp/core/constant.dart';

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
      body: CustomScrollView(
        slivers: [
          SliverList.builder(
            itemCount: 3,
            itemBuilder: (context, index) => const Padding(
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
              child: SizedBox(
                height: 85,
                child: CheckButton(),
              ),
            ),
          ),
          const SliverToBoxAdapter(
            child: BookMoreText(),
          ),
        ],
      ),
    );
  }
}
