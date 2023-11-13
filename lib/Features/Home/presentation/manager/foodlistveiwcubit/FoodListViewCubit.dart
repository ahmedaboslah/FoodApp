import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:foodapp/Features/Home/presentation/manager/foodlistveiwcubit/FoodListViewState.dart';
import 'package:foodapp/Features/models.dart/MenuModels.dart';
import 'package:foodapp/core/Api/apiservice.dart';

class FoodListViewCiubit extends Cubit<FoodListViewState> {
  
  FoodListViewCiubit() : super(FoodListInitial());
  List<MenuModel> menus=[];
 void getMenus()async{
    emit(FoodListLoading());
    try{
      menus=await Api(dio: Dio(), baseurl:'https://api.spoonacular.com/food/menuItems/search?query=pizza&number=10&apiKey=75d7064411ae42d5945d11dba67f6e35').get();
      print(menus);
      emit(FoodListSuccess(Menu: menus));

    }catch (e){
      print('A7a');
      emit(FoodListFailure(errMessage: e.toString()));
    }
  }
}