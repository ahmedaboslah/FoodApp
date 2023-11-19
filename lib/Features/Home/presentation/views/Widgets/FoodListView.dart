import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:foodapp/Features/Home/presentation/manager/MenuCubit/FoodListViewCubit.dart';
import 'package:foodapp/Features/Home/presentation/views/Widgets/FoodListItem.dart';

import '../../manager/MenuCubit/FoodListViewState.dart';

class FoodListView extends StatelessWidget {
  FoodListView({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.only(top: 16),
      child: BlocBuilder<FoodListViewCiubit, FoodListViewState>(
        builder: (context, state) {
          if (state is FoodListSuccess) {
            return SizedBox(
                height: size.height * .35,
                child: ListView.builder(
                  itemCount: state.Menu.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 12),
                      child: BestFoodListItem(Menu: state.Menu[index]),
                    );
                  },
                ));
          } else if (state is FoodListFailure) {
            return Center(child:  Text(state.errMessage),);
          } else {
            return Center(child: CircularProgressIndicator());
          }
        },
      ),
    );
  }
}
// List<MenuModel> MenusView = [];
  // @override
  // void initState() {
  //   // TODO: implement initState
  //   super.initState();
  //   GETMENU();
  // }
  // Future<void> GETMENU()async{
  //     MenusView=await Api(dio: Dio()).get();
  //     print(MenusView);
  //     setState(() {

  //     });
  //   }