import 'package:flutter/material.dart';
import 'package:meals_app/screens/categories_screen.dart';
import 'package:meals_app/screens/category_meals_screen.dart';
import 'package:meals_app/screens/meal_detail_screen.dart';
import 'package:meals_app/screens/tab_bar_screen.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // theme: ThemeData(
      //   textTheme: ThemeData.light().textTheme.copyWith(
      //     //title:TextStyle(),
      //   )
      // ),
      initialRoute: '/',
      routes: {
        '/':(ctx)=>TabBarScreen(),
        CategoriesScreen.routeName:(ctx)=>CategoriesScreen(),
        CategoryMealsScreen.routName:(ctx)=>CategoryMealsScreen(),
        MealDetailScreen.routeName:(ctx)=>MealDetailScreen(),
      },
    );
  }
}
