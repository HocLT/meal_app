import 'package:flutter/material.dart';
import '../screens/filters_screen.dart';

class MainDrawer extends StatelessWidget {
  const MainDrawer({Key? key}) : super(key: key);

  Widget buildListTile(String title, IconData icon, void Function()? tapHandler) {
    return ListTile(
      leading: Icon(icon,
        size: 26,
      ),
      title: Text(title,
        style: const TextStyle(
          fontFamily: 'RobotoCondensed',
          fontSize: 24,
          fontWeight: FontWeight.bold
        ),
      ),
      onTap: tapHandler,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: <Widget>[
          Container(
            height: 120,
            width: double.infinity, // infinity: không giới hạn
            padding: const EdgeInsets.all(20),
            alignment: Alignment.centerLeft,
            color: Theme.of(context).colorScheme.secondary,
            child: Text('Cooking Up',
            style: TextStyle(
              fontWeight: FontWeight.w900,  // đậm
              fontSize: 30,
              color: Theme.of(context).primaryColor,  // màu chính
            ),
            ),
          ),
          SizedBox(height: 20,),  // tạo khoảng cách
          buildListTile('Món ăn', Icons.restaurant, () {
            Navigator.of(context).pushReplacementNamed('/');
          }),
          buildListTile('Tìm kiếm', Icons.settings, () {
            Navigator.of(context).pushReplacementNamed(FiltersScreen.routeName);
          }),
        ],
      ),
    );
  }
}
