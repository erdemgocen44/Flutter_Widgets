import 'package:flutter/material.dart';

class VisibilityHome extends StatefulWidget {
  const VisibilityHome({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  State<VisibilityHome> createState() => _VisibilityHomeState();
}

class _VisibilityHomeState extends State<VisibilityHome> {
  bool _isVisible = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: SizedBox(
        width: double.infinity,
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.network(
                "https://picsum.photos/200/300",
                height: MediaQuery.of(context).size.height * 0.2,
              ),
              Visibility(
                visible: _isVisible,
                child: Image.network(
                  "https://picsum.photos/300/400",
                  height: MediaQuery.of(context).size.height * 0.2,
                ),
              ),
              Image.network(
                "https://picsum.photos/200/300",
                height: MediaQuery.of(context).size.height * 0.2,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
