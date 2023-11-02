
import 'package:dio/dio.dart';
import 'package:foodapp/Features/models.dart/Models.dart';

class Api {
  final Dio dio;
Api({required this.dio});
Future<List<MenuModel>> get()async{
 var response =await dio.get('https://api.spoonacular.com/food/menuItems/search?query=meal&number=10&apiKey=75d7064411ae42d5945d11dba67f6e35',);
 print(response.data);
 Map<String,dynamic> data=response.data;
 List<dynamic> Menus=data['menuItems'];
 List<MenuModel> Menuitems=[];
 for(var item in Menus){
  MenuModel menu=MenuModel(image: item['image'], restaurantChain: item['restaurantChain'], title: item['title']);
 Menuitems.add(menu);
 }
 print(Menuitems);
 return Menuitems;
} 


}