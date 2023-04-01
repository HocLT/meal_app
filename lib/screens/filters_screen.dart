import 'package:flutter/material.dart';
import '../widgets/main_drawer.dart';

class FiltersScreen extends StatefulWidget {
  static const routeName = '/filters';

  final void Function(Map<String, bool?>)? saveFilters;
  final Map<String, bool?> currentFilters;

  const FiltersScreen(this.currentFilters, this.saveFilters, {Key? key})
      : super(key: key);

  @override
  State<FiltersScreen> createState() => _FiltersScreenState();
}

class _FiltersScreenState extends State<FiltersScreen> {
  bool? _glutenFree;
  bool? _vegetarian;
  bool? _vegan;
  bool? _lactoseFree;

  @override
  void initState() {
    _glutenFree = widget.currentFilters['gluten'];
    _vegetarian = widget.currentFilters['vegetarian'];
    _vegan = widget.currentFilters['vegan'];
    _lactoseFree = widget.currentFilters['lactose'];

    super.initState();
  }

  Widget _buildSwitchListTile(String title, String description,
      bool currentValue, void Function(bool?) updateValue) {
    return SwitchListTile(
        value: currentValue,
        title: Text(title),
        subtitle: Text(description),
        onChanged: updateValue);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Lọc'),
          actions: <Widget>[
            IconButton(
                icon: const Icon(Icons.save),
                onPressed: () {
                  final selectedFilters = {
                    'gluten': _glutenFree,
                    'lactose': _lactoseFree,
                    'vegan': _vegan,
                    'vegetarian': _vegetarian
                  };
                  widget.saveFilters!(selectedFilters);
                })
          ],
        ),
        drawer: MainDrawer(),
        body: Column(
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(20),
              child: Text(
                'Lựa chọn để lọc món ăn cần hiển thị',
                style: Theme.of(context).textTheme.headline6,
              ),
            ),
            Expanded(
                child: ListView(
              children: <Widget>[
                _buildSwitchListTile(
                    'Không có Gluten',
                    'Chỉ hiển thị các món ăn không có gluten.',
                    _glutenFree!, (v) {
                  setState(() {
                    _glutenFree = v;
                  });
                }),
                _buildSwitchListTile(
                    'Không có đường',
                    'Chỉ hiển thị các món ăn không có đường.',
                    _lactoseFree!, (v) {
                  setState(() {
                    _lactoseFree = v;
                  });
                }),
              ],
            ))
          ],
        ));
  }
}
