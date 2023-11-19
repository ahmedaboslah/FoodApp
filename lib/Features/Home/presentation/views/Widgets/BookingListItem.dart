import 'package:flutter/material.dart';
import 'package:foodapp/Features/Home/presentation/views/Widgets/LocationTextDetails.dart';
import 'package:foodapp/Features/models.dart/ResturantModel.dart';

import '../../../../../core/constant.dart';

class BookingListItem extends StatelessWidget {
  BookingListItem(
      {super.key, required this.buttomtext, required this.borderside,required this.resturant});
  String buttomtext;
  bool? borderside = false;
  ResturantModel resturant;
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SizedBox(
      height: size.height * .13,
      child: AspectRatio(
        aspectRatio: 5 / 6,
        child: Container(
          decoration: BoxDecoration(
              border: Border.all(
                  color: borderside == true ? Color(0xffECECEC) : Colors.white,
                  width: borderside == true ? 1 : 0),
              borderRadius: BorderRadius.circular(16),
              color: Colors.white),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                    height: size.height * .1,
                    child: AspectRatio(
                      aspectRatio: 4.1 / 3.8,
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: const DecorationImage(
                              image: AssetImage('assets/Rectangle 387.png'),
                              fit: BoxFit.fill),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 16,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                       Text(resturant.Name),
                      const SizedBox(
                        height: 6,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          LocationTextDetails(
                              text: '${resturant.Street}, ${resturant.city} ${resturant.country}'),
                          const SizedBox(
                            width: 30,
                          ),
                          Container(
                            // width: 90,
                            // height: 30,
                            decoration: BoxDecoration(
                              color: Primarycolor,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Center(
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 30, vertical: 9),
                                child: Text(
                                  buttomtext,
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ]),
          ),
        ),
      ),
    );
  }
}
