// // Copyright 2018 The Chromium Authors. All rights reserved.
// // Use of this source code is governed by a BSD-style license that can be
// // found in the LICENSE file.

// // To keep your imports tidy, follow the ordering guidelines at
// // https://www.dartlang.org/guides/language/effective-dart/style#ordering
// import 'package:flutter/material.dart';

// /// A custom [Category] widget.
// ///
// /// The widget is composed on an [Icon] and [Text]. Tapping on the widget shows
// /// a colored [InkWell] animation.
// class Category extends StatelessWidget {
//   /// Creates a [Category].
//   ///
//   /// A [Category] saves the name of the Category (e.g. 'Length'), its color for
//   /// the UI, and the icon that represents it (e.g. a ruler).
//   // TODO: You'll need the name, color, and iconLocation from main.dart
//   const Category();

//   /// Builds a custom widget that shows [Category] information.
//   ///
//   /// This information includes the icon, name, and color for the [Category].
//   @override
//   // This `context` parameter describes the location of this widget in the
//   // widget tree. It can be used for obtaining Theme data from the nearest
//   // Theme ancestor in the tree. Below, we obtain the display1 text theme.
//   // See https://docs.flutter.io/flutter/material/Theme-class.html
//   Widget build(BuildContext context) {
//     // TODO: Build the custom widget here, referring to the Specs.
//     return Container();
//   }
// }

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:navigation_task/converter_route.dart';
import 'package:navigation_task/units.dart';

class Category extends StatelessWidget {
  final String categoryName;
  final IconData categoryIcon;
  final Color categoryColor;
  final List<Unit> units;
  const Category(
      {required this.categoryName,
      required this.categoryIcon,
      required this.categoryColor,
      required this.units});

  void _navigateToCategory(BuildContext context) {
    Navigator.of(context)
        .push(MaterialPageRoute<Null>(builder: (BuildContext context) {
      return Scaffold(
          appBar: AppBar(
            elevation: 1.0,
            title: Text(
              categoryName,
              style: Theme.of(context).textTheme.display1,
            ),
            backgroundColor: categoryColor,
          ),
          body: ConverterScreen(color: categoryColor, units: units));
    }));
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
          child: Padding(
            padding: EdgeInsets.all(2.0),
            child: InkWell(
              child: Row(
                children: [
                  Padding(
                      child: Icon(categoryIcon, size: 64.0),
                      padding: EdgeInsets.all(12.0)),
                  Center(
                    child: Text(
                      categoryName,
                      style: TextStyle(
                          fontSize: 28.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                  ),
                ],
              ),
              borderRadius: BorderRadius.circular(24.0),
              onTap: () {
                _navigateToCategory(context);
              },
              highlightColor: categoryColor,
              hoverColor: categoryColor.withOpacity(0.3),
              splashColor: categoryColor.withOpacity(0.7),
            ),
          ),
          padding: EdgeInsets.all(8.0),
          height: 100.0,
          color: categoryColor.withOpacity(0.3)),
    );
  }
}

/*Widget _buildCategoryWidgets(bool portrait){
  if(portrait){
    return ListView.builder(
      itemBuilder: BuildContext(context, int index) =>
      )
  }
}*/
