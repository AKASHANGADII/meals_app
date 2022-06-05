import 'package:flutter/material.dart';
import 'package:meals_app/screens/categories_screen.dart';

import '../screens/filters_screen.dart';

class MainDrawer extends StatelessWidget {
  const MainDrawer({Key? key}) : super(key: key);

  ListTile buildListTile(String text,IconData icon,Function()? tapHandler) {
    return ListTile(
      onTap: tapHandler,
      leading: Icon(icon),
      title: Text(
        text,
        style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          Container(
            color: Colors.amber,
            width: double.infinity,
            height: 100,
            alignment: Alignment.bottomLeft,
            padding: EdgeInsets.symmetric(horizontal: 6,vertical: 10),
            child: Text(
              "Cooking up!",
              style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          buildListTile("Meals",Icons.restaurant,(){
            Navigator.of(context).pushReplacementNamed('/');
          }),
          buildListTile("Settings",Icons.settings,(){
            Navigator.of(context).pushReplacementNamed(FiltersScreen.routeName);
          }),
        ],
      ),
    );
  }

}
