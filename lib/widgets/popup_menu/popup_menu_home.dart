import 'package:flutter/material.dart';

class PopupMenuHome extends StatefulWidget {
  const PopupMenuHome({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  State<PopupMenuHome> createState() => _PopupMenuHomeState();
}

class _PopupMenuHomeState extends State<PopupMenuHome> {
  String title = 'First Page';
  String firstPage = 'First Page';
  String secondPage = 'Second Page';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        actions: [
          PopupMenuButton(
            itemBuilder: (context) => [
              PopupMenuItem(
                child: Text(firstPage),
              ),
            ],
          ),
        ],
      ),
      body: Center(),
    );
  }
}
