import 'package:flutter/material.dart';
import 'package:meal_app/screens/meal_details_screen.dart';
import '../models/meal.dart';

class MealItem extends StatelessWidget {
  final String id;
  final String title;
  final String imageUrl;
  final int duration;
  final Complexity complexity;
  final Affordability affordability;

  const MealItem(
      {required this.id,
      required this.title,
      required this.imageUrl,
      required this.duration,
      required this.complexity,
      required this.affordability,
      Key? key})
      : super(key: key);

  String get complexityText {
    String result = 'Unknown';
    switch (complexity) {
      case Complexity.Simple:
        result = 'Simple';
        break;
      case Complexity.Challenging:
        result = 'Challenging';
        break;
      case Complexity.Hard:
        result = 'Hard';
        break;
      default:
        result = 'Unknown';
    }
    return result;
  }

  String get affordabilityText {
    String result = 'Unknown';
    switch (affordability) {
      case Affordability.Affordable:
        result = 'Affordable';
        break;
      case Affordability.Pricey:
        result = 'Pricey';
        break;
      case Affordability.Luxurious:
        result = 'Luxurious';
        break;
      default:
        result = 'Unknown';
    }
    return result;
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).pushNamed(MealDetailsScreen.routeName,
          arguments: id,
        );
      },
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15), // bán kình cong các góc
        ),
        elevation: 4,
        margin: const EdgeInsets.all(10),
        child: Column(
          children: <Widget>[
            Stack(children: <Widget>[
              ClipRRect(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(15),
                  topRight: Radius.circular(15),
                ),
                // load hình từ internet
                child: Image.network(
                  imageUrl,
                  height: 250,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),
              Positioned(
                bottom: 20,
                  right: 10,
                  child: Container(
                    width: 300,
                    color: Colors.black54,
                    padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 20),
                    child: Text(
                      title,
                      style: const TextStyle(fontSize: 26,
                      color: Colors.white
                      ),
                      softWrap: true, // tự xuống hàng
                      overflow: TextOverflow.fade,
                    ),
                  )
              )
            ]),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      const Icon(Icons.schedule),
                      const SizedBox(width: 6,),
                      Text('$duration min')
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      const Icon(Icons.work),
                      const SizedBox(width: 6,),
                      Text(complexityText)
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      const Icon(Icons.money),
                      const SizedBox(width: 6,),
                      Text(affordabilityText)
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
