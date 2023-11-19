import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:foodapp/Features/Home/presentation/manager/MenuCubit/FoodListViewState.dart';

import 'package:foodapp/Features/Home/presentation/repos/HomeRepo.dart';
import 'package:foodapp/Features/Home/presentation/repos/HomeRepoImplemntation.dart';
import 'package:foodapp/Features/models.dart/FoodModels.dart';
import 'package:foodapp/core/Api/apiservice.dart';

class FoodListViewCiubit extends Cubit<FoodListViewState> {
  FoodListViewCiubit({required this.homerepoimpl}) : super(FoodListInitial());
HomeRepoImplement homerepoimpl; 
  Future<void> getMenus() async {
    emit(FoodListLoading());

    var menus = await homerepoimpl.FetchMenuModel();
    // print(menus);
    menus.fold(
        (failure) => emit(FoodListFailure(errMessage: failure.toString())),
        (menu) => emit(FoodListSuccess(Menu: menu)));
  }
}
