import 'package:flutter/material.dart';

class StackHome extends StatefulWidget {
  const StackHome({Key? key}) : super(key: key);
  final String title;

  @override
  State<StackHome> createState() => _StackHomeState();
}

class _StackHomeState extends State<StackHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
    );
  }
}
