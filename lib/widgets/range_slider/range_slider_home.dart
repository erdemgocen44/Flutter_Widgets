import 'package:flutter/material.dart';

class RangeSliderHome extends StatefulWidget {
  const RangeSliderHome({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  State<RangeSliderHome> createState() => _RangeSliderHomeState();
}

class _RangeSliderHomeState extends State<RangeSliderHome> {
  RangeValues values = const RangeValues(0.1, 0.6);
  @override
  Widget build(BuildContext context) {
    RangeLabels labels = RangeLabels(
      values.start.toString(),
      values.end.toString(),
    );
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: RangeSlider(
            values: values,
            divisions: 10,
            labels: labels,
            onChanged: (newValues) {
              setState(() {
                values = newValues;
              });
            }),
      ),
    );
  }
}
