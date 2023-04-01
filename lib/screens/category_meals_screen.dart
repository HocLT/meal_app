import 'package:flutter/material.dart';
import '../models/meal.dart';
import '../widgets/meal_item.dart';

class CategoryMealsScreen extends StatefulWidget {
  static const routeName = '/category-meals';
  final List<Meal> availableMeals;

  const CategoryMealsScreen(this.availableMeals, {Key? key}) : super(key: key);

  @override
  State<CategoryMealsScreen> createState() => _CategoryMealsScreenState();
}

class _CategoryMealsScreenState extends State<CategoryMealsScreen> {
  late String categoryTitle;  // late: khởi tạo giá trị sau
  late List<Meal> displayedMeals;
  var _loadedInitData = false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  void didChangeDependencies() {
    if (!_loadedInitData) {
      final routeArgs = ModalRoute.of(context)?.settings.arguments as Map<String, String>;
      categoryTitle = routeArgs['title'].toString();
      final categoryId = routeArgs['id'];
      displayedMeals = widget.availableMeals.where((element) {
        return element.categories.contains(categoryId);
      }).toList();
      _loadedInitData = true;
    }
    super.didChangeDependencies();
  }

  // xóa món ăn
  void _removeMeal(String mealId) {
    setState(() {
      displayedMeals.removeWhere((element) => element.id == mealId);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(categoryTitle),
      ),
      body: ListView.builder(itemCount: displayedMeals.length,
          itemBuilder: (ctx, idx) {
            return MealItem(id: displayedMeals[idx].id,
                title: displayedMeals[idx].title,
                imageUrl: displayedMeals[idx].imageUrl,
                duration: displayedMeals[idx].duration,
                complexity: displayedMeals[idx].complexity,
                affordability: displayedMeals[idx].affordability);
          }),
    );
  }
}
