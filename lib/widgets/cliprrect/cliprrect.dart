import 'package:flutter/material.dart';

class ClipRRectPage extends StatefulWidget {
  const ClipRRectPage({Key? key}) : super(key: key);

  @override
  State<ClipRRectPage> createState() => _ClipRRectPageState();
}

class _ClipRRectPageState extends State<ClipRRectPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: ClipRRect(
              //bu widget sayesinde resimlerin kenarlarına radius verebiliyoruz.Containere koymaya gerek kalmadan.
              // buna benzer olarak ClipOval (kenarları yuvarlatan)ve ClipPath (6gen yapan)....
              borderRadius: BorderRadius.circular(30),
              child: Image.network("https://picsum.photos/500/300")),
        ),
      ),
    );
  }
}
