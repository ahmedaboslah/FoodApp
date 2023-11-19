import 'package:dio/dio.dart';


class Api {
  final Dio dio;
Api({required this.dio});
Future<Map<String,dynamic>> get({String? endPoint})async{
 var response =await dio.get('https://api.spoonacular.com/food/$endPoint',);
 print(response.data);
//  Map<String,dynamic> Jsondata=response.data;
//  List<dynamic> Menus=Jsondata['menuItems'];
//  List<MenuModel> Menuitems=[];
//  for(var item in Menus){
//   MenuModel menu=MenuModel(image: item['image'], restaurantChain: item['restaurantChain'], title: item['title']);
//  Menuitems.add(menu);
//  }
 
  return response.data;
 
} 


}