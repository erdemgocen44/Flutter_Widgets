import 'package:flutter/material.dart';

class SearchFieldHome extends StatefulWidget {
  const SearchFieldHome({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  State<SearchFieldHome> createState() => _SearchFieldHomeState();
}

class _SearchFieldHomeState extends State<SearchFieldHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        actions: [
          IconButton(
            icon: const Icon(Icons.search_outlined),
            onPressed: () {},
          )
        ],
      ),
    );
  }
}
