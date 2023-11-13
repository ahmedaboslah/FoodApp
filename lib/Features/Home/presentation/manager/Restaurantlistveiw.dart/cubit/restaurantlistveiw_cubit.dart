import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';

import 'package:foodapp/Features/models.dart/RestaurantModel.dart';
import 'package:foodapp/core/Api/apiservice.dart';

import 'restaurantlistveiw_state.dart';

class RestaurantlistveiwCubit extends Cubit<Restaurantlistveiwstate> {
  RestaurantlistveiwCubit() : super(RestaurantlistveiwInitial());
  List<RestaurantModel> menus = [];
  void getMenus() async {
    emit(Restaurantlistveiwloading());
    try {
      menus = (await Api(
                  dio: Dio(),
                  baseurl:
                      'https://api.spoonacular.com/food/restaurants/search?apiKey=75d7064411ae42d5945d11dba67f6e35')
              .get())
          .cast<RestaurantModel>();
      print(menus);
      emit(RestaurantlistveiwSuccess(Menu: menus));
    } catch (e) {
      print('A7a');
      emit(RestaurantlistveiwFailure(errMessage: e.toString()));
    }
  }
}
