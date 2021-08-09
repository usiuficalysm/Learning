import "package:flutter/material.dart";
import "package:navigation_task/units.dart";

class ConverterScreen extends StatefulWidget {
  final List<Unit> units;
  final Color color;

  const ConverterScreen({required this.units, required this.color});
  @override
  createState() => _ConverterScreenState();
}

// Note that there is no need to pass arguments into _ConverterScreenState and initiate them again.
// Simply adding a widget prefix would be sufficient.

class _ConverterScreenState extends State<ConverterScreen> {
  @override
  Widget build(BuildContext context) {
    final unitWidgets = widget.units.map((Unit units) {
      return Container(
          margin: EdgeInsets.all(8.0),
          padding: EdgeInsets.all(16.0),
          color: widget.color,
          child: Column(
            children: <Widget>[
              Center(
                  child: Text(units.name,
                      style: Theme.of(context).textTheme.headline2)),
              Text('Conversion: $units.conversion',
                  style: TextStyle(fontSize: 20.0, fontStyle: FontStyle.italic))
            ],
          ));
    }).toList();

    return ListView(children: unitWidgets);
  }
}
