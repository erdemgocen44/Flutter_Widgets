import 'package:flutter/material.dart';

class FittedBoxHome extends StatefulWidget {
  const FittedBoxHome({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  State<FittedBoxHome> createState() => _FittedBoxHomeState();
}

class _FittedBoxHomeState extends State<FittedBoxHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(),
    );
  }
}
