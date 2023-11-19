import 'package:equatable/equatable.dart';

class MenuModel extends Equatable {
  final String? image;
  final String? title;
  final String? restaurantChain;

  MenuModel({
    required this.image,
    required this.restaurantChain,
    required this.title,
  });
  
  

  factory MenuModel.fromJson(Map<String, dynamic> jsonData) {
    return MenuModel(
      image: jsonData['image'],
      restaurantChain: jsonData['restaurantChain'],
      title: jsonData['title'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'image': image,
      'restaurantChain': restaurantChain,
      'title': title,
    };
  }

  @override
  List<Object?> get props {
    return [image, title, restaurantChain];
  }
  @override
  String toString(){
    return '$image';
  }
}
