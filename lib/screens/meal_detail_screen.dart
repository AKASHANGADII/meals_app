import 'package:flutter/material.dart';
import 'package:meals_app/dummy_data.dart';
import 'package:meals_app/models/meals.dart';

class MealDetailScreen extends StatelessWidget {
  static const routeName = '/meal-detail';
  @override
  Widget build(BuildContext context) {
    final mealId = ModalRoute.of(context)?.settings.arguments as String;
    final mealDetail =
        DUMMY_MEALS.firstWhere((element) => mealId == element.id);

    Widget buildFieldName(String text) {
      return Container(
        margin: EdgeInsets.symmetric(vertical: 6),
        child: Center(
          child: Text(
            text,
            style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
          ),
        ),
      );
    }
    Container buildFieldContent(Meal mealDetail,Widget child) {
      return Container(
        decoration: BoxDecoration(
          border: Border.all(color: Colors.grey),
        ),
        margin: EdgeInsets.symmetric(vertical: 8, horizontal: 10),
        padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
        height: 150,
        width: 200,
        child: child,
      );
    }
    return SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              width: double.infinity,
              height: 300,
              child: Image.network(
                mealDetail.imageUrl,
                fit: BoxFit.cover,
              ),
            ),
            buildFieldName("Ingredients"),
            buildFieldContent(mealDetail,ListView.builder(
              itemCount: mealDetail.ingredients.length,
              itemBuilder: (context, i) => Card(
                color: Colors.amber,
                child: Padding(
                  padding:
                  const EdgeInsets.symmetric(vertical: 2, horizontal: 6),
                  child: Text(mealDetail.ingredients[i]),
                ),
              ),
            ),
            ),
            buildFieldName("Steps"),
            buildFieldContent(mealDetail,ListView.builder(
              itemCount: mealDetail.steps.length,
              itemBuilder: (context, i) => Column(
                children: [
                  ListTile(
                    leading: CircleAvatar(backgroundColor: Colors.black,child: Text("#${i+1}"),),
                    title: Text(mealDetail.steps[i]),
                  ),
                  Divider(),
                ],
              )
            ),),
          ],
        ),
      );
  }
}
