import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:foodapp/Features/Home/presentation/manager/FoodListViewState.dart';
import 'package:foodapp/Features/models.dart/Models.dart';
import 'package:foodapp/core/Api/apiservice.dart';

class FoodListViewCiubit extends Cubit<FoodListViewState> {
  
  FoodListViewCiubit() : super(FoodListInitial());
  List<MenuModel> menus=[];
 void getMenus()async{
    emit(FoodListLoading());
    try{
      menus=await Api(dio: Dio()).get();
      print(menus);
      emit(FoodListSuccess(Menu: menus));

    }catch (e){
      print('A7a');
      emit(FoodListFailure(errMessage: e.toString()));
    }
  }
}