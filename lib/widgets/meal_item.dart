import 'package:flutter/material.dart';
import 'package:meals_app/models/meals.dart';
import 'package:meals_app/screens/meal_detail_screen.dart';

class MealItem extends StatelessWidget {
  final String title;
  final String imageUrl;
  final int duration;
  final Complexity complexity;
  final Affordability affordability;
  final String id;

  MealItem(
      {
        required this.id,
        required this.title,
      required this.imageUrl,
      required this.duration,
      required this.complexity,
      required this.affordability});
  String get complexityText{
    switch(complexity){
      case Complexity.Simple:return 'Simple';break;
      case Complexity.Medium:return 'Medium';break;
      case Complexity.Difficult:return 'Hard';break;
      default:return 'Unknown';
    }
  }
  String get affordabilityText{
    switch(affordability){
      case Affordability.Affordable:return 'Affordable';break;
      case Affordability.Pricey:return 'Costly';break;
      case Affordability.Luxurious:return 'Luxurious';break;
      default:return 'Unknown';
    }
  }
  void selectMeal(BuildContext ctx) {
    Navigator.of(ctx).pushNamed(MealDetailScreen.routeName,arguments: id);
  }
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap:()=>selectMeal(context),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        elevation: 4,
        margin: EdgeInsets.all(10),
        child: Column(
          children: [
            Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.only(topRight: Radius.circular(8),topLeft: Radius.circular(8)),
                  child: Image.network(imageUrl,
                      height: 250, width: double.infinity, fit: BoxFit.cover),
                ),
                Positioned(
                  bottom: 20,
                  right: 10,
                  child: Container(
                    color: Colors.black26,
                    padding: EdgeInsets.symmetric(vertical: 3,horizontal: 5),
                    child: Text(
                      title,
                      softWrap: true,
                      overflow: TextOverflow.fade,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Icon(Icons.schedule),
                      SizedBox(width: 6,),
                      Text("$duration min"),
                    ],
                  ),
                  Row(
                    children: [
                      Icon(Icons.work_outline),
                      SizedBox(width: 6,),
                      Text(complexityText),
                    ],
                  ),
                  Row(
                    children: [
                      Icon(Icons.attach_money),
                      SizedBox(width: 6,),
                      Text(affordabilityText),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
