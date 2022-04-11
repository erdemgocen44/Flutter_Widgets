import 'package:flutter/material.dart';

class FutureHome extends StatefulWidget {
  const FutureHome({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  State<FutureHome> createState() => _FutureHomeState();
}

class _FutureHomeState extends State<FutureHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: ElevatedButton(
          child: Text(
            "Get Data!!!",
          ),
          onPressed: () {
            print("1. task");
            print("2. task");
            print("3. task");
          },
        ),
      ),
    );
  }
}
