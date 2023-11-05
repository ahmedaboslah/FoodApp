import 'package:equatable/equatable.dart';

class MenuModel extends Equatable {
  final String image;
  final String title;
  final String restaurantChain;

  MenuModel({
    required this.image,
    required this.restaurantChain,
    required this.title,
  });
  
  @override
  // TODO: implement props
  List<Object?> get props => throw UnimplementedError();

  // factory MenuModel.fromJson(Map<String, dynamic> jsonData) {
  //   return MenuModel(
  //     image: jsonData['image'] as String,
  //     restaurantChain: jsonData['restaurantChain'].toString(),
  //     title: jsonData['title'].toString(),
  //   );
  // }

  // Map<String, dynamic> toJson() {
  //   return {
  //     'image': image,
  //     'restaurantChain': restaurantChain,
  //     'title': title,
  //   };
  // }

  // @override
  // List<Object?> get props {
  //   return [image, title, restaurantChain];
  // }
}
