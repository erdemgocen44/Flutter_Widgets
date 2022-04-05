import 'package:flutter/material.dart';
import 'package:widgets/core/lorem_picture.dart';

class PositionedHome extends StatefulWidget {
  const PositionedHome({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  State<PositionedHome> createState() => _PositionedHomeState();
}

class _PositionedHomeState extends State<PositionedHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Stack(
          children: [
            Positioned(
              left: 40,
              top: 40,
              child: Image.network(resim200),
            ),
            Positioned(
              left: 80,
              top: 80,
              child: Image.network(resim200),
            ),
            Positioned(
              left: 120,
              top: 120,
              child: Image.network(resim200),
            ),
          ],
        ),
      ),
    );
  }
}
