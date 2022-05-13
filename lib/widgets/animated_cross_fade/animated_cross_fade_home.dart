import 'package:flutter/material.dart';

class AnimatedCrossFadeHome extends StatefulWidget {
  const AnimatedCrossFadeHome({Key? key}) : super(key: key);
  final String title;
  @override
  State<AnimatedCrossFadeHome> createState() => _AnimatedCrossFadeHomeState();
}

class _AnimatedCrossFadeHomeState extends State<AnimatedCrossFadeHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
    );
  }
}
