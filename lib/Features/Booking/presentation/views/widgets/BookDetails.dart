import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:foodapp/Features/Booking/presentation/views/widgets/BookDetailsContainer.dart';
import 'package:foodapp/Features/Booking/presentation/views/widgets/BookingDetailsAppbar.dart';
import 'package:foodapp/Features/Booking/presentation/views/widgets/BookingFloatingButton.dart';
import 'package:foodapp/Features/Home/presentation/manager/cubit/resturant_model_cubit.dart';
import 'package:foodapp/Features/Home/presentation/views/Widgets/BookingListItem.dart';
import 'package:foodapp/Features/Home/presentation/views/Widgets/NewsFoodText.dart';
import 'package:foodapp/Features/models.dart/ResturantModel.dart';
import 'package:foodapp/core/constant.dart';

class BookDetails extends StatelessWidget {
  const BookDetails({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: BookingFloatingButton(),
      appBar: BookingDetailsAppbar(),
      body: CustomScrollView(slivers: [
        const SliverToBoxAdapter(
          child: Padding(
              padding: EdgeInsets.symmetric(vertical: 10),
              child: BookDetailsContainer()),
        ),
        SliverFillRemaining(
          child: Container(
            color: Colors.white,
            child: Column(
              children: [
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                  child: NewsFoodText(
                    mainText: 'List other restaurant',
                    detilesText: 'check the menu at this restaurant',
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child:
                        BlocBuilder<ResturantModelCubit, ResturantModelState>(
                      builder: (context, state) {
                        if (state is ResturantModelSuccess) {
                          return ListView.builder(
                            physics: NeverScrollableScrollPhysics(),
                            itemCount: 5,
                            itemBuilder: (context, index) {
                              return Padding(
                                padding: const EdgeInsets.only(bottom: 5),
                                child: BookingListItem(
                                  buttomtext: 'Check',
                                  borderside: true,
                                  resturant: state.resturantModel[index],
                                ),
                              );
                            },
                          );
                        } else {
                          return Center(
                            child: CircularProgressIndicator(),
                          );
                        }
                      },
                    ),
                  ),
                )
              ],
            ),
          ),
        )
      ]),
    );
  }
}
