
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:foodapp/Features/Home/presentation/manager/cubit/resturant_model_cubit.dart';
import 'package:foodapp/Features/Home/presentation/repos/HomeRepoImplemntation.dart';
import 'package:foodapp/Features/Home/presentation/views/Home.dart';
import 'Features/Home/presentation/manager/MenuCubit/FoodListViewCubit.dart';
import 'Features/Onboarding/presentation/Views/OnBoardingPage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => FoodListViewCiubit(homerepoimpl: HomeRepoImplement())..getMenus(),
        ),
        BlocProvider(
          create: (context) => ResturantModelCubit(homerepoimplemnt: HomeRepoImplement())..getResturant(),
        ),
       
      ],
      child: MaterialApp(
        theme: ThemeData().copyWith(scaffoldBackgroundColor: Color(0xffF6F6F6)),
        debugShowCheckedModeBanner: false,
        home: OnBoardingPage(),
        // home: HomePage(),
      ),
    );
  }
}
