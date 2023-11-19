import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:foodapp/Features/Home/presentation/views/Home.dart';
import 'package:foodapp/Features/models.dart/FoodModels.dart';
import 'package:foodapp/Features/Home/presentation/repos/HomeRepo.dart';
import 'package:foodapp/Features/models.dart/ResturantModel.dart';
import 'package:foodapp/core/Api/apiservice.dart';
import 'package:foodapp/core/util/Failure.dart';

class HomeRepoImplement extends HomeRepo{
  @override
  Future<Either<Failure, List<MenuModel>>> FetchMenuModel() async{
   var jsonData=await Api(dio: Dio()).get(endPoint: 'menuItems/search?query=burger&number=10&apiKey=75d7064411ae42d5945d11dba67f6e35');
   List<MenuModel> menuModel=[];
  for(var item in jsonData['menuItems']){
    menuModel.add(MenuModel.fromJson(item));
  }
   if(menuModel.isNotEmpty){
    return right(menuModel);
   }else{
    return left(Failure());
   }
  }
  
  @override
  Future<Either<Failure, List<ResturantModel>>> FetchResturatModel() async{
     var jsonData=await Api(dio: Dio()).get(endPoint: 'restaurants/search?apiKey=75d7064411ae42d5945d11dba67f6e35');
   List<ResturantModel> resturantModel=[];
  for(var item in jsonData['restaurants']){
    resturantModel.add(ResturantModel.fromJson(item));
  }
   if(resturantModel.isNotEmpty){
    return right(resturantModel);
   }else{
    return left(Failure());
   }
  }

}