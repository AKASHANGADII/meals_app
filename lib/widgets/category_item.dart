import 'dart:js';

import 'package:flutter/material.dart';
import 'package:meals_app/screens/category_meals_screen.dart';

class CategoryItem extends StatelessWidget {
  Color colour;
  String title;
  String id;
  CategoryItem({required this.title,required this.colour,required this.id});
  void selectCategory(BuildContext ctx){
    Navigator.of(ctx).pushNamed('/category-meals',arguments: {'id':id,'title':title});
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
           color: Colors.white,
           // fontWeight: FontWeight.bold
          ),),
        ),
        decoration: BoxDecoration(
          color: colour,
          borderRadius: BorderRadius.circular(16.0),
        ),
      ),
    );
  }
}
