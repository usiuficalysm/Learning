import "package:flutter/material.dart";
import "package:custom_widget_task/category.dart";

void main() {
  runApp(myCustomApp());
}

const _categoryName = 'Howdy!';
const _categoryIcon = Icons.car_rental;
const _categoryColor = Colors.red;

class myCustomApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Send My Regards",
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.blueAccent,
        body: Center(
          child: Category(
            categoryName: _categoryName,
            categoryColor: _categoryColor,
            categoryIcon: _categoryIcon,
          ),
        ),
      ),
    );
  }
}
