import 'package:flutter/material.dart';

import 'clip_shadow_path.dart';
import 'custom_clippers.dart';

class ClipperPage extends StatefulWidget {
  final String title;
  const ClipperPage({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  State<ClipperPage> createState() => _ClipperPageState();
}

class _ClipperPageState extends State<ClipperPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      backgroundColor: Colors.red,
      body: Stack(
        children: [
          ClipShadowPath(
            shadow: const BoxShadow(
              color: Colors.black,
              offset: Offset(4, 4),
              blurRadius: 4,
              spreadRadius: 8,
            ),
            clipper: BigClipper(),
            child: Container(
              color: Colors.orangeAccent,
            ),
          ),
          ClipShadowPath(
            shadow: const BoxShadow(
              color: Colors.black,
              offset: Offset(4, 4),
              blurRadius: 4,
              spreadRadius: 8,
            ),
            clipper: SmallClipper(),
            child: Container(
              color: Colors.red,
            ),
          ),
        ],
      ),
    );
  }
}
