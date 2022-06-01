import 'package:flutter/material.dart';
import 'package:meals_app/dummy_data.dart';

import '../widgets/category_item.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Daily Meals"),),
      body: GridView(
        padding: EdgeInsets.all(14),
          children: DUMMY_CATEGORIES.map((e) => CategoryItem(colour: e.colour,title: e.title,)).toList(),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            childAspectRatio: 3/2,
              crossAxisCount: 2, mainAxisSpacing: 10, crossAxisSpacing: 10),
        ),
    );
  }
}
