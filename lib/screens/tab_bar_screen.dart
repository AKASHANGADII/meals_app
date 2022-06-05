import 'package:flutter/material.dart';
import 'package:meals_app/screens/categories_screen.dart';

import '../widgets/drawer.dart';
import 'favorite_screen.dart';

class TabBarScreen extends StatefulWidget {
  const TabBarScreen({Key? key}) : super(key: key);

  @override
  State<TabBarScreen> createState() => _TabBarScreenState();
}

class _TabBarScreenState extends State<TabBarScreen> {
  int _selectedTab = 0;
  final List<Map<String, dynamic>> _pages = [
    {
      'page': CategoriesScreen(),
      'title': "Categories",
    },
    {
      'page': FavoriteScreen(),
      'title': "Your Favorites",
    }
  ];
  void _onSelected(int index) {
    setState(() {
      _selectedTab = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_pages[_selectedTab]['title']),
        backgroundColor: Theme.of(context).primaryColor,
      ),
      drawer: MainDrawer(),
      body: _pages[_selectedTab]['page'],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Theme.of(context).primaryColor,
        onTap: _onSelected,
        selectedItemColor: Colors.amberAccent,
        unselectedItemColor: Colors.white,
        currentIndex: _selectedTab,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.category_outlined), label: "Categories"),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite_border), label: "Favorites"),
        ],
      ),
    );
  }
}
