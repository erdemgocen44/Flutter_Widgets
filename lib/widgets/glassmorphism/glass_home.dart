import 'package:flutter/material.dart';
import 'package:widgets/core/lorem_picture.dart';

import 'glassmorphism.dart';

class GlassHome extends StatefulWidget {
  const GlassHome({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  State<GlassHome> createState() => _GlassHomeState();
}

class _GlassHomeState extends State<GlassHome> {
  bool _isBlur = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      backgroundColor: Colors.grey[300],
      body: Center(
        child: Stack(
          children: [
            Image.network(
              resim400,
              fit: BoxFit.cover,
              height: double.infinity,
            ),
            Center(
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    _isBlur = !_isBlur;
                  });
                },
                child: GlassMorphism(
                  blur: _isBlur ? 10 : 0,
                  opacity: 0.5,
                  child: SizedBox(
                    child: const Text(
                      "Click!!!",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Colors.red,
                      ),
                    ),
                    height: MediaQuery.of(context).size.height * 0.3,
                    width: MediaQuery.of(context).size.width * 0.8,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
