import 'package:flutter/material.dart';
import 'package:widgets/widgets/clippers/clip_shadow_path.dart';
import 'package:widgets/widgets/clippers/custom_clippers.dart';

void main() => runApp(Widgets());

class Widgets extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Widgets',
      home: Scaffold(
        backgroundColor: Colors.red,
        body: ClippersPage(),
      ),
    );
  }
}
