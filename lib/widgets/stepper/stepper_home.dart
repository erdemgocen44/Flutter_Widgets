import 'package:flutter/material.dart';

class StepperHome extends StatefulWidget {
  const StepperHome({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  State<StepperHome> createState() => _StepperHomeState();
}

class _StepperHomeState extends State<StepperHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
    );
  }
}
