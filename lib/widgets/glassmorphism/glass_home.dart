import 'package:flutter/material.dart';

import 'glassmorphism.dart';

class GlassHome extends StatefulWidget {
  final String title;

  const GlassHome({Key? key, required this.title}) : super(key: key);

  @override
  State<GlassHome> createState() => _GlassHomeState();
}

class _GlassHomeState extends State<GlassHome> {
  bool _isBlur = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: Center(
        child: Stack(
          children: [
            Image.network(
              "https://picsum.photos/400/600",
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
                  blur: _isBlur ? 20 : 0,
                  opacity: 0.2,
                  child: SizedBox(
                    height: MediaQuery.of(context).size.height * 0.3,
                    width: MediaQuery.of(context).size.width * 0.4,
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
