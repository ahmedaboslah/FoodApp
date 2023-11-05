import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:equatable/equatable.dart';
import 'package:foodapp/Features/models.dart/Models.dart';
import 'package:foodapp/core/Api/apiservice.dart';

part 'food_list_view_state.dart';

class FoodListViewCubit extends Cubit<FoodListViewState> {
  FoodListViewCubit() : super(FoodListViewInitial());
  List<MenuModel> Menu=[];
  Future<void> GetMenu()async{
    emit(FoodListViewLoading());
    try{
      Menu=await Api(dio: Dio()).get();
      print(Menu);
      emit(FoodListViewSuccess(Menu: Menu));
    }catch (e){
       emit(FoodListViewFailure(errMessage: e.toString()));
    }
  }
}
