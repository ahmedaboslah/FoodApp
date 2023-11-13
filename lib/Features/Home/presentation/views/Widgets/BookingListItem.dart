import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:foodapp/Features/Home/presentation/manager/Restaurantlistveiw.dart/cubit/restaurantlistveiw_cubit.dart';
import 'package:foodapp/Features/Home/presentation/manager/Restaurantlistveiw.dart/cubit/restaurantlistveiw_state.dart';
import 'package:foodapp/Features/Home/presentation/views/Widgets/LocationTextDetails.dart';
import 'package:foodapp/Features/models.dart/RestaurantModel.dart';

import '../../../../../core/constant.dart';

class BookingListItem extends StatelessWidget {
  BookingListItem(
      {super.key,
      required this.buttomtext,
      required this.borderside,
      });
  String buttomtext;
  RestaurantModel? Menu;
  bool? borderside = false;
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SizedBox(
      height: size.height * .13,
      child: BlocBuilder<RestaurantlistveiwCubit, Restaurantlistveiwstate>(
        builder: (context, state) {
          if (state is RestaurantlistveiwSuccess) {
            return AspectRatio(
              aspectRatio: 5 / 6,
              child: Container(
                decoration: BoxDecoration(
                    border: Border.all(
                        color: borderside == true
                            ? Color(0xffECECEC)
                            : Colors.white,
                        width: borderside == true ? 1 : 0),
                    borderRadius: BorderRadius.circular(16),
                    color: Colors.white),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
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
                                image: DecorationImage(
                                    image:  AssetImage(Menu!.foodPhotos as String ) ,
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
                            const Text('Ambrosia Hotel & Restaurant'),
                            const SizedBox(
                              height: 6,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                LocationTextDetails(
                                    text: 'kazi Deiry, Taiger Pass Chittagong'),
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
            );
          } else if (state is RestaurantlistveiwFailure) {
               return Center(child:  Text(state.errMessage),);
          } else {
            return CircularProgressIndicator();
          }
        },
      ),
    );
  }
}
