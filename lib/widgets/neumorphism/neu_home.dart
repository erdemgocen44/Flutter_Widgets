import 'package:flutter/material.dart';

class NeumorpHome extends StatefulWidget {
  const NeumorpHome({Key? key}) : super(key: key);

  @override
  State<NeumorpHome> createState() => _NeumorpHomeState();
}

class _NeumorpHomeState extends State<NeumorpHome> {
  bool _isElevated = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: Center(
        child: GestureDetector(
          onTap: () {
            setState(() {});
          },
          child: Container(),
        ),
      ),
    );
  }
}
