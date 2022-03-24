import 'package:flutter/material.dart';

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
      body: Center(
        child: Container(
            child: ElevatedButton(
          onPressed: () {
            Navigator.pushNamed(context, "/clippers");
          },
          style: ElevatedButton.styleFrom(
            elevation: 10.0,
            primary: Colors.amber, // Background color
            onPrimary: Colors.black, // Text Color (Foreground color)
          ),
          child: const Text(
            'Clippers',
            style: TextStyle(fontSize: 20),
          ),
        )),
      ),
    );
  }
}
