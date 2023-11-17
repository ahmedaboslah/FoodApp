import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:foodapp/Features/Home/presentation/manager/FoodListViewState.dart';
import 'package:foodapp/Features/models.dart/FoodModels.dart';
import 'package:foodapp/core/Api/apiservice.dart';

class FoodListViewCiubit extends Cubit<FoodListViewState> {
  FoodListViewCiubit() : super(FoodListInitial());

  Future<void> getMenus() async {
    emit(FoodListLoading());

    var menus = await Api(dio: Dio()).get();
    print(menus);
    menus.fold(
        (failure) => emit(FoodListFailure(errMessage: failure.toString())),
        (menu) => emit(FoodListSuccess(Menu: menu)));
  }
}
