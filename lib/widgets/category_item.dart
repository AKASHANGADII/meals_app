import 'dart:js';

import 'package:flutter/material.dart';
import 'package:meals_app/screens/category_meals_screen.dart';

class CategoryItem extends StatelessWidget {
  Color colour;
  String title;
  CategoryItem({required this.title,required this.colour});
  void selectCategory(BuildContext ctx){
    Navigator.of(ctx).push(MaterialPageRoute(builder: (_)=>CategoryMealsScreen()),);
  }
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ()=>selectCategory(context),
      splashColor: Theme.of(context).appBarTheme.backgroundColor,
      borderRadius: BorderRadius.circular(8),
      child: Container(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Text(title,style: TextStyle(
            fontFamily: 'Montserrat',
           fontSize: 22,
           // fontWeight: FontWeight.bold
          ),),
        ),
        decoration: BoxDecoration(
          color: colour,
          borderRadius: BorderRadius.circular(8.0),
        ),
      ),
    );
  }
}
