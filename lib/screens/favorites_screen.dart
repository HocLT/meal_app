import 'package:flutter/material.dart';
import '../models/meal.dart';
import '../widgets/meal_item.dart';

class FavoritesScreen extends StatelessWidget {
  final List<Meal> favoriteMeals;
  const FavoritesScreen(this.favoriteMeals, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (favoriteMeals.isEmpty) {
      return const Center(
        child: Text('Bạn chưa có món ăn ưa thích'),
      );
    } else {
      return ListView.builder(
          itemCount: favoriteMeals.length,
          itemBuilder: (ctx, item) {
            return MealItem(
                id: favoriteMeals[item].id,
                title: favoriteMeals[item].title,
                imageUrl: favoriteMeals[item].imageUrl,
                duration: favoriteMeals[item].duration,
                complexity: favoriteMeals[item].complexity,
                affordability: favoriteMeals[item].affordability);
          });
    }
  }
}
