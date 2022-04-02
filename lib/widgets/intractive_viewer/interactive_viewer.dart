import 'package:flutter/material.dart';

class InteractiveViewerPage extends StatefulWidget {
  const InteractiveViewerPage({Key? key, required this.title})
      : super(key: key);
  final String title;
  @override
  State<InteractiveViewerPage> createState() => _InteractiveViewerPageState();
}

class _InteractiveViewerPageState extends State<InteractiveViewerPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: InteractiveViewer(
          //bu widget sayesinde eklediğimiz resimlere zoom yapabiliriz
          //İSTERSEK zoom için sınırlama koyabiliriz...
          maxScale: 5,
          child: Image.network("https://picsum.photos/500/300"),
        ),
      ),
    );
  }
}
