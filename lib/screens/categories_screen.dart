import 'package:flutter/material.dart';
import 'package:meals_app/dummy_data.dart';

import '../widgets/category_item.dart';

class CategoriesScreen extends StatelessWidget {
  static const routeName='/Categories-screen';
  const CategoriesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView(
        padding: EdgeInsets.all(14),
          children: DUMMY_CATEGORIES.map((e) => CategoryItem(colour: e.colour,title: e.title,id: e.id,)).toList(),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            childAspectRatio: 3/2,
              crossAxisCount: 2, mainAxisSpacing: 15, crossAxisSpacing: 15),
        );
  }
}
