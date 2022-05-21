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
      body: PageView(
        children: [
          Container(
            color: Colors.blueAccent,
            child: const Center(
              child: Text(
                'Page 1',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 60,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Container(
            color: Colors.purpleAccent,
            child: const Center(
              child: Text(
                'Page 2',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 60,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Container(
            color: Colors.amberAccent,
            child: const Center(
              child: Text(
                'Page 3',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 60,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Container(
            color: Colors.redAccent,
            child: const Center(
              child: Text(
                'Page 4',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 60,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
