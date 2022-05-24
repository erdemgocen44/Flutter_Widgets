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
    Icon(
      Icons.home_outlined,
      size: 45,
      color: Colors.redAccent,
    ),
    Icon(
      Icons.menu_outlined,
      size: 45,
      color: Colors.blueAccent,
    ),
    Icon(
      Icons.person_outlined,
      size: 45,
      color: Colors.greenAccent,
    ),
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
      bottomNavigationBar: BottomNavigationBar(
        elevation: 15,
        currentIndex: _currentIndex,
        onTap: (int newIndex) {
          setState(() {
            _currentIndex = newIndex;
          });
        },
        items: const [
          BottomNavigationBarItem(
            label: 'Home',
            icon: Icon(Icons.home_outlined),
          ),
          BottomNavigationBarItem(
            label: 'Menu',
            icon: Icon(Icons.menu_outlined),
          ),
          BottomNavigationBarItem(
            label: 'Profile',
            icon: Icon(Icons.person_outlined),
          ),
        ],
      ),
    );
  }
}
