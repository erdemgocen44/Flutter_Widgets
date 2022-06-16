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
        const SliverAppBar(
          pinned: false,
          floating: true,
          title: Text('Flutter'),
          snap: true,
          expandedHeight: 200,
          flexibleSpace: FlexibleSpaceBar(
            title: Text('Flutter Candır'),
            centerTitle: true,
          ),
        ),
        SliverList(
            delegate: SliverChildListDelegate([
          const Text(
            'SLIVER',
            style: TextStyle(fontSize: 500, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
        ]))
      ]),
    );
  }
}
