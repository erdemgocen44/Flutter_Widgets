import 'package:flutter/material.dart';
import 'package:widgets/core/rotes.dart';
import 'home_page.dart';

void main() => runApp(Widgets());

class Widgets extends StatelessWidget {
  const Widgets({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
      routes: rotalar,
    );
  }
}
