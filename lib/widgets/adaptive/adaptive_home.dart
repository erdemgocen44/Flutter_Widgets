import 'package:flutter/material.dart';

class AdaptiveHome extends StatefulWidget {
  const AdaptiveHome({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  State<AdaptiveHome> createState() => _AdaptiveHomeState();
}

class _AdaptiveHomeState extends State<AdaptiveHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          children: [
            Slider.adaptive(
              onChanged: (double newValue) {},
              value: 1,
            ),
            SwitchListTile.adaptive(
              title: const Text("Switch List Tile"),
              value: true,
              onChanged: (bool newValue) {},
            ),
            Switch(
              value: true,
              onChanged: (bool newValue) {},
            ),
            Icon(Icons.adaptive.share),
            const CircularProgressIndicator.adaptive(),
          ],
        ),
      ),
    );
  }
}
