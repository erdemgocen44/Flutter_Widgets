import 'package:flutter/material.dart';

class ExpansionTileHome extends StatefulWidget {
  const ExpansionTileHome({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  State<ExpansionTileHome> createState() => _ExpansionTileHomeState();
}

class _ExpansionTileHomeState extends State<ExpansionTileHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: const ExpansionTile(
        leading: Icon(Icons.favorite),
        backgroundColor: Colors.black12,
        title: Text('See more!!'),
        children: [
          ListTile(
            title: Text('First'),
          ),
          ListTile(
            title: Text('Second'),
          ),
          ListTile(
            title: Text('Third'),
          ),
        ],
      ),
    );
  }
}
