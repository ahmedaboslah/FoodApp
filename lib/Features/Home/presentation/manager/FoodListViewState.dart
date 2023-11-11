import 'package:equatable/equatable.dart';
import 'package:foodapp/Features/models.dart/Models.dart';

abstract class FoodListViewState extends Equatable{
List<Object?> get props => throw UnimplementedError();
}

class FoodListLoading extends FoodListViewState{

  
}
class FoodListInitial extends FoodListViewState{

}
class FoodListSuccess extends FoodListViewState{
  final List<MenuModel> Menu;
  FoodListSuccess({required this.Menu});
}
class FoodListFailure extends FoodListViewState{
  final String errMessage;
  FoodListFailure({required this.errMessage});
}