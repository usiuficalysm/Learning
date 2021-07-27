import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      title: "Send help!",
      home: (Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('Great Expectations'),
        ),
        body: HelloRectangle(),
      )),
    ),
  );
}

class HelloRectangle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        color: Colors.orange[300],
        height: 300.0,
        width: 500.0,
        child: Center(
          child: Text(
            "Great Scott!",
            style: TextStyle(fontSize: 30.0, color: Colors.blue[700]),
            textAlign: TextAlign.left,
          ),
        ),
      ),
    );
  }
}
