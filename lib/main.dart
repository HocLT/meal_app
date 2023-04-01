import 'package:flutter/material.dart';
import 'package:meal_app/screens/categories_screen.dart';
import 'package:meal_app/screens/category_meals_screen.dart';
import 'package:meal_app/screens/filters_screen.dart';
import 'package:meal_app/screens/meal_details_screen.dart';
import 'models/meal.dart';
import 'dummy_data.dart';
import 'screens/tabs_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<Meal> _availableMeals = DUMMY_MEALS;
  List<Meal> _favoriteMeals = [];

  // map chứa option filter
  Map<String, bool?> _filters = {
    'gluten': false,
    'lactose': false,
    'vegan': false,
    'vegetarian': false,
  };

  void _setFilters(Map<String, bool?> filter) {
    setState(() {
      _filters = filter;
      _availableMeals = DUMMY_MEALS.where((element) {
        if (_filters['gluten']! && !element.isGlutenFree) {
          return false;
        }
        if (_filters['lactose']! && !element.isLactoseFree) {
          return false;
        }
        if (_filters['vegan']! && !element.isVegan) {
          return false;
        }
        if (_filters['vegetarian']! && !element.isVegetarian) {
          return false;
        }
        return true;
      }).toList();
    });
  }

  bool _isFavoriteMeal(String id) {
    return _favoriteMeals.any((element) => element.id == id);
  }

  void _toggleFavoriteMeal(String id) {
    // lấy vị trí của favorite meal trong mảng
    final index = _favoriteMeals.indexWhere((element) => element.id == id);
    if (index >= 0) {
      // xóa phần từ này khỏi List favorite
      setState(() {
        _favoriteMeals.removeAt(index);
      });
    } else {
      // thêm phần tử vào mảng favorite
      setState(() {
        _favoriteMeals
            .add(DUMMY_MEALS.firstWhere((element) => element.id == id));
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Meal App',
      // khai báo các thông tin về màu sắc, phông chữ, ...
      theme: ThemeData(
        canvasColor: const Color.fromRGBO(255, 254, 229, 1),
        fontFamily: 'Raleway',
        // định nghĩa lại 1 số thông tin
        textTheme: ThemeData.light().textTheme.copyWith(
            bodyText1: const TextStyle(
              color: Color.fromRGBO(20, 51, 51, 1),
            ),
            bodyText2: const TextStyle(
              color: Color.fromRGBO(20, 51, 51, 1),
            ),
            subtitle1: const TextStyle(
              fontSize: 20,
              fontFamily: 'RobotoCondensed',
              fontWeight: FontWeight.bold,
            )),
        colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.pink)
            .copyWith(secondary: Colors.amber),
      ),
      //home: TabsScreen(_favoriteMeals),
      initialRoute: '/',
      routes: {
        '/': (ctx) => TabsScreen(_favoriteMeals),
        MealDetailsScreen.routeName: (ctx) =>
            MealDetailsScreen(_toggleFavoriteMeal, _isFavoriteMeal),
        CategoryMealsScreen.routeName: (ctx) =>
            CategoryMealsScreen(_availableMeals),
        FiltersScreen.routeName: (ctx) => FiltersScreen(_filters, _setFilters),
      },
      onUnknownRoute: (settings) {
        return MaterialPageRoute(builder: (ctx) => CategoriesScreen());
      },
    );
  }
}
