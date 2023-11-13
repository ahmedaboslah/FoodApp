import 'package:equatable/equatable.dart';

import 'package:foodapp/Features/models.dart/RestaurantModel.dart';

abstract class  Restaurantlistveiwstate extends Equatable{
List<Object?> get props => throw UnimplementedError();
}

class  Restaurantlistveiwloading extends Restaurantlistveiwstate{

  
}
class  RestaurantlistveiwInitial extends Restaurantlistveiwstate{

}
class RestaurantlistveiwSuccess extends Restaurantlistveiwstate{
  final List<RestaurantModel> Menu;
  RestaurantlistveiwSuccess({required this.Menu});
}
class RestaurantlistveiwFailure extends Restaurantlistveiwstate{
  final String errMessage;
  RestaurantlistveiwFailure({required this.errMessage});
}