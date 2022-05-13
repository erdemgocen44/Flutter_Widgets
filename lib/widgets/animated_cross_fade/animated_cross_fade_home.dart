import 'package:flutter/material.dart';
import 'package:widgets/core/lorem_picture.dart';

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
          firstChild: Image.network(resim400),
          secondChild: Image.network(resim500),
          crossFadeState: _saluration
              ? CrossFadeState.showFirst
              : CrossFadeState.showSecond,
          duration: const Duration(seconds: 1),
        ),
      ),
    );
  }
}
