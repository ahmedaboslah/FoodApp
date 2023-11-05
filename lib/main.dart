import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:foodapp/Features/Home/presentation/manager/cubit/food_list_view_cubit.dart';
import 'package:foodapp/Features/Home/presentation/views/Home.dart';

import 'package:foodapp/Features/Onboarding/presentation/Views/OnBoardingPage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => FoodListViewCubit(),)
      ],
      child: MaterialApp(
        theme: ThemeData().copyWith(scaffoldBackgroundColor: Color(0xffF6F6F6)),
        debugShowCheckedModeBanner: false,
        // home: OnBoardingPage(),
        home: HomePage(),
      ),
    );
  }
}
