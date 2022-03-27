import 'package:flutter/material.dart';

class InteractiveViewerPage extends StatefulWidget {
  const InteractiveViewerPage({Key? key}) : super(key: key);

  @override
  State<InteractiveViewerPage> createState() => _InteractiveViewerPageState();
}

class _InteractiveViewerPageState extends State<InteractiveViewerPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: InteractiveViewer(
          //bu widget sayesinde eklediğimiz resimlere zoom yapabiliriz
          maxScale: 5,
          child: Image.network("https://picsum.photos/500/300"),
        ),
      ),
    );
  }
}
