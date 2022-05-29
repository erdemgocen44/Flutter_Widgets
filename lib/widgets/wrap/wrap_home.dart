import 'package:flutter/material.dart';
import 'package:widgets/core/lorem_picture.dart';

class WrapHome extends StatefulWidget {
  const WrapHome({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  State<WrapHome> createState() => _WrapHomeState();
}

class _WrapHomeState extends State<WrapHome> {
  @override
  Widget build(BuildContext context) {
    Widget _image = Padding(
      padding: const EdgeInsets.all(8.0),
      child: Image.network(
        resim200,
        height: MediaQuery.of(context).size.height * 0.1,
        width: MediaQuery.of(context).size.width * 0.1,
        fit: BoxFit.cover,
      ),
    );
    return Scaffold();
  }
}
