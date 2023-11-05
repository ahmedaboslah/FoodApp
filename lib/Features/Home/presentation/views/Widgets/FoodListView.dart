import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:foodapp/Features/Home/presentation/manager/cubit/food_list_view_cubit.dart';
import 'package:foodapp/Features/Home/presentation/views/Widgets/FoodListItem.dart';
import 'package:foodapp/Features/models.dart/Models.dart';
import 'package:foodapp/core/Api/apiservice.dart';

class FoodListView extends StatefulWidget {
  FoodListView({super.key});

  @override
  State<FoodListView> createState() => _FoodListViewState();
}

class _FoodListViewState extends State<FoodListView> {
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
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.only(top: 16),
      child: BlocBuilder<FoodListViewCubit, FoodListViewState>(
        builder: (context, state) {
          if(state is FoodListViewSuccess){
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
          }else if(state is FoodListViewFailure){
            print(state.errMessage);
            return Text('data');
          }else{
            return CircularProgressIndicator();
          }
        },
      ),
    );
  }
}
