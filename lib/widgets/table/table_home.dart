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
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
    );
  }
}
