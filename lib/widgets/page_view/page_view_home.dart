import 'package:flutter/material.dart';

class PageViewHome extends StatefulWidget {
  const PageViewHome({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  State<PageViewHome> createState() => _PageViewHomeState();
}

class _PageViewHomeState extends State<PageViewHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
    );
  }
}
