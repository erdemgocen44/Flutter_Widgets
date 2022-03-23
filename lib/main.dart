import 'package:flutter/material.dart';
import 'package:widgets/widgets/clippers/clip_shadow_path.dart';
import 'package:widgets/widgets/clippers/custom_clippers.dart';

void main() => runApp(Widgets());

class Widgets extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Widgets',
      home: Scaffold(
        backgroundColor: Colors.red,
        body: Stack(
          children: [
            ClipShadowPath(
              shadow: const BoxShadow(
                color: Colors.black,
                offset: Offset(4, 4),
                blurRadius: 4,
                spreadRadius: 8,
              ),
              clipper: BigClipper(),
              child: Container(
                color: Colors.orangeAccent,
              ),
            ),
            ClipShadowPath(
              shadow: const BoxShadow(
                color: Colors.black,
                offset: Offset(4, 4),
                blurRadius: 4,
                spreadRadius: 8,
              ),
              clipper: SmallClipper(),
              child: Container(
                color: Colors.red,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
