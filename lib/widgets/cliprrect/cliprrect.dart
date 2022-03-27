import 'package:flutter/material.dart';

class ClipRRectPage extends StatefulWidget {
  const ClipRRectPage({Key? key}) : super(key: key);

  @override
  State<ClipRRectPage> createState() => _ClipRRectPageState();
}

class _ClipRRectPageState extends State<ClipRRectPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image.network("https://picsum.photos/500/200"),
      ),
    );
  }
}
