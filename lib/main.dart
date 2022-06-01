import 'package:flutter/material.dart';
import 'package:meals_app/screens/categories_screen.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // theme: ThemeData(
      //   textTheme: ThemeData.light().textTheme.copyWith(
      //     //title:TextStyle(),
      //   )
      // ),
      home: CategoriesScreen(),
    );
  }
}
