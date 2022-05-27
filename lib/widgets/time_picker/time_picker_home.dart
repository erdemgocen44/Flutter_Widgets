import 'package:flutter/material.dart';

class TimePickerHome extends StatefulWidget {
  const TimePickerHome({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  State<TimePickerHome> createState() => _TimePickerHomeState();
}

class _TimePickerHomeState extends State<TimePickerHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
    );
  }
}
