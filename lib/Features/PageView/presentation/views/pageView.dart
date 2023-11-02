import 'package:flutter/material.dart';
import 'package:foodapp/Features/Account/presentation/Views/AccountPage.dart';
import 'package:foodapp/Features/Booking/presentation/views/BookingPage.dart';
import 'package:foodapp/Features/Home/presentation/views/Home.dart';
import 'package:foodapp/core/constant.dart';

class PageViewShowed extends StatefulWidget {
  const PageViewShowed({super.key});

  @override
  State<PageViewShowed> createState() => _PageViewShowedState();
}

class _PageViewShowedState extends State<PageViewShowed> {
  List<Widget> pages = [
    HomePage(),
    const BookingPage(),
    const AccountPage(),
  ];
  int Selectedindex = 0;
  oniconTaped(int index) {
    setState(() {
      Selectedindex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[Selectedindex],
      bottomNavigationBar: Container(
        decoration: BoxDecoration(boxShadow: [
          BoxShadow(
              blurRadius: 30,
              offset: Offset(8, 8),
              color: Colors.grey.shade300,
              spreadRadius: 0.2)
        ]),
        child: ClipRRect(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(16), topRight: Radius.circular(16)),
          child: BottomNavigationBar(
              fixedColor: Primarycolor,
              currentIndex: Selectedindex,
              onTap: oniconTaped,
              items: const <BottomNavigationBarItem>[
                BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
                BottomNavigationBarItem(
                    icon: Icon(Icons.calendar_month), label: ''),
                BottomNavigationBarItem(icon: Icon(Icons.person), label: ''),
              ]),
        ),
      ),
    );
  }
}
