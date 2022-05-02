import 'package:flutter/material.dart';

class WillPopScopeHome extends StatefulWidget {
  const WillPopScopeHome({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  State<WillPopScopeHome> createState() => _WillPopScopeHomeState();
}

class _WillPopScopeHomeState extends State<WillPopScopeHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
    );
  }
}
