import 'package:dartz/dartz.dart';
import 'package:foodapp/Features/models.dart/FoodModels.dart';
import 'package:foodapp/Features/models.dart/ResturantModel.dart';
import 'package:foodapp/core/util/Failure.dart';

abstract class HomeRepo{
  Future<Either<Failure,List<MenuModel>>> FetchMenuModel();
  Future<Either<Failure,List<ResturantModel>>> FetchResturatModel();
}