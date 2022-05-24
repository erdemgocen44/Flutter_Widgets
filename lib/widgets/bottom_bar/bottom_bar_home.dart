import 'package:flutter/material.dart';

class BottomBarHome extends StatefulWidget {
  const BottomBarHome({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  State<BottomBarHome> createState() => _BottomBarHomeState();
}

class _BottomBarHomeState extends State<BottomBarHome> {
  int _currentIndex = 0;
  List<Widget> body = const [
    Icon(Icons.home_outlined),
    Icon(Icons.menu_outlined),
    Icon(Icons.person_outlined),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: body[_currentIndex],
      ),
    );
  }
}
