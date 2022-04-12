import 'package:flutter/material.dart';

class StreamBuilderHome2 extends StatefulWidget {
  const StreamBuilderHome2({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<StreamBuilderHome2> createState() => _StreamBuilderHome2State();
}

class _StreamBuilderHome2State extends State<StreamBuilderHome2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
    );
  }
}
