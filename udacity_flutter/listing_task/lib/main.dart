import "package:flutter/material.dart";
import "package:listing_task/category.dart";
import "package:listing_task/category_route.dart";

void main() {
  runApp(myCustomApp());
}

const _categoryName = "Joker";
const _categoryIcon = Icons.alarm;
const _categoryColor = Colors.blue;

class myCustomApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "Show me the Truth!",
        debugShowCheckedModeBanner: false,
        home: CategoryScreen());
  }
}
