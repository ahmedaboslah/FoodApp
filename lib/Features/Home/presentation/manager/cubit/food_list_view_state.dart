part of 'food_list_view_cubit.dart';

sealed class FoodListViewState extends Equatable {
  const FoodListViewState();

  @override
  List<Object> get props => [];
}

final class FoodListViewInitial extends FoodListViewState {}
final class FoodListViewLoading extends FoodListViewState {}
final class FoodListViewSuccess extends FoodListViewState {
  List<MenuModel> Menu=[];
  FoodListViewSuccess({required this.Menu});
}
final class FoodListViewFailure extends FoodListViewState {
  String errMessage;
  FoodListViewFailure({required this.errMessage});
}
