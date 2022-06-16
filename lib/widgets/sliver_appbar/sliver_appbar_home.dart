import 'package:flutter/material.dart';

class SliverAppbarHome extends StatefulWidget {
  const SliverAppbarHome({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  State<SliverAppbarHome> createState() => _SliverAppbarHomeState();
}

class _SliverAppbarHomeState extends State<SliverAppbarHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(slivers: [
        SliverList(
            delegate: SliverChildListDelegate([
          const Text('Sliver', style: TextStyle(fontSize: 500)),
        ]))
      ]),
    );
  }
}
