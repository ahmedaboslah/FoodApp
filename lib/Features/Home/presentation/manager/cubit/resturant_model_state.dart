part of 'resturant_model_cubit.dart';

sealed class ResturantModelState extends Equatable {
  const ResturantModelState();

  @override
  List<Object> get props => [];
}

final class ResturantModelInitial extends ResturantModelState {}
final class ResturantModelSuccess extends ResturantModelState {
  List<ResturantModel> resturantModel;
  ResturantModelSuccess({required this.resturantModel});
}
final class ResturantModelFailure extends ResturantModelState {
  String errMessage;
  ResturantModelFailure({required this.errMessage});
}
final class ResturantModelLoading extends ResturantModelState {}
