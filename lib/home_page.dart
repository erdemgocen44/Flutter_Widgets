import 'package:flutter/material.dart';

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
            children: [
              CustomElevatedButton(
                yazi: 'Clippers',
                primary: Colors.amber,
                onprimary: Colors.black,
                rota: '/clippers',
              ),
              CustomElevatedButton(
                yazi: 'Glassmorphism',
                primary: Colors.red,
                onprimary: Colors.white,
                rota: '/glass',
              ),
              CustomElevatedButton(
                yazi: 'Neumorphism',
                primary: Colors.green,
                onprimary: Colors.black,
                rota: '/neumorp',
              ),
              CustomElevatedButton(
                yazi: 'Flexible',
                primary: Colors.purple,
                onprimary: Colors.white,
                rota: '/flexible',
              ),
              CustomElevatedButton(
                yazi: 'Checkbox',
                primary: Colors.blueGrey,
                onprimary: Colors.black,
                rota: '/checkbox',
              ),
              CustomElevatedButton(
                yazi: 'ClipRRect',
                primary: Colors.blue,
                onprimary: Colors.white,
                rota: '/cliprrect',
              ),
              CustomElevatedButton(
                yazi: 'I.Viewer',
                primary: Colors.pinkAccent,
                onprimary: Colors.white,
                rota: '/viewer',
              ),
              CustomElevatedButton(
                yazi: 'Selectable',
                primary: Colors.blueAccent,
                onprimary: Colors.black,
                rota: '/selectable',
              ),
            ],
          ),
        ));
  }
}
