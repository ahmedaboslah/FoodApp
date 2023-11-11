// import 'package:dio/dio.dart';

// class ApiService {
//   final Dio dio;

//   ApiService(this.dio);

//   Future<Map<String, dynamic>> get() async {
//     try {
//       var response = await dio.get(
//           'https://api.spoonacular.com/food/menuItems/search?query=burger&number=10&apiKey=75d7064411ae42d5945d11dba67f6e35');

//       // Check if the response status code is OK (200) before accessing data
//       if (response.statusCode == 200) {
//         return response.data;
//       } else {
//         // Handle non-OK response codes here, e.g., return an error message or throw an exception
//         throw Exception('Failed to load data');
//       }
//     } catch (e) {
//       // Handle any network or other errors here
//       print('Error: $e');
//       rethrow; // Rethrow the exception for higher-level error handling
//     }
//   }
// }

import 'package:dio/dio.dart';
import 'package:foodapp/Features/models.dart/Models.dart';

class Api {
  final Dio dio;
Api({required this.dio});
Future<List<MenuModel>> get()async{
 var response =await dio.get('https://api.spoonacular.com/food/menuItems/search?query=pizza&number=10&apiKey=75d7064411ae42d5945d11dba67f6e35',);
 print(response.data);
 Map<String,dynamic> Jsondata=response.data;
 List<dynamic> Menus=Jsondata['menuItems'];
 List<MenuModel> Menuitems=[];
 for(var item in Menus){
  MenuModel menu=MenuModel(image: item['image'], restaurantChain: item['restaurantChain'], title: item['title']);
 Menuitems.add(menu);
 }
 return Menuitems;
} 


}