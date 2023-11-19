import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:equatable/equatable.dart';
import 'package:foodapp/Features/Home/presentation/repos/HomeRepoImplemntation.dart';
import 'package:foodapp/Features/models.dart/ResturantModel.dart';
import 'package:foodapp/core/Api/apiservice.dart';

part 'resturant_model_state.dart';

class ResturantModelCubit extends Cubit<ResturantModelState> {
  ResturantModelCubit({required this.homerepoimplemnt})
      : super(ResturantModelInitial());
  HomeRepoImplement homerepoimplemnt;
  Future<void> getResturant() async {
    emit(ResturantModelLoading());
    var resturant = await homerepoimplemnt.FetchResturatModel();
    
    resturant.fold(
        (failure) =>
            emit(ResturantModelFailure(errMessage: failure.toString())),
        (resturant) => emit(ResturantModelSuccess(resturantModel: resturant)));
  }
}
