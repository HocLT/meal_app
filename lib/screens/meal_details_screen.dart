import 'package:flutter/material.dart';
import '../dummy_data.dart';

class MealDetailsScreen extends StatelessWidget {
  static const routeName = '/meal-details';

  const MealDetailsScreen(this.toggleFavorite, this.isFavorite, {Key? key})
      : super(key: key);

  final Function toggleFavorite;
  final Function isFavorite;

  Widget buildTitleSection(BuildContext context, String s) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      child: Text(
        s,
        style: Theme.of(context).textTheme.headline6,
      ),
    );
  }

  Widget buildContainerStep(Widget child) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(10),
      ),
      margin: const EdgeInsets.all(10),
      padding: const EdgeInsets.all(10),
      height: 200,
      width: 300,
      child: child,
    );
  }

  @override
  Widget build(BuildContext context) {
    // đọc id truyền từ navigator
    final mealId = ModalRoute.of(context)?.settings.arguments as String;
    final selectedMeal =
        DUMMY_MEALS.firstWhere((element) => element.id == mealId);

    return Scaffold(
      appBar: AppBar(
        title: Text(selectedMeal.title),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              height: 300,
              width: double.infinity,
              child: Image.network(
                selectedMeal.imageUrl,
                fit: BoxFit.cover,
              ),
            ),
            buildTitleSection(context, 'Nguyên liệu'),
            buildContainerStep(ListView.builder(
                itemCount: selectedMeal.ingredients.length,
                itemBuilder: (ctx, idx) => Card(
                      color: Theme.of(context).colorScheme.secondary,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 5, horizontal: 10),
                        child: Text(selectedMeal.ingredients[idx]),
                      ),
                    ))),
            buildTitleSection(context, 'Các bước thực hiện'),
            buildContainerStep(
              ListView.builder(
                itemCount: selectedMeal.steps.length,
                itemBuilder: (ctx, idx) => Column(
                  children: <Widget>[
                    ListTile(
                      leading: CircleAvatar(
                        child: Text('# ${idx + 1}'), // idx tính từ 0
                      ),
                      title: Text(selectedMeal.steps[idx]),
                    ),
                    const Divider(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(
          isFavorite(mealId) ? Icons.star : Icons.star_border,
        ),
        onPressed: () => toggleFavorite(mealId),
      ),
    );
  }
}
