import 'package:flutter/material.dart';
import 'package:foodapp/core/constant.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(onPressed: (){}, icon:const Icon(Icons.sort),),
               Row(
                children: [
                 Icon(Icons.location_on,color: Primarycolor,),
                 const Text('Agrabad 435, Chittagong')
                ],
              ),
              const CircleAvatar(
                backgroundColor: Colors.white,
                radius: 18,
                backgroundImage: AssetImage('assets/Ellipse 4.png'),
              )
            ],
          );
  }
}