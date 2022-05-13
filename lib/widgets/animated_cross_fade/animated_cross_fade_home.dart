import 'package:flutter/material.dart';

class AnimatedCrossFadeHome extends StatefulWidget {
  const AnimatedCrossFadeHome({Key? key, required this.title})
      : super(key: key);
  final String title;
  @override
  State<AnimatedCrossFadeHome> createState() => _AnimatedCrossFadeHomeState();
}

class _AnimatedCrossFadeHomeState extends State<AnimatedCrossFadeHome> {
  bool _saluration = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        actions: [
          TextButton(
            onPressed: () {
              setState(() {
                _saluration = !_saluration;
              });
            },
            child: const Text(
              'Switch',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ],
      ),
      body: Center(
        child: AnimatedCrossFade(
            firstChild: firstChild,
            secondChild: secondChild,
            crossFadeState: crossFadeState,
            duration: duration),
      ),
    );
  }
}
