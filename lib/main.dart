import 'package:flutter/material.dart';
import 'package:widgets/widgets/clippers/clippers_page.dart';
import 'home_page.dart';

void main() => runApp(Widgets());

class Widgets extends StatelessWidget {
  const Widgets({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
      routes: {
        "/home": (context) => HomePage(),
        "/clippers": (context) => const ClipperPage(),
      },
    );
  }
}
