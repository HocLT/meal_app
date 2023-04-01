import 'package:flutter/material.dart';
import '../widgets/main_drawer.dart';
import 'categories_screen.dart';
import 'favorites_screen.dart';
import '../models/meal.dart';


class TabsScreen extends StatefulWidget {
  final List<Meal> favoriteMeals;

  const TabsScreen(this.favoriteMeals, {Key? key}) : super(key: key);

  @override
  State<TabsScreen> createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
  late List<Map<String, Object>> _pages;  // dùng từ khóa late => biến _pages sẽ khởi tạo sau
  int _selectedPageIndex = 0; // giữ index của tab đang active

  @override
  void initState() {
    _pages = [
      {
        'page': const CategoriesScreen(),
        'title': 'Danh mục',
      },
      {
        'page': FavoritesScreen(widget.favoriteMeals),
        'title': 'Món ăn ưa thích',
      },
    ];
    super.initState();
  }

  // thay đổi tab
  void _selectPage(int index) {
    setState(() {
      _selectedPageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // hiển thị tên của tab đang chọn
        title: Text(_pages[_selectedPageIndex]['title'].toString()),
      ),
      drawer: const MainDrawer(), // menu vuốt từ bên trái qua
      body: _pages[_selectedPageIndex]['page'] as Widget?,  // ép kiểu
      bottomNavigationBar: BottomNavigationBar(
        onTap: _selectPage,
        backgroundColor: Theme.of(context).primaryColor,
        unselectedItemColor: Colors.white,
        selectedItemColor: Theme.of(context).colorScheme.secondary,
        currentIndex: _selectedPageIndex,
        items: [
          BottomNavigationBarItem(icon: const Icon(Icons.category),
            backgroundColor: Theme.of(context).primaryColor,
            label: 'Danh mục',
          ),
          BottomNavigationBarItem(icon: const Icon(Icons.star),
            backgroundColor: Theme.of(context).primaryColor,
            label: 'Ưa thích',
          )
        ]
      ),
    );
  }
}
