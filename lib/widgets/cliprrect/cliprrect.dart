import 'package:flutter/material.dart';
import 'package:widgets/core/lorem_picture.dart';

class ClipRRectPage extends StatefulWidget {
  const ClipRRectPage({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  State<ClipRRectPage> createState() => _ClipRRectPageState();
}

class _ClipRRectPageState extends State<ClipRRectPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: ClipRRect(
              //bu widget sayesinde resimlerin kenarlarına radius verebiliyoruz.Containere koymaya gerek kalmadan.
              // buna benzer olarak ClipOval (kenarları yuvarlatan)ve ClipPath (6gen yapan)....
              borderRadius: BorderRadius.circular(30),
              child: Image.network(resim300)),
        ),
      ),
    );
  }
}
