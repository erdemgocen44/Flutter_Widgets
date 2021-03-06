import 'package:flutter/material.dart';
import 'package:widgets/core/lorem_picture.dart';

class StackHome extends StatefulWidget {
  const StackHome({Key? key, required this.title}) : super(key: key);
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
      body: Center(
        child: Stack(
          children: [
            Center(
              child: Image.network(resim400),
            ),
            Center(
              child: Image.network(
                resim200,
                width: 100,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
