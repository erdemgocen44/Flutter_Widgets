import 'package:flutter/material.dart';

class TableHome extends StatefulWidget {
  const TableHome({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  State<TableHome> createState() => _TableHomeState();
}

class _TableHomeState extends State<TableHome> {
  @override
  Widget build(BuildContext context) {
    TableRow _tableRow = const TableRow(
      children: <Widget>[
        Padding(
          padding: EdgeInsets.all(10.0),
          child: Text("Cell 1"),
        ),
        Padding(
          padding: EdgeInsets.all(10.0),
          child: Text("Cell 2"),
        ),
        Padding(
          padding: EdgeInsets.all(10.0),
          child: Text("Cell 3"),
        ),
      ],
    );
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
    );
  }
}
