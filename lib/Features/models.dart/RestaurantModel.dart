import 'package:equatable/equatable.dart';

class RestaurantModel extends Equatable {
    RestaurantModel({required this.foodPhotos
        ,
    });

   
    final List<String> foodPhotos;
   

    factory RestaurantModel.fromJson(Map<String, dynamic> json){ 
        return RestaurantModel(
           
            foodPhotos: json["food_photos"] == null ? [] : List<String>.from(json["food_photos"]!.map((x) => x)),
           
        );
    }

    Map<String, dynamic> toJson() => {
       
        "food_photos": foodPhotos.map((x) => x).toList(),
       
    };

   

   @override
  List<Object?> get props {
    return [foodPhotos];
  }
}