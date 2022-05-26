import 'package:flutter/material.dart';

class RangeSliderHome extends StatefulWidget {
  const RangeSliderHome({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  State<RangeSliderHome> createState() => _RangeSliderHomeState();
}

class _RangeSliderHomeState extends State<RangeSliderHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
    );
  }
}
