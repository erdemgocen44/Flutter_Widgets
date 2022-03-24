import 'package:flutter/material.dart';

import 'clip_shadow_path.dart';
import 'custom_clippers.dart';

class ClippersPage extends StatelessWidget {
  const ClippersPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
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
    );
  }
}
