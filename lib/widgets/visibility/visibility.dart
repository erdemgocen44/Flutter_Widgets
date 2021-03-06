import 'package:flutter/material.dart';
import 'package:widgets/core/lorem_picture.dart';

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
        actions: [
          TextButton(
            onPressed: () => setState(() {
              _isVisible = !_isVisible;
            }),
            child: const Text(
              "Switch",
              style: TextStyle(color: Colors.white),
            ),
          ),
        ],
      ),
      body: SizedBox(
        width: double.infinity,
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.network(
                resim200,
                height: MediaQuery.of(context).size.height * 0.2,
              ),
              Visibility(
                visible: _isVisible,
                child: Image.network(
                  resim400,
                  height: MediaQuery.of(context).size.height * 0.2,
                ),
              ),
              Image.network(
                resim200,
                height: MediaQuery.of(context).size.height * 0.2,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
