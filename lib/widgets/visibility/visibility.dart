import 'package:flutter/material.dart';

class VisibilityHome extends StatefulWidget {
  const VisibilityHome({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  State<VisibilityHome> createState() => _VisibilityHomeState();
}

class _VisibilityHomeState extends State<VisibilityHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: const SizedBox(
        width: double.infinity,
        child: Center(),
      ),
    );
  }
}
