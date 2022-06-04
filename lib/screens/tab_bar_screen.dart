import 'package:flutter/material.dart';
import 'package:meals_app/screens/categories_screen.dart';

import 'favorite_screen.dart';

class TabBarScreen extends StatefulWidget {
  const TabBarScreen({Key? key}) : super(key: key);

  @override
  State<TabBarScreen> createState() => _TabBarScreenState();
}

class _TabBarScreenState extends State<TabBarScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            title: Text("meals"),
            bottom: TabBar(
              tabs: [
                Tab(
                  icon: Icon(Icons.category_outlined),
                  text: "Categories",
                ),
                Tab(
                  icon: Icon(Icons.star_border),
                  text: "Favorites",
                )
              ],
            ),
          ),
          body: TabBarView(
            children: [
              CategoriesScreen(),
              FavoriteScreen(),
            ],
          ),
        ),
    );
  }
}
