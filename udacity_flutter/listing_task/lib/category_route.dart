import 'dart:html';

import "package:flutter/material.dart";
import "package:listing_task/category.dart";

class CategoryScreen extends StatelessWidget {
  const CategoryScreen();

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

  @override
  Widget build(BuildContext context) {
    var myList = <Category>[];
    for (var i = 0; i < _myColors.length; i++) {
      myList.add(Category(
          categoryColor: _myColors[i],
          categoryName: _categoryNames[i],
          categoryIcon: _myIcons[i]));
    }

    final listview = ListView(
      children: myList,
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
