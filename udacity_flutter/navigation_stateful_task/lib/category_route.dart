import "package:flutter/material.dart";
import "package:navigation_task/category.dart";
import 'package:navigation_task/units.dart';

class CategoryScreen extends StatefulWidget {
  CategoryScreen();
  @override
  createState() => _CategoryScreenState();
}

class _CategoryScreenState extends State<CategoryScreen> {
  _CategoryScreenState();

  static const _categoryNames = <String>[
    'Jason',
    'Terry',
    'Felicia',
    'Gretel',
    'Hansen',
    'Pauline',
    'Wilson',
    'Beatrice'
  ];

  static const _myColors = <Color>[
    Colors.red,
    Colors.orange,
    Colors.yellow,
    Colors.green,
    Colors.blue,
    Colors.purple,
    Colors.brown,
    Colors.black
  ];

  static const _myIcons = <IconData>[
    Icons.trending_neutral,
    Icons.ac_unit,
    Icons.backpack,
    Icons.cabin,
    Icons.dangerous,
    Icons.e_mobiledata,
    Icons.face,
    Icons.grade
  ];

  Widget _buildCategoryWidgets(List<Widget> categories) {
    return ListView.builder(
        itemBuilder: (BuildContext context, int index) => categories[index],
        itemCount: categories.length);
  }

  List<Unit> _retrieveUnitList(String categoryName) {
    return List.generate(10, (int i) {
      i += 1;
      return Unit(
        name: '$categoryName Unit $i',
        conversion: i.toDouble(),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    var myList = <Category>[];
    for (var i = 0; i < _myColors.length; i++) {
      myList.add(Category(
          categoryColor: _myColors[i],
          categoryName: _categoryNames[i],
          categoryIcon: _myIcons[i],
          units: _retrieveUnitList(_categoryNames[i])));
    }

    final listview = Container(
      child: _buildCategoryWidgets(myList),
      padding: EdgeInsets.all(8.0),
    );

    final appBar = AppBar(
        title: Center(
          child: Text(
            "Lemon Tree",
            style: TextStyle(
                color: Colors.white,
                fontSize: 32.0,
                fontWeight: FontWeight.bold),
          ),
        ),
        elevation: 0.0,
        backgroundColor: Colors.blue[800]);

    return Scaffold(appBar: appBar, body: listview);
  }
}
