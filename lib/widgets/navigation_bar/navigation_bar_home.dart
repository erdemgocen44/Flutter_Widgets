import 'package:flutter/material.dart';

const TextStyle _textStyle = TextStyle(
  fontSize: 40,
  fontWeight: FontWeight.bold,
  letterSpacing: 2,
  fontStyle: FontStyle.italic,
);

class NavigationBarHome extends StatefulWidget {
  const NavigationBarHome({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  State<NavigationBarHome> createState() => _NavigationBarHomeState();
}

class _NavigationBarHomeState extends State<NavigationBarHome> {
  int _currentIndex = 0;
  List<Widget> pages = const [
    Text('eco', style: _textStyle),
    Text('home', style: _textStyle),
    Text('person', style: _textStyle),
    Text('video', style: _textStyle),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: pages[_currentIndex],
      ),
      bottomNavigationBar: NavigationBar(selectedIndex: _currentIndex),
    );
  }
}
