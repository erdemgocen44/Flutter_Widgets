import 'package:flutter/material.dart';
import 'package:widgets/core/buttons.dart';

import 'core/my_button.dart';

void main() => runApp(HomePage());

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Widgets'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: GridView(
            primary: false,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              mainAxisSpacing: 4,
              crossAxisSpacing: 4,
              childAspectRatio: 2,
            ),
            children: buttons,
          ),
        ));
  }
}
