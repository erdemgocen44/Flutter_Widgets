import 'package:flutter/material.dart';

class SpreadOperatorHome extends StatefulWidget {
  const SpreadOperatorHome({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  State<SpreadOperatorHome> createState() => _SpreadOperatorHomeState();
}

class _SpreadOperatorHomeState extends State<SpreadOperatorHome> {
  @override
  Widget build(BuildContext context) {
    List<Widget> imagesList = [
      Image.network(
        "https://picsum.photos/500/600",
        height: MediaQuery.of(context).size.height * 0.02,
      ),
    ];
    return Scaffold(
      appBar: AppBar(
        title: Text(
          widget.title,
        ),
      ),
      body: Column(
        children: [
          Image.network("https://picsum.photos/500/600"),
        ],
      ),
    );
  }
}
